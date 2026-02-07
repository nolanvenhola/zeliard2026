using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardModern.Graphics
{
    /// <summary>
    /// Represents a single tile type
    /// </summary>
    public class Tile
    {
        public int Id { get; set; }
        public Sprite Sprite { get; set; }
        public bool IsSolid { get; set; }
        public bool IsPlatform { get; set; }
        public string Name { get; set; }

        public Tile(int id, Sprite sprite, bool isSolid = false, bool isPlatform = false, string name = "")
        {
            Id = id;
            Sprite = sprite;
            IsSolid = isSolid;
            IsPlatform = isPlatform;
            Name = name;
        }
    }

    /// <summary>
    /// Manages a tile-based level map
    /// </summary>
    public class TileMap
    {
        public int Width { get; private set; }
        public int Height { get; private set; }
        public int TileWidth { get; private set; }
        public int TileHeight { get; private set; }
        public int[,] Tiles { get; private set; }
        public Dictionary<int, Tile> TileSet { get; private set; }

        public TileMap(int width, int height, int tileWidth, int tileHeight)
        {
            Width = width;
            Height = height;
            TileWidth = tileWidth;
            TileHeight = tileHeight;
            Tiles = new int[width, height];
            TileSet = new Dictionary<int, Tile>();
        }

        /// <summary>
        /// Add a tile type to the tileset
        /// </summary>
        public void AddTileType(Tile tile)
        {
            TileSet[tile.Id] = tile;
        }

        /// <summary>
        /// Set a tile at the specified grid position
        /// </summary>
        public void SetTile(int x, int y, int tileId)
        {
            if (x >= 0 && x < Width && y >= 0 && y < Height)
            {
                Tiles[x, y] = tileId;
            }
        }

        /// <summary>
        /// Get a tile at the specified grid position
        /// </summary>
        public int GetTile(int x, int y)
        {
            if (x >= 0 && x < Width && y >= 0 && y < Height)
                return Tiles[x, y];
            return -1;
        }

        /// <summary>
        /// Get tile at world position
        /// </summary>
        public int GetTileAtWorldPosition(float worldX, float worldY)
        {
            int tileX = (int)(worldX / TileWidth);
            int tileY = (int)(worldY / TileHeight);
            return GetTile(tileX, tileY);
        }

        /// <summary>
        /// Check if a tile is solid
        /// </summary>
        public bool IsTileSolid(int x, int y)
        {
            int tileId = GetTile(x, y);
            if (tileId >= 0 && TileSet.ContainsKey(tileId))
            {
                return TileSet[tileId].IsSolid;
            }
            return false;
        }

        /// <summary>
        /// Check if a tile is a platform (one-way collision)
        /// </summary>
        public bool IsTilePlatform(int x, int y)
        {
            int tileId = GetTile(x, y);
            if (tileId >= 0 && TileSet.ContainsKey(tileId))
            {
                return TileSet[tileId].IsPlatform;
            }
            return false;
        }

        /// <summary>
        /// Draw the tilemap with culling for visible area
        /// </summary>
        public void Draw(SpriteBatch spriteBatch, Camera2D camera)
        {
            Rectangle visibleArea = camera.GetVisibleArea();

            // Calculate visible tile range
            int startX = Math.Max(0, visibleArea.Left / TileWidth);
            int startY = Math.Max(0, visibleArea.Top / TileHeight);
            int endX = Math.Min(Width - 1, visibleArea.Right / TileWidth + 1);
            int endY = Math.Min(Height - 1, visibleArea.Bottom / TileHeight + 1);

            // Draw only visible tiles
            for (int y = startY; y <= endY; y++)
            {
                for (int x = startX; x <= endX; x++)
                {
                    int tileId = Tiles[x, y];
                    if (tileId >= 0 && TileSet.ContainsKey(tileId))
                    {
                        Tile tile = TileSet[tileId];
                        if (tile.Sprite != null)
                        {
                            Vector2 position = new Vector2(
                                x * TileWidth + TileWidth / 2f,
                                y * TileHeight + TileHeight / 2f
                            );

                            tile.Sprite.Draw(spriteBatch, position, Color.White);
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Load tilemap from 2D array
        /// </summary>
        public static TileMap LoadFromArray(int[,] tileData, int tileWidth, int tileHeight)
        {
            int width = tileData.GetLength(0);
            int height = tileData.GetLength(1);
            var map = new TileMap(width, height, tileWidth, tileHeight);

            for (int x = 0; x < width; x++)
            {
                for (int y = 0; y < height; y++)
                {
                    map.Tiles[x, y] = tileData[x, y];
                }
            }

            return map;
        }

        public int WidthInPixels => Width * TileWidth;
        public int HeightInPixels => Height * TileHeight;
    }
}
