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
            // Apply gravity (integer-based)
            if (!player.OnGround)
            {
                player.VelocityY++; // Gravity = 1 pixel/frame² (simplified from 0.5)

                // Terminal velocity
                if (player.VelocityY > (int)MaxFallSpeed)
                    player.VelocityY = (int)MaxFallSpeed;
            }

            // Apply velocity to position
            player.X += player.VelocityX;
            player.Y += player.VelocityY;

            // Detect & resolve collisions
            player.OnGround = false;
            ResolveCollisions(player, collisionMap);

            // Check if standing on ground (even if no collision occurred this frame)
            CheckGroundBelow(player, collisionMap);
        }

        private void CheckGroundBelow(Player player, CollisionMap map)
        {
            // Check for solid tile directly below player's feet
            Rectangle playerBounds = player.GetBounds();
            int playerBottom = playerBounds.Bottom;

            // Check tiles below player
            int leftTileX = playerBounds.Left / 16;
            int rightTileX = (playerBounds.Right - 1) / 16;
            int belowTileY = (playerBottom + 1) / 16;

            // If standing on solid ground, set OnGround
            if (map.IsSolid(leftTileX, belowTileY) || map.IsSolid(rightTileX, belowTileY))
            {
                player.OnGround = true;
            }
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
                if (player.VelocityX > 0) // Moving right
                    player.X -= overlapX;
                else // Moving left
                    player.X += overlapX;

                player.VelocityX = 0;
            }
            else
            {
                // Vertical collision
                if (player.VelocityY > 0) // Falling
                {
                    player.Y -= overlapY;
                    player.VelocityY = 0;
                    player.OnGround = true; // Landed on ground
                }
                else // Rising (hit ceiling)
                {
                    player.Y += overlapY;
                    player.VelocityY = 0;
                }
            }
        }
    }
}
