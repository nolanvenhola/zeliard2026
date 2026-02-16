using Microsoft.Xna.Framework;
using System;
using ZeliardAuthentic.Entities;

namespace ZeliardAuthentic.Rendering
{
    public class Camera
    {
        public Vector2 Position { get; set; }

        private const int ScreenWidth = 320;
        private const int ScreenHeight = 200;

        public void Follow(Player player, int levelWidth, int levelHeight)
        {
            // Center camera on player (integer math)
            int targetX = player.X - ScreenWidth / 2;
            int targetY = player.Y - ScreenHeight / 2;

            // Clamp to level bounds (handle small levels)
            int maxX = Math.Max(0, levelWidth - ScreenWidth);
            int maxY = Math.Max(0, levelHeight - ScreenHeight);

            targetX = Math.Clamp(targetX, 0, maxX);
            targetY = Math.Clamp(targetY, 0, maxY);

            Position = new Vector2(targetX, targetY);
        }

        public Matrix GetTransformMatrix()
        {
            return Matrix.CreateTranslation(-Position.X, -Position.Y, 0);
        }
    }
}
