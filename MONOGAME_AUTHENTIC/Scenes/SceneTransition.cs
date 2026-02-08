using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardAuthentic.Scenes
{
    /// <summary>
    /// Screen transition effects (fade to/from black).
    /// DOS Zeliard uses palette manipulation for fades — we simulate with an overlay.
    /// </summary>
    public class SceneTransition
    {
        public enum TransitionState { None, FadingOut, FadingIn, Complete }

        private TransitionState _state;
        private float _alpha;        // 0.0 = fully visible, 1.0 = fully black
        private float _duration;     // Seconds for the fade
        private float _elapsed;
        private Texture2D _pixel;

        public TransitionState State => _state;
        public bool IsActive => _state != TransitionState.None && _state != TransitionState.Complete;
        public bool IsComplete => _state == TransitionState.Complete;

        public SceneTransition(GraphicsDevice graphicsDevice)
        {
            _pixel = new Texture2D(graphicsDevice, 1, 1);
            _pixel.SetData(new[] { Color.White });
            _state = TransitionState.None;
        }

        /// <summary>
        /// Start fading to black.
        /// </summary>
        public void FadeOut(float durationSeconds = 0.5f)
        {
            _state = TransitionState.FadingOut;
            _duration = durationSeconds;
            _elapsed = 0f;
            _alpha = 0f;
        }

        /// <summary>
        /// Start fading from black to visible.
        /// </summary>
        public void FadeIn(float durationSeconds = 0.5f)
        {
            _state = TransitionState.FadingIn;
            _duration = durationSeconds;
            _elapsed = 0f;
            _alpha = 1f;
        }

        /// <summary>
        /// Instantly go to full black (for scene changes).
        /// </summary>
        public void SetBlack()
        {
            _alpha = 1f;
            _state = TransitionState.None;
        }

        /// <summary>
        /// Instantly go to fully visible.
        /// </summary>
        public void SetClear()
        {
            _alpha = 0f;
            _state = TransitionState.None;
        }

        public void Update(GameTime gameTime)
        {
            if (_state == TransitionState.None || _state == TransitionState.Complete)
                return;

            _elapsed += (float)gameTime.ElapsedGameTime.TotalSeconds;
            float t = _duration > 0 ? _elapsed / _duration : 1f;

            if (t >= 1f)
            {
                t = 1f;
                _state = TransitionState.Complete;
            }

            if (_state == TransitionState.FadingOut || (_state == TransitionState.Complete && _alpha > 0.5f))
                _alpha = t;            // 0 → 1 (visible → black)
            else
                _alpha = 1f - t;       // 1 → 0 (black → visible)
        }

        /// <summary>
        /// Draw the fade overlay. Call LAST, after all other drawing.
        /// </summary>
        public void Draw(SpriteBatch spriteBatch, int screenWidth, int screenHeight)
        {
            if (_alpha <= 0f)
                return;

            spriteBatch.Draw(_pixel,
                new Rectangle(0, 0, screenWidth, screenHeight),
                Color.Black * _alpha);
        }
    }
}
