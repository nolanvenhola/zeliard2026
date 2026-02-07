using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Emotion states for NPCs
    /// </summary>
    public enum NPCEmotion
    {
        Neutral,
        Happy,
        Worried,
        Angry,
        Mysterious,
        Tired
    }

    /// <summary>
    /// Renders enhanced NPC sprites with animations and emotions
    /// </summary>
    public class NPCSpriteRenderer
    {
        private float _animationTime;
        private Texture2D _pixelTexture;

        public NPCSpriteRenderer(GraphicsDevice graphicsDevice)
        {
            _pixelTexture = new Texture2D(graphicsDevice, 1, 1);
            _pixelTexture.SetData(new[] { Color.White });
            _animationTime = 0f;
        }

        public void Update(float deltaTime)
        {
            _animationTime += deltaTime;
        }

        /// <summary>
        /// Draw an NPC with role-based appearance and animation
        /// </summary>
        public void DrawNPC(SpriteBatch spriteBatch, NPC npc, Vector2 position, NPCEmotion emotion = NPCEmotion.Neutral)
        {
            if (npc == null) return;

            // Calculate animation offsets
            float bobOffset = (float)Math.Sin(_animationTime * 2.0f) * 2.0f; // Gentle bobbing
            float pulseScale = 1.0f + (float)Math.Sin(_animationTime * 3.0f) * 0.05f; // Subtle pulse

            Color npcColor = npc.SpriteColor;
            int x = (int)position.X;
            int y = (int)position.Y + (int)bobOffset;

            // Draw based on role
            switch (npc.Role)
            {
                case "Innkeeper":
                    DrawInnkeeper(spriteBatch, x, y, npcColor, emotion);
                    break;

                case "Blacksmith":
                    DrawBlacksmith(spriteBatch, x, y, npcColor, emotion);
                    break;

                case "Merchant":
                    DrawMerchant(spriteBatch, x, y, npcColor, emotion);
                    break;

                case "QuestGiver":
                    DrawQuestGiver(spriteBatch, x, y, npcColor, emotion, pulseScale);
                    break;

                default:
                    DrawGenericNPC(spriteBatch, x, y, npcColor, emotion);
                    break;
            }

            // Draw emotion indicator
            DrawEmotionIndicator(spriteBatch, x, y - 60, emotion);
        }

        private void DrawInnkeeper(SpriteBatch spriteBatch, int x, int y, Color color, NPCEmotion emotion)
        {
            // Body with apron
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 24, y - 36, 48, 72), color);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 20, y - 10, 40, 50), Color.DarkGreen * 0.8f);

            // Head
            Color headColor = GetEmotionTint(color, emotion);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 16, y - 40, 32, 32), headColor);

            // Chef hat
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 18, y - 50, 36, 12), Color.White);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 12, y - 58, 24, 10), Color.White * 0.9f);
        }

        private void DrawBlacksmith(SpriteBatch spriteBatch, int x, int y, Color color, NPCEmotion emotion)
        {
            // Strong body
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 28, y - 36, 56, 72), color);

            // Head
            Color headColor = GetEmotionTint(color, emotion);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 18, y - 42, 36, 36), headColor);

            // Hammer tool
            spriteBatch.Draw(_pixelTexture, new Rectangle(x + 20, y + 10, 8, 20), Color.Gray);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x + 16, y + 8, 16, 8), Color.DarkGray);

            // Beard
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 10, y - 15, 20, 15), Color.SaddleBrown * 0.8f);
        }

        private void DrawMerchant(SpriteBatch spriteBatch, int x, int y, Color color, NPCEmotion emotion)
        {
            // Body
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 24, y - 36, 48, 72), color);

            // Head
            Color headColor = GetEmotionTint(color, emotion);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 16, y - 40, 32, 32), headColor);

            // Fancy hat
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 20, y - 52, 40, 14), Color.Purple * 0.8f);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 6, y - 58, 12, 8), Color.Purple);

            // Money bag
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 20, y + 20, 14, 14), Color.Yellow);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 18, y + 16, 10, 6), Color.Orange);

            // Gold coins
            spriteBatch.Draw(_pixelTexture, new Rectangle(x + 15, y + 25, 6, 6), Color.Gold);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x + 22, y + 22, 6, 6), Color.Gold);
        }

        private void DrawQuestGiver(SpriteBatch spriteBatch, int x, int y, Color color, NPCEmotion emotion, float pulseScale)
        {
            // Mystical aura (pulsing)
            int auraSize = (int)(80 * pulseScale);
            spriteBatch.Draw(_pixelTexture,
                new Rectangle(x - auraSize / 2, y - auraSize / 2 + 4, auraSize, auraSize),
                Color.Purple * 0.2f);

            // Hooded robe
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 26, y - 38, 52, 76), color);

            // Hood shadow
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 22, y - 42, 44, 40), Color.Black * 0.6f);

            // Mysterious glowing eyes
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 10, y - 35, 6, 6), Color.Cyan);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x + 4, y - 35, 6, 6), Color.Cyan);

            // Staff
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 30, y - 50, 6, 100), Color.Brown);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 34, y - 56, 14, 14), Color.Purple);
        }

        private void DrawGenericNPC(SpriteBatch spriteBatch, int x, int y, Color color, NPCEmotion emotion)
        {
            // Simple body
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 24, y - 36, 48, 72), color);

            // Head with emotion
            Color headColor = GetEmotionTint(color, emotion);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 16, y - 40, 32, 32), headColor);

            // Simple eyes
            spriteBatch.Draw(_pixelTexture, new Rectangle(x - 8, y - 35, 4, 4), Color.Black);
            spriteBatch.Draw(_pixelTexture, new Rectangle(x + 4, y - 35, 4, 4), Color.Black);
        }

        private void DrawEmotionIndicator(SpriteBatch spriteBatch, int x, int y, NPCEmotion emotion)
        {
            switch (emotion)
            {
                case NPCEmotion.Happy:
                    // Smile symbol
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x - 10, y, 20, 4), Color.Yellow);
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x - 8, y + 2, 4, 4), Color.Yellow);
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x + 4, y + 2, 4, 4), Color.Yellow);
                    break;

                case NPCEmotion.Worried:
                    // Sweat drops
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x + 12, y, 6, 8), Color.LightBlue);
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x + 14, y + 6, 4, 4), Color.LightBlue * 0.8f);
                    break;

                case NPCEmotion.Angry:
                    // Anger mark
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x - 12, y, 8, 3), Color.Red);
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x - 10, y - 2, 3, 8), Color.Red);
                    break;

                case NPCEmotion.Mysterious:
                    // Question mark
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x, y, 8, 12), Color.Purple * 0.6f);
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x + 2, y + 14, 4, 4), Color.Purple * 0.6f);
                    break;

                case NPCEmotion.Tired:
                    // Zzz symbol
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x + 8, y - 4, 10, 3), Color.Gray);
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x + 10, y, 8, 3), Color.Gray * 0.8f);
                    spriteBatch.Draw(_pixelTexture, new Rectangle(x + 12, y + 4, 6, 3), Color.Gray * 0.6f);
                    break;
            }
        }

        private Color GetEmotionTint(Color baseColor, NPCEmotion emotion)
        {
            switch (emotion)
            {
                case NPCEmotion.Happy:
                    return Color.Lerp(baseColor, Color.Yellow, 0.2f);
                case NPCEmotion.Worried:
                    return Color.Lerp(baseColor, Color.Blue, 0.15f);
                case NPCEmotion.Angry:
                    return Color.Lerp(baseColor, Color.Red, 0.25f);
                case NPCEmotion.Mysterious:
                    return Color.Lerp(baseColor, Color.Purple, 0.2f);
                case NPCEmotion.Tired:
                    return baseColor * 0.8f;
                default:
                    return baseColor * 1.1f;
            }
        }
    }
}
