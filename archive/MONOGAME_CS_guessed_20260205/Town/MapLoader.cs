using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Graphics;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Loads and creates test maps for Zeliard Modern
    /// TODO: Replace with proper .sar file loader or BMP converter
    /// </summary>
    public static class MapLoader
    {
        /// <summary>
        /// Create a simple test map for the first area
        /// </summary>
        public static TileMap CreateTestMap(Texture2D tileTexture)
        {
            // Create a small test map: 40x20 tiles (640x320 pixels at 16x16)
            int width = 40;
            int height = 20;
            int tileSize = 16;

            var map = new TileMap(width, height, tileSize, tileSize);

            // Define tile types
            // Tile 0: Empty/Air
            map.AddTileType(new Tile(0, null, false, false, "Air"));

            // Tile 1: Solid ground
            if (tileTexture != null)
            {
                var groundSprite = new Sprite(tileTexture, new Rectangle(0, 0, tileSize, tileSize));
                map.AddTileType(new Tile(1, groundSprite, true, false, "Ground"));

                // Tile 2: Platform (one-way collision)
                var platformSprite = new Sprite(tileTexture, new Rectangle(tileSize, 0, tileSize, tileSize));
                map.AddTileType(new Tile(2, platformSprite, false, true, "Platform"));

                // Tile 3: Wall
                var wallSprite = new Sprite(tileTexture, new Rectangle(tileSize * 2, 0, tileSize, tileSize));
                map.AddTileType(new Tile(3, wallSprite, true, false, "Wall"));
            }

            // Build simple test level layout
            // Ground floor at bottom
            for (int x = 0; x < width; x++)
            {
                map.SetTile(x, height - 1, 1); // Bottom ground
                map.SetTile(x, height - 2, 1); // Second layer
            }

            // Left and right walls
            for (int y = 0; y < height - 2; y++)
            {
                map.SetTile(0, y, 3);           // Left wall
                map.SetTile(width - 1, y, 3);  // Right wall
            }

            // Platforms at various heights
            for (int x = 5; x < 10; x++)
                map.SetTile(x, height - 6, 2);  // Platform 1

            for (int x = 15; x < 22; x++)
                map.SetTile(x, height - 10, 2); // Platform 2

            for (int x = 28; x < 35; x++)
                map.SetTile(x, height - 8, 2);  // Platform 3

            // Some solid blocks for obstacle course
            for (int y = height - 5; y < height - 2; y++)
                map.SetTile(12, y, 1);          // Pillar 1

            for (int y = height - 12; y < height - 9; y++)
                map.SetTile(25, y, 1);          // Pillar 2

            return map;
        }

        /// <summary>
        /// Create an empty map (no collision)
        /// </summary>
        public static TileMap CreateEmptyMap(int width, int height, int tileSize)
        {
            var map = new TileMap(width, height, tileSize, tileSize);
            map.AddTileType(new Tile(0, null, false, false, "Air"));
            return map;
        }

        /// <summary>
        /// Create tileset texture procedurally (for testing without assets)
        /// </summary>
        public static Texture2D CreateTestTileset(GraphicsDevice graphicsDevice, int tileSize)
        {
            int tilesPerRow = 4;
            int textureWidth = tileSize * tilesPerRow;
            int textureHeight = tileSize;

            var texture = new Texture2D(graphicsDevice, textureWidth, textureHeight);
            var data = new Color[textureWidth * textureHeight];

            // Tile 0: Empty (transparent)
            FillTile(data, 0, 0, tileSize, textureWidth, Color.Transparent);

            // Tile 1: Ground (brown)
            FillTile(data, 1, 0, tileSize, textureWidth, new Color(139, 90, 43));

            // Tile 2: Platform (gray)
            FillTile(data, 2, 0, tileSize, textureWidth, new Color(128, 128, 128));

            // Tile 3: Wall (dark gray with border)
            FillTile(data, 3, 0, tileSize, textureWidth, new Color(64, 64, 64));
            DrawTileBorder(data, 3, 0, tileSize, textureWidth, Color.Black);

            texture.SetData(data);
            return texture;
        }

        private static void FillTile(Color[] data, int tileX, int tileY, int tileSize, int textureWidth, Color color)
        {
            int startX = tileX * tileSize;
            int startY = tileY * tileSize;

            for (int y = 0; y < tileSize; y++)
            {
                for (int x = 0; x < tileSize; x++)
                {
                    int pixelX = startX + x;
                    int pixelY = startY + y;
                    data[pixelY * textureWidth + pixelX] = color;
                }
            }
        }

        private static void DrawTileBorder(Color[] data, int tileX, int tileY, int tileSize, int textureWidth, Color color)
        {
            int startX = tileX * tileSize;
            int startY = tileY * tileSize;

            for (int i = 0; i < tileSize; i++)
            {
                // Top and bottom
                data[startY * textureWidth + (startX + i)] = color;
                data[(startY + tileSize - 1) * textureWidth + (startX + i)] = color;

                // Left and right
                data[(startY + i) * textureWidth + startX] = color;
                data[(startY + i) * textureWidth + (startX + tileSize - 1)] = color;
            }
        }
    }
}
