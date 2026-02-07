using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Renders procedurally generated backgrounds for towns
    /// </summary>
    public class TownBackgroundRenderer
    {
        private Texture2D _pixelTexture;
        private Random _random;

        public TownBackgroundRenderer(GraphicsDevice graphicsDevice)
        {
            _pixelTexture = new Texture2D(graphicsDevice, 1, 1);
            _pixelTexture.SetData(new[] { Color.White });
            _random = new Random(12345); // Fixed seed for consistent backgrounds
        }

        /// <summary>
        /// Draw a themed background based on town area level
        /// </summary>
        public void DrawTownBackground(SpriteBatch spriteBatch, int areaLevel, int width, int height)
        {
            switch (areaLevel)
            {
                case 1: // Muralla - Peaceful meadow
                    DrawMeadowBackground(spriteBatch, width, height);
                    break;

                case 2: // Satono - Forest
                    DrawForestBackground(spriteBatch, width, height);
                    break;

                case 3: // Bosque - Ice/Snow
                    DrawIceBackground(spriteBatch, width, height);
                    break;

                case 4: // Cemento - Decay/Corruption
                    DrawDecayBackground(spriteBatch, width, height);
                    break;

                case 5: // Plata - Silver mines
                    DrawMinesBackground(spriteBatch, width, height);
                    break;

                case 6: // Arrugia - Fire
                    DrawFireBackground(spriteBatch, width, height);
                    break;

                case 7: // Absorto - Light/Divine
                    DrawLightBackground(spriteBatch, width, height);
                    break;

                case 8: // Desleal - Darkness/Final
                    DrawDarknessBackground(spriteBatch, width, height);
                    break;

                default:
                    DrawDefaultBackground(spriteBatch, width, height);
                    break;
            }
        }

        private void DrawMeadowBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Sky gradient
            for (int y = 0; y < height / 2; y++)
            {
                float t = (float)y / (height / 2);
                Color skyColor = Color.Lerp(Color.LightSkyBlue, Color.SkyBlue, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), skyColor);
            }

            // Grass ground
            spriteBatch.Draw(_pixelTexture, new Rectangle(0, height / 2, width, height / 2), Color.Green * 0.6f);

            // Simple hills
            for (int i = 0; i < 5; i++)
            {
                int hillX = (i * width / 4) - 50;
                spriteBatch.Draw(_pixelTexture,
                    new Rectangle(hillX, height / 2 - 40, 200, 60),
                    Color.DarkGreen * 0.7f);
            }

            // Trees (simple)
            for (int i = 0; i < 8; i++)
            {
                int treeX = i * (width / 8) + 30;
                DrawSimpleTree(spriteBatch, treeX, height / 2 - 30, Color.Brown, Color.DarkGreen);
            }
        }

        private void DrawForestBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Dark green gradient
            for (int y = 0; y < height; y++)
            {
                float t = (float)y / height;
                Color bgColor = Color.Lerp(Color.DarkGreen * 0.4f, Color.DarkGreen * 0.7f, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), bgColor);
            }

            // Dense trees
            for (int i = 0; i < 15; i++)
            {
                int treeX = i * (width / 15) + 20;
                int treeY = height / 2 + (i % 3) * 20;
                DrawSimpleTree(spriteBatch, treeX, treeY, Color.SaddleBrown, Color.ForestGreen);
            }
        }

        private void DrawIceBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Icy blue gradient
            for (int y = 0; y < height; y++)
            {
                float t = (float)y / height;
                Color bgColor = Color.Lerp(Color.LightCyan, Color.CadetBlue, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), bgColor);
            }

            // Snow mounds
            for (int i = 0; i < 10; i++)
            {
                int moundX = i * (width / 10);
                int moundY = height / 2 + 50;
                spriteBatch.Draw(_pixelTexture,
                    new Rectangle(moundX, moundY, 80, 40),
                    Color.White * 0.9f);
            }

            // Ice crystals
            for (int i = 0; i < 12; i++)
            {
                int crystalX = (i * width / 12) + 15;
                int crystalY = height / 2 + (i % 2) * 30;
                DrawCrystal(spriteBatch, crystalX, crystalY, Color.Cyan);
            }
        }

        private void DrawDecayBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Sickly green/brown gradient
            for (int y = 0; y < height; y++)
            {
                float t = (float)y / height;
                Color bgColor = Color.Lerp(Color.DarkOliveGreen, Color.SaddleBrown * 0.6f, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), bgColor);
            }

            // Dead trees
            for (int i = 0; i < 10; i++)
            {
                int treeX = i * (width / 10) + 25;
                DrawDeadTree(spriteBatch, treeX, height / 2);
            }

            // Toxic mist
            spriteBatch.Draw(_pixelTexture,
                new Rectangle(0, height - 100, width, 100),
                Color.Yellow * 0.15f);
        }

        private void DrawMinesBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Rocky gray/brown
            for (int y = 0; y < height; y++)
            {
                float t = (float)y / height;
                Color bgColor = Color.Lerp(Color.SlateGray, Color.Gray * 0.7f, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), bgColor);
            }

            // Rock formations
            for (int i = 0; i < 12; i++)
            {
                int rockX = i * (width / 12) + 10;
                int rockY = height / 2 + (i % 3) * 40;
                DrawRock(spriteBatch, rockX, rockY);
            }

            // Silver veins
            for (int i = 0; i < 8; i++)
            {
                int veinX = (i * width / 8) + 40;
                int veinY = height / 2 + 30;
                spriteBatch.Draw(_pixelTexture,
                    new Rectangle(veinX, veinY, 20, 4),
                    Color.Silver);
            }
        }

        private void DrawFireBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Fiery orange/red gradient
            for (int y = 0; y < height; y++)
            {
                float t = (float)y / height;
                Color bgColor = Color.Lerp(Color.OrangeRed * 0.8f, Color.DarkRed * 0.6f, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), bgColor);
            }

            // Flames
            for (int i = 0; i < 15; i++)
            {
                int flameX = i * (width / 15) + 20;
                int flameY = height / 2 + 80;
                DrawFlame(spriteBatch, flameX, flameY);
            }

            // Lava pools
            spriteBatch.Draw(_pixelTexture,
                new Rectangle(0, height - 60, width, 60),
                Color.OrangeRed * 0.7f);
        }

        private void DrawLightBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Radiant light gradient
            for (int y = 0; y < height; y++)
            {
                float t = (float)y / height;
                Color bgColor = Color.Lerp(Color.LightGoldenrodYellow, Color.Gold * 0.6f, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), bgColor);
            }

            // Light rays
            for (int i = 0; i < 10; i++)
            {
                int rayX = i * (width / 10);
                spriteBatch.Draw(_pixelTexture,
                    new Rectangle(rayX + 20, 0, 15, height),
                    Color.White * 0.15f);
            }

            // Floating crystals
            for (int i = 0; i < 8; i++)
            {
                int crystalX = (i * width / 8) + 30;
                int crystalY = height / 3 + (i % 2) * 50;
                DrawCrystal(spriteBatch, crystalX, crystalY, Color.Yellow);
            }
        }

        private void DrawDarknessBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Dark purple/black gradient
            for (int y = 0; y < height; y++)
            {
                float t = (float)y / height;
                Color bgColor = Color.Lerp(Color.DarkSlateGray * 0.4f, Color.Black * 0.8f, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), bgColor);
            }

            // Ominous shadows
            for (int i = 0; i < 8; i++)
            {
                int shadowX = i * (width / 8) + 40;
                int shadowY = height / 2;
                spriteBatch.Draw(_pixelTexture,
                    new Rectangle(shadowX, shadowY, 60, 120),
                    Color.Black * 0.6f);
            }

            // Purple mist
            spriteBatch.Draw(_pixelTexture,
                new Rectangle(0, height - 150, width, 150),
                Color.Purple * 0.2f);
        }

        private void DrawDefaultBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Simple gradient
            for (int y = 0; y < height; y++)
            {
                float t = (float)y / height;
                Color bgColor = Color.Lerp(Color.SkyBlue * 0.7f, Color.Gray * 0.8f, t);
                spriteBatch.Draw(_pixelTexture, new Rectangle(0, y, width, 1), bgColor);
            }
        }

        // Helper drawing methods
        private void DrawSimpleTree(SpriteBatch spriteBatch, int x, int y, Color trunkColor, Color leavesColor)
        {
            // Trunk
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 4, y, 8, 30), trunkColor);
            // Leaves
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 20, y - 20, 40, 30), leavesColor);
        }

        private void DrawDeadTree(SpriteBatch spriteBatch, int x, int y)
        {
            // Trunk
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 4, y, 8, 40), Color.Gray * 0.6f);
            // Branches
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 15, y + 10, 15, 4), Color.Gray * 0.5f);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x + 4, y + 15, 18, 4), Color.Gray * 0.5f);
        }

        private void DrawCrystal(SpriteBatch spriteBatch, int x, int y, Color color)
        {
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 6, y, 12, 20), color * 0.8f);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 3, y - 8, 6, 8), color);
        }

        private void DrawRock(SpriteBatch spriteBatch, int x, int y)
        {
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 15, y, 30, 25), Color.DarkGray);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 10, y - 5, 20, 15), Color.Gray);
        }

        private void DrawFlame(SpriteBatch spriteBatch, int x, int y)
        {
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 8, y, 16, 30), Color.OrangeRed);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 5, y - 10, 10, 15), Color.Yellow);
        }
    }
}
