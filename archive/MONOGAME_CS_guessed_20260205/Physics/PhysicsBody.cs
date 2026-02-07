using System;
using Microsoft.Xna.Framework;
using ZeliardModern.Audio;
using ZeliardModern.Core;

namespace ZeliardModern.Physics
{
    /// <summary>
    /// Physics body for platformer movement
    /// AUTHENTIC DOS physics - using constants from assembly analysis
    /// </summary>
    public class PhysicsBody
    {
        public Vector2 Position { get; set; }
        public Vector2 Velocity { get; set; }
        public Vector2 Acceleration { get; set; }
        public Rectangle Bounds { get; set; }

        private bool _isGrounded;
        private bool _wasGrounded;

        public bool IsGrounded
        {
            get => _isGrounded;
            set
            {
                _wasGrounded = _isGrounded;
                _isGrounded = value;

                // Play land sound when touching ground
                if (_isGrounded && !_wasGrounded)
                {
                    SoundManager?.PlaySound(SoundEffects.PLAYER_LAND);
                }
            }
        }

        public bool IsOnPlatform { get; set; }
        public float Gravity { get; set; }
        public float MaxFallSpeed { get; set; }
        public float Friction { get; set; }

        // Audio (optional)
        public SoundManager SoundManager { get; set; }

        public PhysicsBody(Vector2 position, int width, int height)
        {
            Position = position;
            Velocity = Vector2.Zero;
            Acceleration = Vector2.Zero;
            Bounds = new Rectangle((int)position.X - width / 2, (int)position.Y - height / 2, width, height);
            _isGrounded = false;
            _wasGrounded = false;
            IsOnPlatform = false;

            // AUTHENTIC DOS CONSTANTS (converted to pixels/second for MonoGame)
            // Assembly: 0x0020 = 0.125 pixels/frame → 2.275 pixels/sec²
            Gravity = AuthenticConstants.FrameSpeedToPixelsPerSecond(AuthenticConstants.GRAVITY);

            // Assembly: 0x0800 = 8.0 pixels/frame → 145.6 pixels/sec
            MaxFallSpeed = AuthenticConstants.FrameSpeedToPixelsPerSecond(AuthenticConstants.MAX_FALL_SPEED);

            // Ground friction
            Friction = AuthenticConstants.GROUND_FRICTION;
        }

        /// <summary>
        /// Update physics simulation
        /// </summary>
        public void Update(float deltaTime)
        {
            // Apply gravity
            if (!IsGrounded)
            {
                var vel = Velocity;
                vel.Y += Gravity * deltaTime;
                if (vel.Y > MaxFallSpeed)
                    vel.Y = MaxFallSpeed;
                Velocity = vel;
            }

            // Apply acceleration
            Velocity += Acceleration * deltaTime;

            // Apply friction when grounded
            if (IsGrounded)
            {
                var vel = Velocity;
                vel.X *= Friction;
                if (Math.Abs(vel.X) < 1f)
                    vel.X = 0f;
                Velocity = vel;
            }

            // Update position
            Position += Velocity * deltaTime;

            // Update bounds
            var bounds = Bounds;
            bounds.X = (int)(Position.X - bounds.Width / 2);
            bounds.Y = (int)(Position.Y - bounds.Height / 2);
            Bounds = bounds;

            // Reset acceleration
            Acceleration = Vector2.Zero;
        }

        /// <summary>
        /// Apply a force to the body
        /// </summary>
        public void ApplyForce(Vector2 force)
        {
            Acceleration += force;
        }

        /// <summary>
        /// Make the body jump
        /// </summary>
        public void Jump(float jumpForce)
        {
            if (IsGrounded || IsOnPlatform)
            {
                var vel = Velocity;
                vel.Y = -jumpForce;
                Velocity = vel;

                IsGrounded = false;
                IsOnPlatform = false;

                // Play jump sound
                SoundManager?.PlaySound(SoundEffects.PLAYER_JUMP);
            }
        }

        /// <summary>
        /// Get the center position
        /// </summary>
        public Vector2 Center => new Vector2(Bounds.Center.X, Bounds.Center.Y);
    }
}
