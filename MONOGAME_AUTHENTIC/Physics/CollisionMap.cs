using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardAuthentic.Physics
{
    /// <summary>
    /// Tile-based collision map.
    /// From zelres3_chunk_16 (tile collision data structure).
    /// </summary>
    public class CollisionMap
    {
        private byte[,] _tiles; // 0 = empty, 1 = solid
        private const int TileSize = 16;

        public int Width => _tiles.GetLength(1);
        public int Height => _tiles.GetLength(0);

        public CollisionMap(int width, int height)
        {
            _tiles = new byte[height, width];
        }

        public bool IsSolid(int tileX, int tileY)
        {
            // Out of bounds = solid (prevent falling off world)
            if (tileX < 0 || tileY < 0 || tileX >= Width || tileY >= Height)
                return true;

            return _tiles[tileY, tileX] == 1;
        }

        public Rectangle GetTileBounds(int tileX, int tileY)
        {
            return new Rectangle(tileX * TileSize, tileY * TileSize, TileSize, TileSize);
        }

        public void SetTile(int tileX, int tileY, byte value)
        {
            if (tileX >= 0 && tileY >= 0 && tileX < Width && tileY < Height)
                _tiles[tileY, tileX] = value;
        }

        /// <summary>
        /// Creates a test level at DOS resolution (320×200).
        /// </summary>
        public static CollisionMap CreateTestLevel()
        {
            // 20 tiles wide × 13 tiles tall = 320×208 at 16px tiles (slightly taller than 200)
            var map = new CollisionMap(20, 13);

            // Floor at bottom (rows 11-12)
            for (int x = 0; x < 20; x++)
            {
                map.SetTile(x, 11, 1);
                map.SetTile(x, 12, 1);
            }

            // Platform in middle (tiles 7-12, row 8)
            for (int x = 7; x < 13; x++)
            {
                map.SetTile(x, 8, 1);
            }

            // Walls on left and right sides
            for (int y = 0; y < 13; y++)
            {
                map.SetTile(0, y, 1);
                map.SetTile(19, y, 1);
            }

            return map;
        }

        /// <summary>
        /// Debug draw - renders collision tiles as colored rectangles.
        /// </summary>
        public void DebugDraw(SpriteBatch spriteBatch, Texture2D pixel)
        {
            for (int y = 0; y < Height; y++)
            {
                for (int x = 0; x < Width; x++)
                {
                    if (_tiles[y, x] == 1)
                    {
                        Rectangle tileBounds = GetTileBounds(x, y);
                        spriteBatch.Draw(pixel, tileBounds, Color.Gray * 0.5f); // Semi-transparent gray
                    }
                }
            }
        }
    }
}
