using Microsoft.Xna.Framework;
using ZeliardAuthentic.Entities;

namespace ZeliardAuthentic.Physics
{
    /// <summary>
    /// Physics engine matching DOS assembly behavior.
    /// From zelres2_chunk_04 (physics engine main loop).
    /// </summary>
    public class PhysicsEngine
    {
        // From zelres2_chunk_04: Gravity = 9.8 pixels/sec² ÷ 18.2 FPS = 0.538
        private const float Gravity = 0.5f;
        private const float MaxFallSpeed = 10.0f;

        public void Update(Player player, CollisionMap collisionMap)
        {
            // Apply gravity
            if (!player.OnGround)
            {
                player.Velocity += new Vector2(0, Gravity);

                // Terminal velocity
                if (player.Velocity.Y > MaxFallSpeed)
                    player.Velocity = new Vector2(player.Velocity.X, MaxFallSpeed);
            }

            // Apply velocity
            player.Position += player.Velocity;

            // Detect & resolve collisions
            player.OnGround = false;
            ResolveCollisions(player, collisionMap);
        }

        private void ResolveCollisions(Player player, CollisionMap map)
        {
            Rectangle playerBounds = player.GetBounds();

            // Check tiles in 3×3 grid around player
            int tileSize = 16;
            int startTileX = playerBounds.Left / tileSize - 1;
            int endTileX = playerBounds.Right / tileSize + 1;
            int startTileY = playerBounds.Top / tileSize - 1;
            int endTileY = playerBounds.Bottom / tileSize + 1;

            for (int tileY = startTileY; tileY <= endTileY; tileY++)
            {
                for (int tileX = startTileX; tileX <= endTileX; tileX++)
                {
                    if (map.IsSolid(tileX, tileY))
                    {
                        Rectangle tileBounds = map.GetTileBounds(tileX, tileY);

                        if (playerBounds.Intersects(tileBounds))
                        {
                            ResolveIntersection(player, playerBounds, tileBounds);

                            // Recalculate bounds after position change
                            playerBounds = player.GetBounds();
                        }
                    }
                }
            }
        }

        private void ResolveIntersection(Player player, Rectangle playerBounds, Rectangle tileBounds)
        {
            // Calculate overlap on each axis
            int overlapX = System.Math.Min(playerBounds.Right - tileBounds.Left,
                                     tileBounds.Right - playerBounds.Left);
            int overlapY = System.Math.Min(playerBounds.Bottom - tileBounds.Top,
                                     tileBounds.Bottom - playerBounds.Top);

            // Resolve on axis with least overlap (most likely collision direction)
            if (overlapX < overlapY)
            {
                // Horizontal collision
                if (player.Velocity.X > 0) // Moving right
                    player.Position -= new Vector2(overlapX, 0);
                else // Moving left
                    player.Position += new Vector2(overlapX, 0);

                player.Velocity = new Vector2(0, player.Velocity.Y);
            }
            else
            {
                // Vertical collision
                if (player.Velocity.Y > 0) // Falling
                {
                    player.Position -= new Vector2(0, overlapY);
                    player.Velocity = new Vector2(player.Velocity.X, 0);
                    player.OnGround = true; // Landed on ground
                }
                else // Rising (hit ceiling)
                {
                    player.Position += new Vector2(0, overlapY);
                    player.Velocity = new Vector2(player.Velocity.X, 0);
                }
            }
        }
    }
}
