using Microsoft.Xna.Framework;

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
        /// Creates a test level for Phase 2 testing.
        /// </summary>
        public static CollisionMap CreateTestLevel()
        {
            // 40 tiles wide × 25 tiles tall = 640×400 at 16px tiles
            var map = new CollisionMap(40, 25);

            // Floor at bottom (2 rows thick)
            for (int x = 0; x < 40; x++)
            {
                map.SetTile(x, 23, 1);
                map.SetTile(x, 24, 1);
            }

            // Platform in middle-left (5 tiles wide)
            for (int x = 5; x < 10; x++)
            {
                map.SetTile(x, 18, 1);
            }

            // Platform in middle-right (5 tiles wide)
            for (int x = 25; x < 30; x++)
            {
                map.SetTile(x, 16, 1);
            }

            // Walls on left and right sides
            for (int y = 0; y < 25; y++)
            {
                map.SetTile(0, y, 1);
                map.SetTile(39, y, 1);
            }

            // Ceiling at top
            for (int x = 0; x < 40; x++)
            {
                map.SetTile(x, 0, 1);
            }

            return map;
        }
    }
}
