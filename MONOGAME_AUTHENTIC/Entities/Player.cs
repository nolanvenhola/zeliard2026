using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardAuthentic.Entities
{
    public class Player
    {
        // Position & Velocity (from zelres1_chunk_00, offsets 0x0080-0x009F)
        // DOS used integers - matching that exactly
        public int X { get; set; }                   // 0x0080 (word)
        public int Y { get; set; }                   // 0x0083 (byte)
        public int VelocityX { get; set; }           // 0x0085/86 (word)
        public int VelocityY { get; set; }           // 0x008C (byte, signed)

        // State
        public bool FacingRight { get; set; } = true;
        public bool OnGround { get; set; } = false;
        public bool CanJump => OnGround;

        // Debug rendering
        private Texture2D? _debugTexture;

        public Player()
        {
            X = 160;                                 // Spawn at center of 320×200 screen
            Y = 100;                                 // Spawn in air, will fall to floor
            VelocityX = 0;
            VelocityY = 0;
            OnGround = false;                        // Will be set by physics on first frame
        }

        public void LoadContent(GraphicsDevice device)
        {
            // Create 16×24 asymmetric sprite to show direction (temporary until sprites implemented)
            _debugTexture = new Texture2D(device, 16, 24);
            Color[] colors = new Color[16 * 24];

            // Fill with blue
            for (int i = 0; i < colors.Length; i++)
                colors[i] = Color.Blue;

            // Draw directional indicator (white arrow on right side)
            // This makes flipping visible
            for (int y = 10; y < 14; y++)
            {
                for (int x = 12; x < 16; x++)
                {
                    colors[y * 16 + x] = Color.White;
                }
            }

            _debugTexture.SetData(colors);
        }

        public void Update(GameTime gameTime)
        {
            // Apply velocity to position (integers only)
            X += VelocityX;
            Y += VelocityY;

            // Apply friction when grounded
            if (OnGround && VelocityX != 0)
            {
                VelocityX = (int)(VelocityX * 0.8f);
            }
        }

        public Rectangle GetBounds()
        {
            // Collision box centered on sprite (account for origin)
            return new Rectangle(X - 8, Y - 12, 16, 24);
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            if (_debugTexture == null) return;

            SpriteEffects flip = FacingRight ? SpriteEffects.None : SpriteEffects.FlipHorizontally;

            // Use sprite center as origin (8, 12) for 16×24 sprite
            // This makes the Position represent the sprite's center point
            Vector2 origin = new Vector2(8, 12);

            Vector2 position = new Vector2(X, Y);
            spriteBatch.Draw(_debugTexture, position, null, Color.White, 0f, origin, 1f, flip, 0f);
        }
    }
}
