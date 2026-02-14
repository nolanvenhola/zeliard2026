using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardAuthentic.Entities.Enemies
{
    /// <summary>
    /// Blue Slime enemy - stationary blocker.
    /// From GAME_DATA_REFERENCE.md line 652: "Stays in place, blocks path"
    /// - Almas: 1
    /// - Experience: 4
    /// - Damage: 1 point (contact)
    /// - Difficulty: Easy
    /// </summary>
    public class Slime : Enemy
    {
        private Texture2D? _debugTexture;

        public Slime(int x, int y, GraphicsDevice device)
        {
            // Position (from zelres2_chunk_06 offset +0x00, +0x02)
            // Slime is 16×16 with origin at center, so Y should be 8px above floor
            X = x;
            Y = y - 8; // Raise up so bottom sits on floor

            // Stats from GAME_DATA_REFERENCE.md line 652-659
            HP = 3;              // Blue Slime (estimate, not documented)
            Attack = 1;          // "1 point" contact damage
            Defense = 0;         // Easy enemy
            XPReward = 4;        // "Experience: 4"
            GoldReward = 1;      // "Almas: 1 (single coin)"

            // AI State (from zelres2_chunk_06 offset +0x07)
            CurrentState = AIState.Patrol; // Stationary = patrol state

            // Create debug texture
            _debugTexture = new Texture2D(device, 16, 16);
            Color[] colors = new Color[16 * 16];
            for (int i = 0; i < colors.Length; i++)
                colors[i] = Color.Cyan; // Blue slime = cyan
            _debugTexture.SetData(colors);
        }

        public override void Update(Player player, GameTime gameTime)
        {
            // Blue Slime behavior: "Stays in place, blocks path"
            // No AI update needed - completely stationary
            // Just exists as an obstacle
        }

        public override Rectangle GetBounds()
        {
            return new Rectangle(X - 8, Y - 8, 16, 16); // 16×16 slime
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            if (_debugTexture != null)
            {
                Vector2 position = new Vector2(X, Y);
                Vector2 origin = new Vector2(8, 8); // Center origin for 16×16
                spriteBatch.Draw(_debugTexture, position, null, Color.White, 0f, origin, 1f, SpriteEffects.None, 0f);
            }
        }
    }
}
