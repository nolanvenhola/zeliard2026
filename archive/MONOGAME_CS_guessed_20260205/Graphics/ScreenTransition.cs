using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ZeliardModern.Graphics
{
    public enum TransitionState
    {
        None,       // Not transitioning
        FadingOut,  // Screen going to black
        FadingIn    // Black going to transparent
    }

    /// <summary>
    /// Screen transition system for smooth fade effects
    /// </summary>
    public class ScreenTransition
    {
        private TransitionState _state;
        private float _alpha;           // 0.0 = transparent, 1.0 = opaque
        private float _fadeSpeed;       // Alpha change per second
        private Texture2D _pixelTexture;
        private Action _onFadeOutComplete;
        private bool _fadeOutAndIn;

        public bool IsTransitioning => _state != TransitionState.None;
        public TransitionState State => _state;

        public ScreenTransition(GraphicsDevice graphicsDevice)
        {
            _state = TransitionState.None;
            _alpha = 0f;
            _fadeSpeed = 1f;
            _fadeOutAndIn = false;

            // Create 1x1 white texture for fade overlay
            _pixelTexture = new Texture2D(graphicsDevice, 1, 1);
            _pixelTexture.SetData(new[] { Color.White });
        }

        /// <summary>
        /// Start a fade out, then call action, then fade in
        /// </summary>
        public void FadeOutAndIn(float speed, Action onComplete)
        {
            _state = TransitionState.FadingOut;
            _alpha = 0f;
            _fadeSpeed = speed;
            _onFadeOutComplete = onComplete;
            _fadeOutAndIn = true;
        }

        /// <summary>
        /// Just fade out
        /// </summary>
        public void FadeOut(float speed, Action onComplete)
        {
            _state = TransitionState.FadingOut;
            _alpha = 0f;
            _fadeSpeed = speed;
            _onFadeOutComplete = onComplete;
            _fadeOutAndIn = false;
        }

        /// <summary>
        /// Just fade in
        /// </summary>
        public void FadeIn(float speed)
        {
            _state = TransitionState.FadingIn;
            _alpha = 1f;
            _fadeSpeed = speed;
            _onFadeOutComplete = null;
            _fadeOutAndIn = false;
        }

        public void Update(float deltaTime)
        {
            if (_state == TransitionState.None)
                return;

            if (_state == TransitionState.FadingOut)
            {
                // Increase alpha to fade to black
                _alpha += _fadeSpeed * deltaTime;

                if (_alpha >= 1f)
                {
                    _alpha = 1f;

                    // Call the completion callback
                    _onFadeOutComplete?.Invoke();

                    // If fade out and in, start fading in
                    if (_fadeOutAndIn)
                    {
                        _state = TransitionState.FadingIn;
                    }
                    else
                    {
                        _state = TransitionState.None;
                    }
                }
            }
            else if (_state == TransitionState.FadingIn)
            {
                // Decrease alpha to fade from black
                _alpha -= _fadeSpeed * deltaTime;

                if (_alpha <= 0f)
                {
                    _alpha = 0f;
                    _state = TransitionState.None;
                }
            }
        }

        public void Draw(SpriteBatch spriteBatch, int width, int height)
        {
            if (_state == TransitionState.None)
                return;

            // Draw black overlay with current alpha
            spriteBatch.Draw(
                _pixelTexture,
                new Rectangle(0, 0, width, height),
                Color.Black * _alpha
            );
        }

        /// <summary>
        /// Instantly set to black (for starting a scene already faded out)
        /// </summary>
        public void SetBlack()
        {
            _alpha = 1f;
            _state = TransitionState.None;
        }

        /// <summary>
        /// Cancel any ongoing transition
        /// </summary>
        public void Cancel()
        {
            _state = TransitionState.None;
            _alpha = 0f;
        }
    }
}
