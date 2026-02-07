using System;
using Microsoft.Xna.Framework;
using ZeliardModern.Graphics;

namespace ZeliardModern.Physics
{
    /// <summary>
    /// Handles collision detection and resolution
    /// </summary>
    public static class CollisionSystem
    {
        /// <summary>
        /// Check and resolve collisions between a physics body and a tilemap
        /// </summary>
        public static void ResolveCollisions(PhysicsBody body, TileMap tileMap)
        {
            body.IsGrounded = false;
            body.IsOnPlatform = false;

            Rectangle bounds = body.Bounds;

            // Get the range of tiles the body overlaps
            int leftTile = Math.Max(0, bounds.Left / tileMap.TileWidth);
            int rightTile = Math.Min(tileMap.Width - 1, bounds.Right / tileMap.TileWidth);
            int topTile = Math.Max(0, bounds.Top / tileMap.TileHeight);
            int bottomTile = Math.Min(tileMap.Height - 1, bounds.Bottom / tileMap.TileHeight);

            // Check for collisions with solid tiles
            for (int x = leftTile; x <= rightTile; x++)
            {
                for (int y = topTile; y <= bottomTile; y++)
                {
                    if (tileMap.IsTileSolid(x, y))
                    {
                        Rectangle tileBounds = new Rectangle(
                            x * tileMap.TileWidth,
                            y * tileMap.TileHeight,
                            tileMap.TileWidth,
                            tileMap.TileHeight
                        );

                        if (bounds.Intersects(tileBounds))
                        {
                            ResolveTileCollision(body, tileBounds);
                        }
                    }
                    else if (tileMap.IsTilePlatform(x, y))
                    {
                        // One-way platform - only collide from above
                        Rectangle platformBounds = new Rectangle(
                            x * tileMap.TileWidth,
                            y * tileMap.TileHeight,
                            tileMap.TileWidth,
                            tileMap.TileHeight
                        );

                        // Check if player is falling and feet are above platform top
                        if (body.Velocity.Y >= 0 &&
                            bounds.Bottom <= platformBounds.Top + 8 && // Small threshold
                            bounds.Bottom >= platformBounds.Top - 8 &&
                            bounds.Right > platformBounds.Left &&
                            bounds.Left < platformBounds.Right)
                        {
                            var pos = body.Position;
                            pos.Y = platformBounds.Top - body.Bounds.Height / 2;
                            body.Position = pos;

                            var vel = body.Velocity;
                            vel.Y = 0;
                            body.Velocity = vel;

                            body.IsOnPlatform = true;
                            body.IsGrounded = true;

                            // Update bounds
                            var bounds2 = body.Bounds;
                            bounds2.Y = (int)(body.Position.Y - body.Bounds.Height / 2);
                            body.Bounds = bounds2;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Resolve collision between a body and a solid tile
        /// </summary>
        private static void ResolveTileCollision(PhysicsBody body, Rectangle tileBounds)
        {
            Rectangle bounds = body.Bounds;

            // Calculate overlap
            int overlapLeft = bounds.Right - tileBounds.Left;
            int overlapRight = tileBounds.Right - bounds.Left;
            int overlapTop = bounds.Bottom - tileBounds.Top;
            int overlapBottom = tileBounds.Bottom - bounds.Top;

            // Find the smallest overlap
            int minOverlap = Math.Min(Math.Min(overlapLeft, overlapRight), Math.Min(overlapTop, overlapBottom));

            // Resolve collision based on smallest overlap
            if (minOverlap == overlapTop && body.Velocity.Y >= 0)
            {
                // Collision from top (landing on tile)
                var pos = body.Position;
                pos.Y = tileBounds.Top - body.Bounds.Height / 2;
                body.Position = pos;

                var vel = body.Velocity;
                vel.Y = 0;
                body.Velocity = vel;

                body.IsGrounded = true;
            }
            else if (minOverlap == overlapBottom && body.Velocity.Y < 0)
            {
                // Collision from bottom (hitting head)
                var pos = body.Position;
                pos.Y = tileBounds.Bottom + body.Bounds.Height / 2;
                body.Position = pos;

                var vel = body.Velocity;
                vel.Y = 0;
                body.Velocity = vel;
            }
            else if (minOverlap == overlapLeft)
            {
                // Collision from left
                var pos = body.Position;
                pos.X = tileBounds.Left - body.Bounds.Width / 2;
                body.Position = pos;

                var vel = body.Velocity;
                vel.X = 0;
                body.Velocity = vel;
            }
            else if (minOverlap == overlapRight)
            {
                // Collision from right
                var pos = body.Position;
                pos.X = tileBounds.Right + body.Bounds.Width / 2;
                body.Position = pos;

                var vel = body.Velocity;
                vel.X = 0;
                body.Velocity = vel;
            }

            // Update bounds
            var bounds2 = body.Bounds;
            bounds2.X = (int)(body.Position.X - body.Bounds.Width / 2);
            bounds2.Y = (int)(body.Position.Y - body.Bounds.Height / 2);
            body.Bounds = bounds2;
        }

        /// <summary>
        /// Check collision between two rectangles
        /// </summary>
        public static bool CheckCollision(Rectangle rect1, Rectangle rect2)
        {
            return rect1.Intersects(rect2);
        }

        /// <summary>
        /// Check collision between two bodies
        /// </summary>
        public static bool CheckCollision(PhysicsBody body1, PhysicsBody body2)
        {
            return body1.Bounds.Intersects(body2.Bounds);
        }

        /// <summary>
        /// Get collision depth between two rectangles
        /// </summary>
        public static Vector2 GetCollisionDepth(Rectangle rect1, Rectangle rect2)
        {
            float halfWidth1 = rect1.Width / 2f;
            float halfHeight1 = rect1.Height / 2f;
            float halfWidth2 = rect2.Width / 2f;
            float halfHeight2 = rect2.Height / 2f;

            Vector2 center1 = new Vector2(rect1.Center.X, rect1.Center.Y);
            Vector2 center2 = new Vector2(rect2.Center.X, rect2.Center.Y);

            float distanceX = center1.X - center2.X;
            float distanceY = center1.Y - center2.Y;
            float minDistanceX = halfWidth1 + halfWidth2;
            float minDistanceY = halfHeight1 + halfHeight2;

            if (Math.Abs(distanceX) >= minDistanceX || Math.Abs(distanceY) >= minDistanceY)
                return Vector2.Zero;

            float depthX = distanceX > 0 ? minDistanceX - distanceX : -minDistanceX - distanceX;
            float depthY = distanceY > 0 ? minDistanceY - distanceY : -minDistanceY - distanceY;

            return new Vector2(depthX, depthY);
        }

        /// <summary>
        /// Check if a point is within a circle
        /// </summary>
        public static bool PointInCircle(Vector2 point, Vector2 circleCenter, float radius)
        {
            return Vector2.DistanceSquared(point, circleCenter) <= radius * radius;
        }
    }
}
