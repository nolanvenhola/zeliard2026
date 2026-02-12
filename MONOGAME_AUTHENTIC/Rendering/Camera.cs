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
            // Center camera on player
            float targetX = player.Position.X - ScreenWidth / 2;
            float targetY = player.Position.Y - ScreenHeight / 2;

            // Clamp to level bounds
            targetX = Math.Clamp(targetX, 0, levelWidth - ScreenWidth);
            targetY = Math.Clamp(targetY, 0, levelHeight - ScreenHeight);

            Position = new Vector2(targetX, targetY);
        }

        public Matrix GetTransformMatrix()
        {
            return Matrix.CreateTranslation(-Position.X, -Position.Y, 0);
        }
    }
}
