using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ZeliardAuthentic.Entities.Enemies
{
    /// <summary>
    /// Bat enemy - flying swooping attack.
    /// From GAME_DATA_REFERENCE.md line 639: "Flies from ceiling, attacks with claws"
    /// - Almas: 1-10
    /// - Experience: 3
    /// - Damage: 1 point
    /// - Difficulty: Easy/Medium
    /// From zelres2_chunk_06 - Flying AI patterns
    /// </summary>
    public class Bat : Enemy
    {
        private Texture2D? _debugTexture;
        private float _waveTimer = 0f;

        public Bat(int x, int y, GraphicsDevice device)
        {
            // Position
            X = x;
            Y = y;

            // Stats from GAME_DATA_REFERENCE.md line 639-646
            HP = 2;              // Bat HP (estimate)
            Attack = 1;          // "1 point" damage
            Defense = 0;         // Easy enemy
            XPReward = 3;        // "Experience: 3"
            GoldReward = 1;      // "Almas: 1 or 10" (using 1 for basic)

            // AI State - starts in air
            CurrentState = AIState.Patrol;

            // Create debug texture (make it more visible)
            _debugTexture = new Texture2D(device, 16, 16); // Larger for visibility
            Color[] colors = new Color[16 * 16];
            for (int i = 0; i < colors.Length; i++)
                colors[i] = Color.Magenta; // Bright magenta for visibility
            _debugTexture.SetData(colors);
        }

        public override void Update(Player player, GameTime gameTime)
        {
            // Bat behavior: "Flies from ceiling, attacks with claws, returns to ceiling"
            // From zelres2_chunk_06 - Flying AI with sine wave pattern

            _waveTimer += (float)gameTime.ElapsedGameTime.TotalSeconds;

            float distanceToPlayer = Vector2.Distance(new Vector2(X, Y), new Vector2(player.X, player.Y));

            switch (CurrentState)
            {
                case AIState.Patrol:
                    // Fly in sine wave pattern
                    VelocityX = -2; // Move left
                    VelocityY = (int)(Math.Sin(_waveTimer * 3.0f) * 2.0f); // Sine wave

                    // Detect player (aggro range from assembly: ~100 pixels)
                    if (distanceToPlayer < 100f)
                    {
                        CurrentState = AIState.Aggro;
                    }
                    break;

                case AIState.Aggro:
                    // Dive toward player (faster than player to catch up)
                    int deltaX = player.X - X;
                    int deltaY = player.Y - Y;

                    // Divide by 4 (not 8) for faster pursuit - bat speed = 3px/frame max
                    VelocityX = Math.Clamp(deltaX / 4, -3, 3);
                    VelocityY = Math.Clamp(deltaY / 4, -3, 3);

                    // Return to patrol if player too far
                    if (distanceToPlayer > 150f)
                    {
                        CurrentState = AIState.Patrol;
                    }
                    break;
            }

            // Apply velocity
            X += VelocityX;
            Y += VelocityY;

            // Update direction
            FacingRight = VelocityX > 0;

            // Debug output (extended for testing)
            if (gameTime.TotalGameTime.TotalSeconds < 5.0 && gameTime.TotalGameTime.TotalSeconds % 0.2 < 0.055)
            {
                System.Console.WriteLine($"[Bat] Pos:({X},{Y}) Vel:({VelocityX},{VelocityY}) State:{CurrentState} PlayerDist:{distanceToPlayer:F0}px");
            }
        }

        public override Rectangle GetBounds()
        {
            return new Rectangle(X - 8, Y - 8, 16, 16); // 16×16 for visibility
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            if (_debugTexture != null)
            {
                Vector2 position = new Vector2(X, Y);
                Vector2 origin = new Vector2(8, 8); // Center for 16×16
                SpriteEffects flip = FacingRight ? SpriteEffects.None : SpriteEffects.FlipHorizontally;
                spriteBatch.Draw(_debugTexture, position, null, Color.White, 0f, origin, 1f, flip, 0f);
            }
        }
    }
}
