using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardAuthentic.Entities
{
    public class Player
    {
        // Position & Velocity (from zelres1_chunk_00, offsets 0x0080-0x009F)
        public Vector2 Position { get; set; }        // 0x0080 (X), 0x0083 (Y)
        public Vector2 Velocity { get; set; }        // 0x0085/86 (VX), 0x008C (VY)

        // State
        public bool FacingRight { get; set; } = true;
        public bool OnGround { get; set; } = false;
        public bool CanJump => OnGround;

        // Debug rendering
        private Texture2D? _debugTexture;

        public Player()
        {
            Position = new Vector2(320, 100);        // Spawn in center of larger level
            Velocity = Vector2.Zero;
            OnGround = true;                         // Start on ground
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
            // Apply velocity to position
            Position += Velocity;

            // Apply friction when grounded
            if (OnGround)
            {
                Velocity = new Vector2(Velocity.X * 0.8f, Velocity.Y);
            }
        }

        public Rectangle GetBounds()
        {
            return new Rectangle((int)Position.X, (int)Position.Y, 16, 24);
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            if (_debugTexture == null) return;

            SpriteEffects flip = FacingRight ? SpriteEffects.None : SpriteEffects.FlipHorizontally;
            spriteBatch.Draw(_debugTexture, Position, null, Color.White, 0f, Vector2.Zero, 1f, flip, 0f);
        }
    }
}
