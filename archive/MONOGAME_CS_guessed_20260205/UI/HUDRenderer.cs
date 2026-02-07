using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Systems;
using ZeliardModern.Graphics;

namespace ZeliardModern.UI
{
    /// <summary>
    /// Renders the game HUD (Health, Experience, Gold, etc.)
    /// </summary>
    public class HUDRenderer
    {
        private SpriteFont _font;
        private Texture2D _hudTexture;
        private Texture2D _pixelTexture;

        public HUDRenderer()
        {
        }

        public void LoadContent(GraphicsDevice graphicsDevice, Texture2D hudTexture, SpriteFont font = null)
        {
            _hudTexture = hudTexture;
            _font = font;

            // Create a 1x1 white pixel texture for drawing bars
            _pixelTexture = new Texture2D(graphicsDevice, 1, 1);
            _pixelTexture.SetData(new[] { Color.White });
        }

        public void Draw(SpriteBatch spriteBatch, Player player, int screenWidth, int screenHeight)
        {
            // Draw at fixed screen position (not affected by camera)
            int hudX = 10;
            int hudY = 10;

            // Draw health bar
            DrawHealthBar(spriteBatch, player, hudX, hudY);

            // Draw experience bar
            DrawExperienceBar(spriteBatch, player, hudX, hudY + 20);

            // Draw text stats
            DrawStats(spriteBatch, player, hudX, hudY + 40);

            // Draw equipment icons (if HUD texture is loaded)
            if (_hudTexture != null)
            {
                DrawEquipment(spriteBatch, player, screenWidth - 200, hudY);
            }
        }

        private void DrawHealthBar(SpriteBatch spriteBatch, Player player, int x, int y)
        {
            int barWidth = 200;
            int barHeight = 16;

            // Background (empty bar)
            spriteBatch.Draw(_pixelTexture,
                new Rectangle(x, y, barWidth, barHeight),
                Color.Black * 0.7f);

            // Health fill
            float healthPercent = (float)player.Health / player.MaxHealth;
            int fillWidth = (int)(barWidth * healthPercent);

            Color healthColor = healthPercent > 0.5f ? Color.Green :
                               healthPercent > 0.25f ? Color.Yellow :
                               Color.Red;

            spriteBatch.Draw(_pixelTexture,
                new Rectangle(x + 2, y + 2, fillWidth - 4, barHeight - 4),
                healthColor);

            // Border
            DrawRectangleBorder(spriteBatch, new Rectangle(x, y, barWidth, barHeight), Color.White, 2);

            // Text
            if (_font != null)
            {
                string healthText = $"HP: {player.Health}/{player.MaxHealth}";
                spriteBatch.DrawString(_font, healthText,
                    new Vector2(x + barWidth / 2 - 40, y),
                    Color.White);
            }
        }

        private void DrawExperienceBar(SpriteBatch spriteBatch, Player player, int x, int y)
        {
            int barWidth = 200;
            int barHeight = 12;

            // Background
            spriteBatch.Draw(_pixelTexture,
                new Rectangle(x, y, barWidth, barHeight),
                Color.Black * 0.7f);

            // Experience fill
            float expPercent = player.GetExperienceProgress();
            int fillWidth = (int)(barWidth * expPercent);

            spriteBatch.Draw(_pixelTexture,
                new Rectangle(x + 2, y + 2, fillWidth - 4, barHeight - 4),
                Color.Cyan);

            // Border
            DrawRectangleBorder(spriteBatch, new Rectangle(x, y, barWidth, barHeight), Color.White, 2);

            // Text
            if (_font != null)
            {
                string expText = $"XP: {player.Experience}/{player.GetRequiredExperienceForNextLevel()}";
                spriteBatch.DrawString(_font, expText,
                    new Vector2(x + 5, y - 2),
                    Color.White, 0f, Vector2.Zero, 0.7f, SpriteEffects.None, 0f);
            }
        }

