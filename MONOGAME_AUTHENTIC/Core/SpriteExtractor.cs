using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.IO;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Extracts sprite data from original Zeliard .bin chunk files.
    /// Binary format (reverse-engineered from DOS assembly):
    ///   Bytes 0-1: uint16 chunk_size (little-endian)
    ///   Bytes 2-3: uint16 flags/count
    ///   Bytes 4+:  Offset table (uint16 per entry) pointing to sprite data within chunk
    ///   Each sprite: Header (X, Y, Width, Height) + pixel data
    /// </summary>
    public class SpriteExtractor
    {
        private readonly GraphicsDevice _graphicsDevice;

        public SpriteExtractor(GraphicsDevice graphicsDevice)
        {
            _graphicsDevice = graphicsDevice;
        }

        /// <summary>
        /// Load a raw binary chunk file and return its bytes.
        /// </summary>
        public byte[] LoadChunk(string path)
        {
            if (!File.Exists(path))
                throw new FileNotFoundException($"Chunk file not found: {path}");
            return File.ReadAllBytes(path);
        }

        /// <summary>
        /// Create a Texture2D from raw pixel data using the EGA palette.
        /// Each byte in data is a palette index (0-15).
        /// Index 0 is transparent.
        /// </summary>
        public Texture2D CreateTextureFromPaletteData(int width, int height, byte[] paletteIndices)
        {
            if (paletteIndices.Length < width * height)
                throw new ArgumentException($"Not enough pixel data: need {width * height}, got {paletteIndices.Length}");

            var texture = new Texture2D(_graphicsDevice, width, height);
            var pixels = new Color[width * height];

            for (int i = 0; i < width * height; i++)
            {
                byte idx = paletteIndices[i];
                pixels[i] = DOSPalette.GetColor(idx, transparentZero: true);
            }

            texture.SetData(pixels);
            return texture;
        }

        /// <summary>
        /// Attempt to extract EGA planar sprite data from a chunk.
        /// EGA uses 4 bit planes; each plane contributes 1 bit per pixel.
        /// Plane data is stored sequentially: all plane 0 bytes, then plane 1, etc.
        /// </summary>
        public Texture2D ExtractEGAPlanarSprite(byte[] data, int offset, int widthBytes, int height)
        {
            int pixelWidth = widthBytes * 8; // 8 pixels per byte in each plane
            int planeSize = widthBytes * height;

            if (offset + planeSize * 4 > data.Length)
                return null;

            var paletteIndices = new byte[pixelWidth * height];

            for (int y = 0; y < height; y++)
            {
                for (int xByte = 0; xByte < widthBytes; xByte++)
                {
                    int srcOffset = offset + y * widthBytes + xByte;
                    byte plane0 = data[srcOffset];
                    byte plane1 = data[srcOffset + planeSize];
                    byte plane2 = data[srcOffset + planeSize * 2];
                    byte plane3 = data[srcOffset + planeSize * 3];

                    for (int bit = 7; bit >= 0; bit--)
                    {
                        int px = xByte * 8 + (7 - bit);
                        if (px >= pixelWidth) break;

                        int colorIndex = ((plane0 >> bit) & 1)
                                       | (((plane1 >> bit) & 1) << 1)
                                       | (((plane2 >> bit) & 1) << 2)
                                       | (((plane3 >> bit) & 1) << 3);

                        paletteIndices[y * pixelWidth + px] = (byte)colorIndex;
                    }
                }
            }

            return CreateTextureFromPaletteData(pixelWidth, height, paletteIndices);
        }

        /// <summary>
        /// Extract a linear (1 byte = 1 palette index) sprite from chunk data.
        /// Used for VGA mode or already-decoded data.
        /// </summary>
        public Texture2D ExtractLinearSprite(byte[] data, int offset, int width, int height)
        {
            if (offset + width * height > data.Length)
                return null;

            var paletteIndices = new byte[width * height];
            Array.Copy(data, offset, paletteIndices, 0, width * height);

            return CreateTextureFromPaletteData(width, height, paletteIndices);
        }

        /// <summary>
        /// Extract a 4-bit packed sprite (2 pixels per byte, high nibble first).
        /// Common in EGA games for linear storage.
        /// </summary>
        public Texture2D Extract4BitPackedSprite(byte[] data, int offset, int width, int height)
        {
            int bytesNeeded = (width + 1) / 2 * height;
            if (offset + bytesNeeded > data.Length)
                return null;

            var paletteIndices = new byte[width * height];
            int srcIdx = offset;

            for (int y = 0; y < height; y++)
            {
                for (int x = 0; x < width; x += 2)
                {
                    byte packed = data[srcIdx++];
                    paletteIndices[y * width + x] = (byte)((packed >> 4) & 0x0F);
                    if (x + 1 < width)
                        paletteIndices[y * width + x + 1] = (byte)(packed & 0x0F);
                }
            }

            return CreateTextureFromPaletteData(width, height, paletteIndices);
        }

        /// <summary>
        /// Read a uint16 (little-endian) from a byte array.
        /// </summary>
        public static ushort ReadUInt16(byte[] data, int offset)
        {
            return (ushort)(data[offset] | (data[offset + 1] << 8));
        }

        /// <summary>
        /// Dump chunk header info for debugging.
        /// Returns a string with size, offset count, and first few offsets.
        /// </summary>
        public static string DumpChunkHeader(byte[] data, int maxOffsets = 16)
        {
            if (data.Length < 4)
                return $"Chunk too small ({data.Length} bytes)";

            ushort headerSize = ReadUInt16(data, 0);
            ushort field2 = ReadUInt16(data, 2);

            var result = new System.Text.StringBuilder();
            result.AppendLine($"Chunk: {data.Length} bytes");
            result.AppendLine($"  Header word 0: 0x{headerSize:X4} ({headerSize} dec)");
            result.AppendLine($"  Header word 1: 0x{field2:X4} ({field2} dec)");

            // Try to read offset table entries
            result.AppendLine($"  Possible offsets:");
            for (int i = 0; i < maxOffsets && (4 + i * 2 + 1) < data.Length; i++)
            {
                ushort val = ReadUInt16(data, 4 + i * 2);
                result.AppendLine($"    [{i}] 0x{val:X4} ({val} dec)");
            }

            return result.ToString();
        }

        /// <summary>
        /// Visualize raw chunk data as a texture for debugging.
        /// Each byte is rendered as a colored pixel using the EGA palette (index = byte & 0x0F).
        /// Useful for visually identifying sprite data boundaries.
        /// </summary>
        public Texture2D VisualizeChunkRaw(byte[] data, int width = 128)
        {
            int height = (data.Length + width - 1) / width;
            var texture = new Texture2D(_graphicsDevice, width, height);
            var pixels = new Color[width * height];

            for (int i = 0; i < pixels.Length; i++)
            {
                if (i < data.Length)
                {
                    byte val = data[i];
                    // Use value mod 64 as MCGA color index for visualization
                    pixels[i] = DOSPalette.Active[val % DOSPalette.Active.Length];
                }
                else
                {
                    pixels[i] = Color.Black;
                }
            }

            texture.SetData(pixels);
            return texture;
        }
    }
}
