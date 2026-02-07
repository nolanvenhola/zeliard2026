using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardModern.Graphics
{
    /// <summary>
    /// 2D camera for scrolling levels
    /// </summary>
    public class Camera2D
    {
        private Vector2 _position;
        private float _zoom;
        private float _rotation;
        private Vector2 _origin;
        private Viewport _viewport;

        // Camera shake
        private Vector2 _shakeOffset;
        private float _shakeIntensity;
        private float _shakeDuration;
        private float _shakeTimer;
        private System.Random _shakeRandom;

        public Camera2D(Viewport viewport)
        {
            _viewport = viewport;
            _zoom = 1f;
            _rotation = 0f;
            _position = Vector2.Zero;
            _origin = new Vector2(viewport.Width / 2f, viewport.Height / 2f);
            _shakeOffset = Vector2.Zero;
            _shakeRandom = new System.Random();
        }

        // Parameterless constructor for easy initialization
        public Camera2D()
        {
            _zoom = 1f;
            _rotation = 0f;
            _position = Vector2.Zero;
            _origin = Vector2.Zero;
            _shakeOffset = Vector2.Zero;
            _shakeRandom = new System.Random();
        }

        public Vector2 Position
        {
            get => _position;
            set => _position = value;
        }

        public float Zoom
        {
            get => _zoom;
            set => _zoom = MathHelper.Clamp(value, 0.1f, 10f);
        }

        public float Rotation
        {
            get => _rotation;
            set => _rotation = value;
        }

        public Vector2 Origin
        {
            get => _origin;
            set => _origin = value;
        }

        /// <summary>
        /// Get the transformation matrix for rendering
        /// </summary>
        public Matrix GetTransformMatrix()
        {
            // Apply shake offset to position
            Vector2 shakePosition = _position + _shakeOffset;

            return
                Matrix.CreateTranslation(new Vector3(-shakePosition.X, -shakePosition.Y, 0)) *
                Matrix.CreateRotationZ(_rotation) *
                Matrix.CreateScale(_zoom, _zoom, 1) *
                Matrix.CreateTranslation(new Vector3(_origin.X, _origin.Y, 0));
        }

        /// <summary>
        /// Center camera on a position
        /// </summary>
        public void CenterOn(Vector2 position)
        {
            _position = position;
        }

        /// <summary>
        /// Move camera
        /// </summary>
        public void Move(Vector2 amount)
        {
            _position += amount;
        }

        /// <summary>
        /// Follow a target position smoothly
        /// </summary>
        public void Follow(Vector2 targetPosition, float lerp = 0.1f)
        {
            _position = Vector2.Lerp(_position, targetPosition, lerp);
        }

        /// <summary>
        /// Clamp camera to bounds
        /// </summary>
        public void ClampToBounds(Rectangle bounds)
        {
            float halfWidth = (_viewport.Width / _zoom) / 2f;
            float halfHeight = (_viewport.Height / _zoom) / 2f;

            _position.X = MathHelper.Clamp(_position.X, bounds.Left + halfWidth, bounds.Right - halfWidth);
            _position.Y = MathHelper.Clamp(_position.Y, bounds.Top + halfHeight, bounds.Bottom - halfHeight);
        }

        /// <summary>
        /// Convert screen position to world position
        /// </summary>
        public Vector2 ScreenToWorld(Vector2 screenPosition)
        {
            return Vector2.Transform(screenPosition, Matrix.Invert(GetTransformMatrix()));
        }

        /// <summary>
        /// Convert world position to screen position
        /// </summary>
        public Vector2 WorldToScreen(Vector2 worldPosition)
        {
            return Vector2.Transform(worldPosition, GetTransformMatrix());
        }

        /// <summary>
        /// Get the visible area in world coordinates
        /// </summary>
        public Rectangle GetVisibleArea()
        {
            var inverseTransform = Matrix.Invert(GetTransformMatrix());
            var topLeft = Vector2.Transform(Vector2.Zero, inverseTransform);
            var bottomRight = Vector2.Transform(new Vector2(_viewport.Width, _viewport.Height), inverseTransform);

            return new Rectangle(
                (int)topLeft.X,
                (int)topLeft.Y,
                (int)(bottomRight.X - topLeft.X),
                (int)(bottomRight.Y - topLeft.Y)
            );
        }

        /// <summary>
        /// Start camera shake effect
        /// </summary>
        public void Shake(float intensity, float duration)
        {
            _shakeIntensity = intensity;
            _shakeDuration = duration;
            _shakeTimer = 0f;
        }

        /// <summary>
        /// Update camera shake
        /// </summary>
        public void Update(float deltaTime)
        {
            if (_shakeTimer < _shakeDuration)
            {
                _shakeTimer += deltaTime;

                // Generate random shake offset
                float progress = _shakeTimer / _shakeDuration;
                float currentIntensity = _shakeIntensity * (1f - progress); // Fade out shake

                _shakeOffset = new Vector2(
                    ((float)_shakeRandom.NextDouble() - 0.5f) * 2f * currentIntensity,
                    ((float)_shakeRandom.NextDouble() - 0.5f) * 2f * currentIntensity
                );
            }
            else
            {
                _shakeOffset = Vector2.Zero;
            }
        }
    }
}
