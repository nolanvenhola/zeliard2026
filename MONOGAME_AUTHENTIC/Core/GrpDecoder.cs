using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.IO;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Decoder for Zeliard .grp image format from SAR archive chunks.
    /// The format is being reverse-engineered from gmmcga driver analysis.
    ///
    /// Known so far:
    ///   - 4-byte header: uint16 data_size (LE), uint16 flags/zeros
    ///   - Bytes 4-5: possibly format indicator (0x0000 or 0x0007 etc.)
    ///   - Image data follows, possibly bit-plane encoded for the 27-color MCGA palette
    ///   - The gmmcga driver processes image data through bit-rotation routines
    ///   - NOT using 0xFC RLE (that's for map tiles)
    /// </summary>
    public static class GrpDecoder
    {
        /// <summary>
        /// Try to decode a .grp chunk as a raw byte-per-pixel image.
        /// Interprets each byte modulo 27 as a palette index.
        /// </summary>
        public static Texture2D DecodeRaw(GraphicsDevice gd, byte[] data, int width, int headerSkip = 4)
        {
            int dataLen = data.Length - headerSkip;
            int height = dataLen / width;
            if (height <= 0) return null;

            var texture = new Texture2D(gd, width, height);
            var pixels = new Color[width * height];

            for (int i = 0; i < pixels.Length && (i + headerSkip) < data.Length; i++)
            {
                byte val = data[i + headerSkip];
                int idx = val % DOSPalette.MCGA.Length;
                pixels[i] = DOSPalette.MCGA[idx];
            }

            texture.SetData(pixels);
            return texture;
        }

        /// <summary>
        /// Decode as 3-bit-plane image (R, G, B planes interleaved per scanline).
        /// Each plane has 1 bit per pixel. 3 planes = 8 possible colors.
        /// Scanline = width/8 bytes per plane × 3 planes.
        /// </summary>
        public static Texture2D Decode3Plane(GraphicsDevice gd, byte[] data, int width, int headerSkip = 6)
        {
            int bytesPerPlane = width / 8;
            int bytesPerLine = bytesPerPlane * 3;
            int dataLen = data.Length - headerSkip;
            int height = dataLen / bytesPerLine;
            if (height <= 0 || bytesPerPlane <= 0) return null;

            var texture = new Texture2D(gd, width, height);
            var pixels = new Color[width * height];

            for (int y = 0; y < height; y++)
            {
                int lineOffset = headerSkip + y * bytesPerLine;
                if (lineOffset + bytesPerLine > data.Length) break;

                for (int xByte = 0; xByte < bytesPerPlane; xByte++)
                {
                    byte planeR = data[lineOffset + xByte];
                    byte planeG = data[lineOffset + bytesPerPlane + xByte];
                    byte planeB = data[lineOffset + bytesPerPlane * 2 + xByte];

                    for (int bit = 7; bit >= 0; bit--)
                    {
                        int px = xByte * 8 + (7 - bit);
                        if (px >= width) break;

                        int r = (planeR >> bit) & 1;
                        int g = (planeG >> bit) & 1;
                        int b = (planeB >> bit) & 1;
                        int colorIdx = r * 4 + g * 2 + b; // 0-7

                        // Map 3-plane (8 colors) to MCGA palette
                        // Use cube corners: 0→0, 1→1, 2→3, 3→4, 4→9, 5→10, 6→12, 7→13
                        int mcgaIdx = (r * 2) * 9 + (g * 2) * 3 + (b * 2);
                        pixels[y * width + px] = DOSPalette.MCGA[Math.Min(mcgaIdx, 26)];
                    }
                }
            }

            texture.SetData(pixels);
            return texture;
        }

        /// <summary>
        /// Decode as interleaved nibble pairs (4 bits per pixel, 2 pixels per byte).
        /// High nibble = first pixel, low nibble = second pixel.
        /// </summary>
        public static Texture2D DecodeNibble(GraphicsDevice gd, byte[] data, int width, int headerSkip = 6)
        {
            int bytesPerLine = width / 2;
            int dataLen = data.Length - headerSkip;
            int height = dataLen / bytesPerLine;
            if (height <= 0) return null;

            var texture = new Texture2D(gd, width, height);
            var pixels = new Color[width * height];

            for (int i = 0; i < dataLen && i / bytesPerLine < height; i++)
            {
                byte val = data[i + headerSkip];
                int hi = (val >> 4) & 0x0F;
                int lo = val & 0x0F;

                int px = (i % bytesPerLine) * 2;
                int py = i / bytesPerLine;
                if (py < height && px < width)
                    pixels[py * width + px] = DOSPalette.MCGA[hi % 27];
                if (py < height && px + 1 < width)
                    pixels[py * width + px + 1] = DOSPalette.MCGA[lo % 27];
            }

            texture.SetData(pixels);
            return texture;
        }

        /// <summary>
        /// Decode treating the data as a custom RLE with a run marker.
        /// Tries different marker bytes to find which produces a valid screen-sized image.
        /// Returns decoded byte array.
        /// </summary>
        public static byte[] DecodeCustomRLE(byte[] data, int headerSkip, byte marker)
        {
            var decoded = new System.Collections.Generic.List<byte>();
            int i = headerSkip;

            while (i < data.Length)
            {
                byte b = data[i++];
                if (b == marker && i + 1 < data.Length)
                {
                    byte count = data[i++];
                    byte value = data[i++];
                    for (int j = 0; j < count; j++)
                        decoded.Add(value);
                }
                else
                {
                    decoded.Add(b);
                }
            }

            return decoded.ToArray();
        }

        /// <summary>
        /// Decode with high-bit RLE: if byte >= 0x80, next byte is repeated (count & 0x7F) times.
        /// Otherwise byte is a literal pixel.
        /// </summary>
        public static byte[] DecodeHighBitRLE(byte[] data, int headerSkip)
        {
            var decoded = new System.Collections.Generic.List<byte>();
            int i = headerSkip;

            while (i < data.Length)
            {
                byte b = data[i++];
                if ((b & 0x80) != 0)
                {
                    int count = b & 0x7F;
                    if (count == 0) count = 128;
                    if (i < data.Length)
                    {
                        byte value = data[i++];
                        for (int j = 0; j < count; j++)
                            decoded.Add(value);
                    }
                }
                else
                {
                    decoded.Add(b);
                }
            }

            return decoded.ToArray();
        }

        /// <summary>
        /// Render a decoded byte array as a texture using the MCGA palette.
        /// </summary>
        public static Texture2D RenderDecoded(GraphicsDevice gd, byte[] decoded, int width)
        {
            int height = decoded.Length / width;
            if (height <= 0) return null;

            var texture = new Texture2D(gd, width, height);
            var pixels = new Color[width * height];

            for (int i = 0; i < pixels.Length && i < decoded.Length; i++)
            {
                pixels[i] = DOSPalette.MCGA[decoded[i] % 27];
            }

            texture.SetData(pixels);
            return texture;
        }

        /// <summary>
        /// Decode a .grp image using the 4-plane format.
        /// Reverse-engineered from DOSBox memory dumps of CS:0x364F and CS:0x4469.
        ///
        /// Format: 4 color planes, 2 bits per pixel per plane = 8 bits per pixel.
        /// Pixel byte: [P3h P2h P1h P0h P3l P2l P1l P0l]
        ///
        /// Image data: 2 planes stored sequentially.
        ///   Plane 0: bytes [0 .. planeSize-1]
        ///   Plane 1: bytes [planeSize .. 2*planeSize-1]
        ///   Planes 2,3: zero (for 2-plane opening images)
        ///
        /// Each decoder call (CS:0x4469) reads 2 bits from each of 4 planes,
        /// producing 8 bits per pixel, 2 pixels per call.
        /// The main loop calls decoder 4 times → 8 pixels per iteration.
        ///
        /// Image dimensions encoded in the chunk header.
        /// Opening scene type 1: 48×34 (planeSize=1632, 3264 bytes total)
        /// Opening scene type 2: 32×18 (planeSize=576, 1152 bytes total)
        /// </summary>
        public static Texture2D DecodeGrp(GraphicsDevice gd, byte[] data, int headerSkip = 6)
        {
            if (_gameplayPalette == null) BuildPalettes();

            int dataLen = data.Length - headerSkip;
            if (dataLen < 4) return null;

            // Data = 2 planes stored sequentially. planeSize = half the data.
            // Each 16-bit source word from each plane → 8 decoded pixels.
            // Total pixels = (planeSize / 2) * 8 = planeSize * 4
            // The assembly decodes to a buffer, then blits a sub-rectangle to screen.
            // We decode ALL pixels and display them.

            int planeSize = dataLen / 2;
            int totalPixels = (planeSize / 2) * 8;

            // Display at width 48 (assembly uses 48-wide images)
            int imgWidth = 48;
            int imgHeight = totalPixels / imgWidth;
            if (imgHeight <= 0 || imgHeight > 400) { imgWidth = 32; imgHeight = totalPixels / imgWidth; }
            if (imgHeight <= 0 || imgHeight > 400) return null;
            var pixelIndices = new byte[totalPixels];

            // Plane 0 starts at headerSkip, plane 1 starts at headerSkip + planeSize
            int si = headerSkip;                    // Plane at [SI] → reg 0x44FD
            int plane1Offset = headerSkip + planeSize; // Plane at [SI+offset] → reg 0x44FB
            int outIdx = 0;

            for (int loop = 0; loop < planeSize / 2 && outIdx < totalPixels; loop++)
            {
                // Read 2 bytes (1 word) from each plane, byte-swapped (big-endian)
                if (si + 1 >= data.Length || plane1Offset + 1 >= data.Length) break;

                ushort pl0 = (ushort)((data[plane1Offset] << 8) | data[plane1Offset + 1]); // plane at offset → reg 0x44FB
                ushort pl1 = (ushort)((data[si] << 8) | data[si + 1]); // plane at SI → reg 0x44FD
                ushort pl2 = 0; // reg 0x44FF = 0
                ushort pl3 = 0; // reg 0x4501 = 0

                si += 2;
                plane1Offset += 2;

                // Decode 8 pixels (4 calls × 2 pixels each)
                for (int call = 0; call < 4 && outIdx < totalPixels; call++)
                {
                    // Each call: cx=2 iterations, each producing 8 bits → 2 pixels total
                    int ax = 0;
                    for (int iter = 0; iter < 2; iter++)
                    {
                        // ROL pl3, adc
                        int bit = (pl3 >> 15) & 1; pl3 = (ushort)((pl3 << 1) | bit); ax = (ax << 1) | bit;
                        bit = (pl2 >> 15) & 1; pl2 = (ushort)((pl2 << 1) | bit); ax = (ax << 1) | bit;
                        bit = (pl1 >> 15) & 1; pl1 = (ushort)((pl1 << 1) | bit); ax = (ax << 1) | bit;
                        bit = (pl0 >> 15) & 1; pl0 = (ushort)((pl0 << 1) | bit); ax = (ax << 1) | bit;
                        // Second round
                        bit = (pl3 >> 15) & 1; pl3 = (ushort)((pl3 << 1) | bit); ax = (ax << 1) | bit;
                        bit = (pl2 >> 15) & 1; pl2 = (ushort)((pl2 << 1) | bit); ax = (ax << 1) | bit;
                        bit = (pl1 >> 15) & 1; pl1 = (ushort)((pl1 << 1) | bit); ax = (ax << 1) | bit;
                        bit = (pl0 >> 15) & 1; pl0 = (ushort)((pl0 << 1) | bit); ax = (ax << 1) | bit;
                    }
                    // xchg ah,al → swap bytes: pixel0 in high byte, pixel1 in low byte
                    byte pixel0 = (byte)(ax & 0xFF);        // AL before swap = AH after
                    byte pixel1 = (byte)((ax >> 8) & 0xFF); // AH before swap = AL after
                    if (outIdx < totalPixels) pixelIndices[outIdx++] = pixel0;
                    if (outIdx < totalPixels) pixelIndices[outIdx++] = pixel1;
                }
            }

            // Render using the appropriate palette
            bool isOpening = false;
            for (int i = 0; i < outIdx; i++)
                if (pixelIndices[i] >= 0x40) { isOpening = true; break; }

            Color[] palette = isOpening ? _openingPalette : _gameplayPalette;

            var texture = new Texture2D(gd, imgWidth, imgHeight);
            var pixels = new Color[imgWidth * imgHeight];
            for (int i = 0; i < Math.Min(outIdx, pixels.Length); i++)
                pixels[i] = palette[pixelIndices[i]];

            texture.SetData(pixels);
            return texture;
        }

        /// <summary>
        /// Decode as 1-bit-per-pixel monochrome (each byte = 8 pixels).
        /// White for 1-bits, black for 0-bits.
        /// </summary>
        public static Texture2D Decode1Bit(GraphicsDevice gd, byte[] data, int width, int headerSkip = 6)
        {
            int bytesPerLine = width / 8;
            if (bytesPerLine <= 0) return null;
            int dataLen = data.Length - headerSkip;
            int height = dataLen / bytesPerLine;
            if (height <= 0) return null;

            var texture = new Texture2D(gd, width, Math.Min(height, 400));
            var pixels = new Color[width * Math.Min(height, 400)];

            for (int y = 0; y < Math.Min(height, 400); y++)
            {
                for (int xByte = 0; xByte < bytesPerLine; xByte++)
                {
                    int srcIdx = headerSkip + y * bytesPerLine + xByte;
                    if (srcIdx >= data.Length) break;
                    byte b = data[srcIdx];

                    for (int bit = 7; bit >= 0; bit--)
                    {
                        int px = xByte * 8 + (7 - bit);
                        if (px < width && y * width + px < pixels.Length)
                        {
                            pixels[y * width + px] = ((b >> bit) & 1) != 0
                                ? DOSPalette.MCGA[26]  // White
                                : DOSPalette.MCGA[0];   // Black
                        }
                    }
                }
            }

            texture.SetData(pixels);
            return texture;
        }

        /// <summary>
        /// Render a raw VGA framebuffer dump (320x200, 1 byte per pixel = palette index).
        /// Auto-detects which palette (opening vs gameplay) based on the indices present.
        /// Opening scene uses indices >= 0x40 (like 0x80, 0x90, 0x99).
        /// Gameplay uses indices 0x00-0x3F only.
        /// </summary>
        public static Texture2D RenderVGAFramebuffer(GraphicsDevice gd, byte[] data)
        {
            if (data.Length < 320 * 200) return null;

            // Auto-detect: if any index >= 0x40, it's the opening scene palette
            bool isOpening = false;
            for (int i = 0; i < 320 * 200; i++)
            {
                if (data[i] >= 0x40) { isOpening = true; break; }
            }

            Color[] palette = isOpening ? _openingPalette : _gameplayPalette;
            if (palette == null) BuildPalettes();
            palette = isOpening ? _openingPalette : _gameplayPalette;

            var texture = new Texture2D(gd, 320, 200);
            var pixels = new Color[320 * 200];

            for (int i = 0; i < 320 * 200; i++)
            {
                pixels[i] = palette[data[i]];
            }

            texture.SetData(pixels);
            return texture;
        }

        /// <summary>
        /// Map a VGA palette index to an MCGA color.
        /// The game programs its 27-color (3x3x3 RGB cube) palette
        /// at specific VGA DAC positions. This mapping was derived from
        /// correlating framebuffer dumps with DOSBox screenshots.
        ///
        /// Pattern observed in scene data:
        ///   Scene1 indices: 00,01,08,09,10,11,18,19,80,81,88,89,90,91,98,99,66,77,FF
        ///   Scene2 indices: 00-07,10-17,20-27,30-37,40,50-57,60-67,70-77
        ///
        /// Hypothesis: indices use octal-like encoding where each digit represents
        /// one color channel level (0,1,2). The exact mapping needs verification
        /// against DOSBox palette registers.
        /// </summary>
        private static Color VGAIndexToColor(byte index)
        {
            if (_gameplayPalette == null) BuildPalettes();
            return _gameplayPalette[index];
        }

        private static Color[] _gameplayPalette;
        private static Color[] _openingPalette;

        private static void BuildPalettes()
        {
            // === GAMEPLAY PALETTE (verified from simultaneous Scene2.BIN + Scene2.png) ===
            _gameplayPalette = new Color[256];
            for (int i = 0; i < 256; i++) _gameplayPalette[i] = Color.Black;

            _gameplayPalette[0x00] = new Color(0x00, 0x00, 0x00);
            _gameplayPalette[0x01] = new Color(0x7D, 0x7D, 0x7D);
            _gameplayPalette[0x02] = new Color(0x7D, 0x00, 0x00);
            _gameplayPalette[0x03] = new Color(0x00, 0x7D, 0x00);
            _gameplayPalette[0x04] = new Color(0x00, 0x7D, 0x7D);
            _gameplayPalette[0x05] = new Color(0x00, 0x00, 0x7D);
            _gameplayPalette[0x06] = new Color(0x7D, 0x7D, 0x00);
            _gameplayPalette[0x07] = new Color(0x7D, 0x00, 0x7D);
            _gameplayPalette[0x08] = new Color(0x7D, 0x7D, 0x7D);
            _gameplayPalette[0x09] = new Color(0xFB, 0xFB, 0xFB);
            _gameplayPalette[0x0A] = new Color(0xFB, 0x00, 0x00);
            _gameplayPalette[0x0B] = new Color(0x7D, 0xFB, 0x7D);
            _gameplayPalette[0x0C] = new Color(0x7D, 0xFB, 0xFB);
            _gameplayPalette[0x0D] = new Color(0x7D, 0x7D, 0xFB);
            _gameplayPalette[0x0E] = new Color(0xFB, 0xFB, 0x7D);
            _gameplayPalette[0x0F] = new Color(0xFB, 0x7D, 0xFB);
            _gameplayPalette[0x10] = new Color(0x7D, 0x00, 0x00);
            _gameplayPalette[0x11] = new Color(0xFB, 0x7D, 0x7D);
            _gameplayPalette[0x12] = new Color(0x7D, 0x00, 0x00);
            _gameplayPalette[0x13] = new Color(0x7D, 0x7D, 0x00);
            _gameplayPalette[0x14] = new Color(0x7D, 0x7D, 0x7D);
            _gameplayPalette[0x15] = new Color(0x7D, 0x00, 0x7D);
            _gameplayPalette[0x16] = new Color(0xFB, 0x7D, 0x00);
            _gameplayPalette[0x17] = new Color(0xFB, 0x00, 0x7D);
            _gameplayPalette[0x18] = new Color(0x00, 0x7D, 0x00);
            _gameplayPalette[0x19] = new Color(0x7D, 0xFB, 0x7D);
            _gameplayPalette[0x1A] = new Color(0x00, 0x7D, 0x00);
            _gameplayPalette[0x1B] = new Color(0x00, 0xFB, 0x00);
            _gameplayPalette[0x1C] = new Color(0x00, 0xFB, 0x7D);
            _gameplayPalette[0x1D] = new Color(0x00, 0x7D, 0x7D);
            _gameplayPalette[0x1E] = new Color(0x7D, 0xFB, 0x00);
            _gameplayPalette[0x1F] = new Color(0x7D, 0x7D, 0x7D);
            _gameplayPalette[0x20] = new Color(0x00, 0x7D, 0x7D);
            _gameplayPalette[0x21] = new Color(0x7D, 0xFB, 0xFB);
            _gameplayPalette[0x22] = new Color(0x00, 0x7D, 0x7D);
            _gameplayPalette[0x23] = new Color(0x00, 0xFB, 0x7D);
            _gameplayPalette[0x24] = new Color(0x00, 0xFB, 0xFB);
            _gameplayPalette[0x25] = new Color(0x00, 0x7D, 0xFB);
            _gameplayPalette[0x26] = new Color(0x7D, 0xFB, 0x7D);
            _gameplayPalette[0x27] = new Color(0x7D, 0x7D, 0x7D);
            _gameplayPalette[0x28] = new Color(0x00, 0x00, 0x7D);
            _gameplayPalette[0x29] = new Color(0x7D, 0x7D, 0xFB);
            _gameplayPalette[0x2A] = new Color(0x00, 0x00, 0x7D);
            _gameplayPalette[0x2B] = new Color(0x00, 0x7D, 0x7D);
            _gameplayPalette[0x2C] = new Color(0x00, 0x7D, 0xFB);
            _gameplayPalette[0x2D] = new Color(0x00, 0x00, 0xFB);
            _gameplayPalette[0x2E] = new Color(0x7D, 0x7D, 0x7D);
            _gameplayPalette[0x2F] = new Color(0x7D, 0x00, 0xFB);
            _gameplayPalette[0x30] = new Color(0x7D, 0x7D, 0x00);
            _gameplayPalette[0x31] = new Color(0xFB, 0xFB, 0x7D);
            _gameplayPalette[0x32] = new Color(0xFB, 0x7D, 0x00);
            _gameplayPalette[0x33] = new Color(0x7D, 0xFB, 0x00);
            _gameplayPalette[0x34] = new Color(0x7D, 0xFB, 0x7D);
            _gameplayPalette[0x35] = new Color(0x7D, 0x7D, 0x7D);
            _gameplayPalette[0x36] = new Color(0xFB, 0xFB, 0x00);
            _gameplayPalette[0x37] = new Color(0xFB, 0x7D, 0x00);
            _gameplayPalette[0x38] = new Color(0x7D, 0x00, 0x7D);
            _gameplayPalette[0x39] = new Color(0xFB, 0x7D, 0xFB);
            _gameplayPalette[0x3A] = new Color(0x7D, 0x00, 0x7D);
            _gameplayPalette[0x3B] = new Color(0x7D, 0x7D, 0x7D);
            _gameplayPalette[0x3C] = new Color(0x7D, 0xFB, 0xFB);
            _gameplayPalette[0x3D] = new Color(0x7D, 0x00, 0xFB);
            _gameplayPalette[0x3E] = new Color(0xFB, 0x7D, 0x7D);
            _gameplayPalette[0x3F] = new Color(0xFB, 0x00, 0xFB);

            // === OPENING SCENE PALETTE (verified from SCENE1.BIN + Scene1Game.png) ===
            _openingPalette = new Color[256];
            for (int i = 0; i < 256; i++) _openingPalette[i] = Color.Black;

            _openingPalette[0x00] = new Color(0x00, 0x00, 0x00);
            _openingPalette[0x01] = new Color(0x00, 0x00, 0x7D);
            _openingPalette[0x08] = new Color(0x1C, 0x1C, 0x1C);
            _openingPalette[0x09] = new Color(0x3C, 0x3C, 0x3C);
            _openingPalette[0x10] = new Color(0x00, 0x00, 0x7D);
            _openingPalette[0x11] = new Color(0x00, 0x00, 0xFB);
            _openingPalette[0x18] = new Color(0x1C, 0x1C, 0x9A);
            _openingPalette[0x19] = new Color(0x3C, 0x3C, 0xBA);
            _openingPalette[0x66] = new Color(0x00, 0x00, 0x00);
            _openingPalette[0x77] = new Color(0x00, 0x00, 0x00);
            _openingPalette[0x80] = new Color(0x1C, 0x1C, 0x1C);
            _openingPalette[0x81] = new Color(0x1C, 0x1C, 0x9A);
            _openingPalette[0x88] = new Color(0x38, 0x38, 0x38);
            _openingPalette[0x89] = new Color(0x59, 0x59, 0x59);
            _openingPalette[0x90] = new Color(0x3C, 0x3C, 0x3C);
            _openingPalette[0x91] = new Color(0x3C, 0x3C, 0xBA);
            _openingPalette[0x98] = new Color(0x59, 0x59, 0x59);
            _openingPalette[0x99] = new Color(0x79, 0x79, 0x79);
            _openingPalette[0xFF] = new Color(0x00, 0x00, 0x00);
        }

        /// <summary>
        /// Print diagnostic info about a chunk's data patterns.
        /// </summary>
        public static string AnalyzeChunk(byte[] data)
        {
            var sb = new System.Text.StringBuilder();
            sb.AppendLine($"Size: {data.Length} bytes");

            if (data.Length < 6) return sb.ToString();

            ushort hdrSize = (ushort)(data[0] | (data[1] << 8));
            ushort hdrW2 = (ushort)(data[2] | (data[3] << 8));
            ushort hdrW3 = (ushort)(data[4] | (data[5] << 8));
            sb.AppendLine($"Header: size={hdrSize} w2={hdrW2} w3={hdrW3}");

            // Count byte value frequency
            var freq = new int[256];
            for (int i = 6; i < data.Length; i++) freq[data[i]]++;

            // Find most common bytes
            sb.Append("Top 5 bytes: ");
            for (int round = 0; round < 5; round++)
            {
                int maxIdx = 0, maxVal = 0;
                for (int j = 0; j < 256; j++)
                {
                    if (freq[j] > maxVal) { maxVal = freq[j]; maxIdx = j; }
                }
                sb.Append($"0x{maxIdx:X2}({maxVal}) ");
                freq[maxIdx] = 0;
            }
            sb.AppendLine();

            // Try high-bit RLE decode
            var hbDecoded = DecodeHighBitRLE(data, 6);
            sb.AppendLine($"HighBit RLE decoded: {hbDecoded.Length} bytes");
            foreach (int w in new[] { 320, 256, 240, 200, 160, 128 })
            {
                if (hbDecoded.Length % w == 0)
                    sb.AppendLine($"  → Could be {w}x{hbDecoded.Length / w}");
            }

            return sb.ToString();
        }
    }
}