        private void DrawStats(SpriteBatch spriteBatch, Player player, int x, int y)
        {
            if (_font == null)
                return;

            string[] stats = new string[]
            {
                $"Level: {player.Level}",
                $"Gold: {player.Gold}",
                $"ATK: {player.GetAttackDamage()}",
                $"Sword: {player.EquippedSword?.Name ?? "None"}",
            };

            for (int i = 0; i < stats.Length; i++)
            {
                spriteBatch.DrawString(_font, stats[i],
                    new Vector2(x, y + i * 18),
                    Color.White, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
            }
        }

        private void DrawEquipment(SpriteBatch spriteBatch, Player player, int x, int y)
        {
            // Draw equipment slots
            // This would use sprites from the HUD texture
            // For now, just show text

            if (_font != null)
            {
                spriteBatch.DrawString(_font, "Equipment:",
                    new Vector2(x, y),
                    Color.Yellow);

                int slotY = y + 20;
                if (player.EquippedSword != null)
                {
                    spriteBatch.DrawString(_font, $"⚔ {player.EquippedSword.Name}",
                        new Vector2(x, slotY), Color.White, 0f, Vector2.Zero, 0.7f, SpriteEffects.None, 0f);
                    slotY += 18;
                }

                if (player.EquippedShield != null)
                {
                    spriteBatch.DrawString(_font, $"🛡 {player.EquippedShield.Name}",
                        new Vector2(x, slotY), Color.White, 0f, Vector2.Zero, 0.7f, SpriteEffects.None, 0f);
                    slotY += 18;
                }

                if (player.EquippedArmor != null)
                {
                    spriteBatch.DrawString(_font, $"🎽 {player.EquippedArmor.Name}",
                        new Vector2(x, slotY), Color.White, 0f, Vector2.Zero, 0.7f, SpriteEffects.None, 0f);
                }
            }
        }

        private void DrawRectangleBorder(SpriteBatch spriteBatch, Rectangle rect, Color color, int thickness)
        {
            // Top
            spriteBatch.Draw(_pixelTexture, new Rectangle(rect.X, rect.Y, rect.Width, thickness), color);
            // Bottom
            spriteBatch.Draw(_pixelTexture, new Rectangle(rect.X, rect.Bottom - thickness, rect.Width, thickness), color);
            // Left
            spriteBatch.Draw(_pixelTexture, new Rectangle(rect.X, rect.Y, thickness, rect.Height), color);
            // Right
            spriteBatch.Draw(_pixelTexture, new Rectangle(rect.Right - thickness, rect.Y, thickness, rect.Height), color);
        }

        /// <summary>
        /// Draw a message box (for Sage dialogue, shop, etc.)
        /// </summary>
        public void DrawMessageBox(SpriteBatch spriteBatch, string message, int x, int y, int width, int height)
        {
            // Background
            spriteBatch.Draw(_pixelTexture,
                new Rectangle(x, y, width, height),
                Color.Black * 0.8f);

            // Border
            DrawRectangleBorder(spriteBatch, new Rectangle(x, y, width, height), Color.White, 3);

            // Message text
            if (_font != null && !string.IsNullOrEmpty(message))
            {
                // Word wrap the message
                string wrappedMessage = WrapText(message, width - 20, _font);

                spriteBatch.DrawString(_font, wrappedMessage,
                    new Vector2(x + 10, y + 10),
                    Color.White);
            }
        }

        private string WrapText(string text, int maxWidth, SpriteFont font)
        {
            string[] words = text.Split(' ');
            System.Text.StringBuilder result = new System.Text.StringBuilder();
            string currentLine = "";

            foreach (string word in words)
            {
                string testLine = currentLine + (currentLine.Length > 0 ? " " : "") + word;
                Vector2 size = font.MeasureString(testLine);

                if (size.X > maxWidth)
                {
                    result.AppendLine(currentLine);
                    currentLine = word;
                }
                else
                {
                    currentLine = testLine;
                }
            }

            if (currentLine.Length > 0)
                result.Append(currentLine);

            return result.ToString();
        }
    }
}
