using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Systems;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Boss introduction cutscene system
    /// </summary>
    public class BossIntro
    {
        private Enemy _boss;
        private float _timer;
        private bool _isActive;
        private string _bossName;
        private float _duration;
        private float _shakeIntensity;

        public bool IsActive => _isActive;
        public bool IsSkippable => _timer > 0.5f; // Can skip after 0.5 seconds

        public BossIntro()
        {
            _isActive = false;
            _timer = 0f;
            _duration = 3.0f; // 3 seconds total
            _shakeIntensity = 0f;
        }

        /// <summary>
        /// Start boss intro sequence
        /// </summary>
        public void Start(Enemy boss, string bossName)
        {
            _boss = boss;
            _bossName = bossName;
            _isActive = true;
            _timer = 0f;
        }

        /// <summary>
        /// Skip the intro immediately
        /// </summary>
        public void Skip()
        {
            if (IsSkippable)
            {
                _isActive = false;
                _timer = 0f;
            }
        }

        public void Update(float deltaTime)
        {
            if (!_isActive)
                return;

            _timer += deltaTime;

            // Calculate shake intensity based on time
            if (_timer < 0.5f)
            {
                _shakeIntensity = _timer * 10f; // Ramp up shake
            }
            else if (_timer > _duration - 0.5f)
            {
                _shakeIntensity = (_duration - _timer) * 10f; // Ramp down shake
            }
            else
            {
                _shakeIntensity = 5f; // Hold steady shake
            }

            // End intro after duration
            if (_timer >= _duration)
            {
                _isActive = false;
                _timer = 0f;
            }
        }

        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            if (!_isActive)
                return;

            // Create semi-transparent background
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            // Dark overlay
            spriteBatch.Draw(pixelTexture,
                new Rectangle(0, 0, screenWidth, screenHeight),
                Color.Black * 0.7f);

            // Calculate fade alpha (fade in first 0.5s, fade out last 0.5s)
            float alpha = 1f;
            if (_timer < 0.5f)
            {
                alpha = _timer / 0.5f;
            }
            else if (_timer > _duration - 0.5f)
            {
                alpha = (_duration - _timer) / 0.5f;
            }

            // Draw boss name in large text
            if (font != null)
            {
                // Apply screen shake to text position
                float shakeX = (float)(System.Math.Sin(_timer * 20) * _shakeIntensity);
                float shakeY = (float)(System.Math.Cos(_timer * 25) * _shakeIntensity);

                Vector2 nameSize = font.MeasureString(_bossName);
                Vector2 namePos = new Vector2(
                    (screenWidth - nameSize.X) / 2 + shakeX,
                    (screenHeight - nameSize.Y) / 2 + shakeY
                );

                // Draw with glow effect (shadow + main text)
                spriteBatch.DrawString(font, _bossName, namePos + new Vector2(3, 3), Color.Black * alpha, 0f, Vector2.Zero, 2.0f, SpriteEffects.None, 0f);
                spriteBatch.DrawString(font, _bossName, namePos, Color.Red * alpha, 0f, Vector2.Zero, 2.0f, SpriteEffects.None, 0f);
            }

            // Draw skip hint if skippable
            if (IsSkippable && font != null)
            {
                string skipText = "Press ENTER to skip";
                Vector2 skipSize = font.MeasureString(skipText);
                Vector2 skipPos = new Vector2(
                    screenWidth - skipSize.X - 20,
                    screenHeight - 50
                );
                spriteBatch.DrawString(font, skipText, skipPos, Color.Gray * alpha, 0f, Vector2.Zero, 0.6f, SpriteEffects.None, 0f);
            }
        }

        public float GetShakeIntensity()
        {
            return _isActive ? _shakeIntensity : 0f;
        }
    }
}
