using System;
using System.IO;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Graphics;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Loads original Zeliard map data from .SAR archives
    /// Maps are RLE compressed tile data
    /// </summary>
    public static class ZeliardMapLoader
    {
        /// <summary>
        /// Decode RLE compressed map data
        /// Format: 0xFC [count] [value] = repeat value count times
        ///         Other bytes = literal tile values
        /// </summary>
        public static byte[] DecodeRLE(byte[] compressed)
        {
            var decoded = new System.Collections.Generic.List<byte>();
            int i = 0;

            while (i < compressed.Length)
            {
                byte b = compressed[i++];

                if (b == 0xFC && i + 1 < compressed.Length)
                {
                    // RLE marker: FC [count] [value]
                    byte count = compressed[i++];
                    byte value = compressed[i++];

                    for (int j = 0; j < count; j++)
                    {
                        decoded.Add(value);
                    }
                }
                else
                {
                    // Literal value
                    decoded.Add(b);
                }
            }

            return decoded.ToArray();
        }

        /// <summary>
        /// Load map from extracted .SAR file
        /// Map format: [Header:6 bytes][RLE Compressed Tile Data]
        /// </summary>
        public static TileMap LoadFromFile(string mapFilePath, Texture2D tilesetTexture, int tileSize)
        {
            byte[] fileData = File.ReadAllBytes(mapFilePath);

            // Decode RLE compressed tile data (skip first 6 bytes of header)
            byte[] tileData = new byte[fileData.Length - 6];
            Array.Copy(fileData, 6, tileData, 0, tileData.Length);
            byte[] decodedTiles = DecodeRLE(tileData);

            // Determine dimensions based on tile count
            // Common Zeliard map sizes based on analysis
            int width, height;
            int tileCount = decodedTiles.Length;

            if (tileCount == 2652) // 51x52 or 68x39
            {
                width = 68;
                height = 39;
            }
            else if (tileCount == 2739) // ~66x41
            {
                width = 63;
                height = 43;  // Closest match
            }
            else if (tileCount == 3913) // ~62x63
            {
                width = 71;
                height = 55;
            }
            else if (tileCount == 3110) // ~56x55
            {
                width = 62;
                height = 50;
            }
            else if (tileCount == 2831) // ~53x53
            {
                width = 59;
                height = 48;
            }
            else if (tileCount == 2483) // ~50x49
            {
                width = 53;
                height = 47;
            }
            else if (tileCount == 2785) // ~53x52
            {
                width = 55;
                height = 51;
            }
            else
            {
                // Estimate based on common aspect ratio (~ 5:4)
                width = (int)Math.Sqrt(tileCount * 1.25);
                height = tileCount / width;
            }

            // Create tilemap
            var map = new TileMap(width, height, tileSize, tileSize);

            // Define tile types (we'll need to map original tile IDs to our format)
            map.AddTileType(new Tile(0, null, false, false, "Air"));

            // Create solid ground tile
            if (tilesetTexture != null)
            {
                var groundSprite = new Sprite(tilesetTexture, new Rectangle(0, 0, tileSize, tileSize));
                map.AddTileType(new Tile(1, groundSprite, true, false, "Ground"));

                var platformSprite = new Sprite(tilesetTexture, new Rectangle(tileSize, 0, tileSize, tileSize));
                map.AddTileType(new Tile(2, platformSprite, false, true, "Platform"));

                var wallSprite = new Sprite(tilesetTexture, new Rectangle(tileSize * 2, 0, tileSize, tileSize));
                map.AddTileType(new Tile(3, wallSprite, true, false, "Wall"));
            }

            // Fill map with decoded tiles
            int tileIndex = 0;
            for (int y = 0; y < height && tileIndex < decodedTiles.Length; y++)
            {
                for (int x = 0; x < width && tileIndex < decodedTiles.Length; x++)
                {
                    byte originalTileId = decodedTiles[tileIndex++];

                    // Map original tile IDs to our tile system
                    // 0x00 = air/empty
                    // Other values = solid tiles (needs reverse engineering)
                    int mappedTileId = MapOriginalTileId(originalTileId);
                    map.SetTile(x, y, mappedTileId);
                }
            }

            return map;
        }

        /// <summary>
        /// Map original Zeliard tile IDs to our tile system
        /// Based on analysis of decoded map patterns
        /// </summary>
        private static int MapOriginalTileId(byte originalId)
        {
            // Tile 0 is always air/empty
            if (originalId == 0x00)
                return 0;

            // Based on typical DOS game conventions:
            // Low IDs (1-64) = solid ground tiles
            // Mid IDs (65-128) = platform/semi-solid tiles
            // High IDs (129-255) = decorative/background tiles

            if (originalId >= 1 && originalId <= 64)
            {
                // Solid ground - blocks all movement
                return 1;
            }
            else if (originalId >= 65 && originalId <= 128)
            {
                // Platform - one-way collision from above
                return 2;
            }
            else
            {
                // High IDs might be decorative or special solid tiles
                // For now, treat as solid
                return 1;
            }
        }

        /// <summary>
        /// Load map from SAR archive by file index
        /// </summary>
        public static TileMap LoadFromSar(string sarPath, int fileIndex, Texture2D tilesetTexture, int tileSize)
        {
            // Extract file from SAR
            byte[] fileData = ExtractFileFromSar(sarPath, fileIndex);

            // Save to temp file and load
            string tempFile = Path.GetTempFileName();
            File.WriteAllBytes(tempFile, fileData);

            try
            {
                return LoadFromFile(tempFile, tilesetTexture, tileSize);
            }
            finally
            {
                File.Delete(tempFile);
            }
        }

        /// <summary>
        /// Extract single file from SAR archive
        /// </summary>
        private static byte[] ExtractFileFromSar(string sarPath, int fileIndex)
        {
            using (var fs = new FileStream(sarPath, FileMode.Open, FileAccess.Read))
            using (var reader = new BinaryReader(fs))
            {
                int headerSize = reader.ReadInt32();
                int fileCount = (headerSize - 4) / 4;

                if (fileIndex < 0 || fileIndex >= fileCount)
                    throw new ArgumentOutOfRangeException($"File index {fileIndex} out of range (0-{fileCount - 1})");

                // Read offsets
                fs.Seek(4 + fileIndex * 4, SeekOrigin.Begin);
                int offset = reader.ReadInt32();
                int nextOffset = (fileIndex == fileCount - 1) ? (int)fs.Length : reader.ReadInt32();
                int size = nextOffset - offset;

                // Read file data
                fs.Seek(offset, SeekOrigin.Begin);
                return reader.ReadBytes(size);
            }
        }
    }
}
