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
        public void Update(Player player, CollisionMap collisionMap)
        {
            // Apply gravity (integer-based)
            if (!player.OnGround)
            {
                player.VelocityY++; // Gravity = 1 pixel/frame²

                // Terminal velocity (reduced to prevent tunneling through tiles)
                if (player.VelocityY > 6)
                    player.VelocityY = 6; // Max 6 px/frame
            }

            // Move and resolve collisions on each axis separately
            // This prevents tunneling through tiles

            // Horizontal movement
            player.X += player.VelocityX;
            ResolveHorizontalCollisions(player, collisionMap);

            // Vertical movement
            player.Y += player.VelocityY;
            ResolveVerticalCollisions(player, collisionMap);

            // Check if standing on ground
            player.OnGround = CheckGroundBelow(player, collisionMap);
        }

        private void ResolveHorizontalCollisions(Player player, CollisionMap map)
        {
            Rectangle playerBounds = player.GetBounds();

            int tileSize = 16;
            int startTileY = playerBounds.Top / tileSize;
            int endTileY = (playerBounds.Bottom - 1) / tileSize;

            for (int tileY = startTileY; tileY <= endTileY; tileY++)
            {
                int checkTileX = player.VelocityX > 0 ?
                    (playerBounds.Right - 1) / tileSize :  // Moving right - check right edge
                    playerBounds.Left / tileSize;          // Moving left - check left edge

                if (map.IsSolid(checkTileX, tileY))
                {
                    // Push player out of wall
                    if (player.VelocityX > 0)
                    {
                        // Hit right wall - snap to left of tile
                        player.X = checkTileX * tileSize - 8; // Account for origin
                    }
                    else
                    {
                        // Hit left wall - snap to right of tile
                        player.X = (checkTileX + 1) * tileSize + 8; // Account for origin
                    }

                    player.VelocityX = 0;
                    break;
                }
            }
        }

        private void ResolveVerticalCollisions(Player player, CollisionMap map)
        {
            Rectangle playerBounds = player.GetBounds();

            int tileSize = 16;
            int startTileX = playerBounds.Left / tileSize;
            int endTileX = (playerBounds.Right - 1) / tileSize;

            for (int tileX = startTileX; tileX <= endTileX; tileX++)
            {
                int checkTileY = player.VelocityY > 0 ?
                    (playerBounds.Bottom - 1) / tileSize : // Moving down - check bottom edge
                    playerBounds.Top / tileSize;           // Moving up - check top edge

                if (map.IsSolid(tileX, checkTileY))
                {
                    // Push player out of tile
                    if (player.VelocityY > 0)
                    {
                        // Hit floor - snap to top of tile
                        player.Y = checkTileY * tileSize - 12; // Account for origin
                        player.OnGround = true;
                    }
                    else
                    {
                        // Hit ceiling - snap to bottom of tile
                        player.Y = (checkTileY + 1) * tileSize + 12; // Account for origin
                    }

                    player.VelocityY = 0;
                    break;
                }
            }
        }

        private bool CheckGroundBelow(Player player, CollisionMap map)
        {
            // Check for solid tile directly below player's feet
            Rectangle playerBounds = player.GetBounds();

            // Check tiles 1 pixel below player
            int leftTileX = playerBounds.Left / 16;
            int rightTileX = (playerBounds.Right - 1) / 16;
            int belowTileY = (playerBounds.Bottom + 1) / 16;

            // Return true if standing on solid ground
            return map.IsSolid(leftTileX, belowTileY) || map.IsSolid(rightTileX, belowTileY);
        }
    }
}
