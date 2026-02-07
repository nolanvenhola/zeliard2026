using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;

namespace ZeliardModern.Graphics
{
    /// <summary>
    /// Floating damage number
    /// </summary>
    public class DamageNumber
    {
        public int Damage;
        public Vector2 Position;
        public float TimeAlive;
        public float Lifetime;
        public Color Color;

        public bool IsAlive => TimeAlive < Lifetime;
    }

    /// <summary>
    /// Visual polish effects (damage numbers, auras, glows)
    /// </summary>
    public class PolishEffects
    {
        private List<DamageNumber> _damageNumbers;
        private Texture2D _pixelTexture;

        public PolishEffects(GraphicsDevice graphicsDevice)
        {
            _damageNumbers = new List<DamageNumber>();

            // Create 1x1 white pixel texture
            _pixelTexture = new Texture2D(graphicsDevice, 1, 1);
            _pixelTexture.SetData(new[] { Color.White });
        }

        public void Update(float deltaTime)
        {
            // Update damage numbers
            for (int i = _damageNumbers.Count - 1; i >= 0; i--)
            {
                _damageNumbers[i].TimeAlive += deltaTime;
                _damageNumbers[i].Position += new Vector2(0, -50) * deltaTime; // Float upward

                if (!_damageNumbers[i].IsAlive)
                {
                    _damageNumbers.RemoveAt(i);
                }
            }
        }

        public void Draw(SpriteBatch spriteBatch, SpriteFont font)
        {
            // Draw damage numbers
            foreach (var damageNumber in _damageNumbers)
            {
                float alpha = 1f - (damageNumber.TimeAlive / damageNumber.Lifetime);
                string text = damageNumber.Damage.ToString();

                if (font != null)
                {
                    spriteBatch.DrawString(
                        font,
                        text,
                        damageNumber.Position,
                        damageNumber.Color * alpha,
                        0f,
                        Vector2.Zero,
                        1.0f,
                        SpriteEffects.None,
                        0f
                    );
                }
            }
        }

        /// <summary>
        /// Show floating damage number
        /// </summary>
        public void ShowDamageNumber(int damage, Vector2 position, Color color)
        {
            _damageNumbers.Add(new DamageNumber
            {
                Damage = damage,
                Position = position,
                TimeAlive = 0f,
                Lifetime = 1.0f,
                Color = color
            });
        }

        /// <summary>
        /// Draw aura effect around a position
        /// </summary>
        public void DrawAura(SpriteBatch spriteBatch, Vector2 position, Color color, float time)
        {
            // Draw pulsing circles
            int circleCount = 3;
            for (int i = 0; i < circleCount; i++)
            {
                float offset = i * (float)Math.PI * 2 / circleCount;
                float pulseSize = 20f + (float)Math.Sin(time * 3f + offset) * 5f;
                float alpha = 0.3f + (float)Math.Sin(time * 3f + offset) * 0.2f;

                DrawCircle(spriteBatch, position, pulseSize, color * alpha, 2);
            }
        }

        /// <summary>
        /// Draw weapon glow effect
        /// </summary>
        public void DrawWeaponGlow(SpriteBatch spriteBatch, Vector2 position, Color color, float intensity)
        {
            // Draw glow as expanding circles
            for (int i = 0; i < 3; i++)
            {
                float size = 10f + i * 5f;
                float alpha = intensity * (1f - i / 3f) * 0.5f;

                DrawCircle(spriteBatch, position, size, color * alpha, 1);
            }
        }

        /// <summary>
        /// Draw a circle (approximate with lines)
        /// </summary>
        private void DrawCircle(SpriteBatch spriteBatch, Vector2 center, float radius, Color color, int thickness)
        {
            int segments = 20;
            for (int i = 0; i < segments; i++)
            {
                float angle1 = (float)i / segments * MathHelper.TwoPi;
                float angle2 = (float)(i + 1) / segments * MathHelper.TwoPi;

                Vector2 p1 = center + new Vector2(
                    (float)Math.Cos(angle1) * radius,
                    (float)Math.Sin(angle1) * radius
                );
                Vector2 p2 = center + new Vector2(
                    (float)Math.Cos(angle2) * radius,
                    (float)Math.Sin(angle2) * radius
                );

                DrawLine(spriteBatch, p1, p2, color, thickness);
            }
        }

        /// <summary>
        /// Draw a line between two points
        /// </summary>
        private void DrawLine(SpriteBatch spriteBatch, Vector2 start, Vector2 end, Color color, int thickness)
        {
            Vector2 edge = end - start;
            float angle = (float)Math.Atan2(edge.Y, edge.X);
            float length = edge.Length();

            spriteBatch.Draw(
                _pixelTexture,
                new Rectangle((int)start.X, (int)start.Y, (int)length, thickness),
                null,
                color,
                angle,
                new Vector2(0, 0.5f),
                SpriteEffects.None,
                0f
            );
        }
    }
}
