using Microsoft.Xna.Framework;
using ZeliardAuthentic.Entities;

namespace ZeliardAuthentic.Animation
{
    /// <summary>
    /// Player animation state machine.
    /// From zelres1_chunk_00 (offsets 0x0A20-0x0CCF) - Animation system.
    /// Frame counter at 0x0083 (ranges 0-27).
    /// </summary>
    public enum AnimationState
    {
        Idle = 0,      // Standing still
        Walk = 1,      // Walking
        JumpUp = 3,    // Rising in air
        JumpDown = 5,  // Falling
        Attack = 6     // Sword swing (Phase 4)
    }

    public class PlayerAnimator
    {
        private AnimationState _currentState = AnimationState.Idle;
        private int _currentFrame = 0;  // 0x0083 - Animation frame counter (0-27)
        private float _frameTimer = 0f;

        // DOS 18.2 FPS timing for animations
        private const float FrameTime = 1f / 18.2f; // 54.945ms per frame

        // Frame counts per animation state
        private static readonly int[] FrameCounts = new int[]
        {
            2,  // Idle: 2 frames (subtle breathing)
            8,  // Walk: 8 frames (full walk cycle)
            0, 0, // (unused states 2, 3)
            1,  // JumpUp: 1 frame (held while rising)
            0,  // (unused state 4)
            1,  // JumpDown: 1 frame (held while falling)
            6   // Attack: 6 frames (sword swing)
        };

        public AnimationState CurrentState => _currentState;
        public int CurrentFrame => _currentFrame;

        public void Update(GameTime gameTime, Player player)
        {
            // Determine animation state from player physics
            AnimationState newState = DetermineState(player);

            if (newState != _currentState)
            {
                SetState(newState);
            }

            // Advance frame timer
            _frameTimer += (float)gameTime.ElapsedGameTime.TotalSeconds;

            if (_frameTimer >= FrameTime)
            {
                _frameTimer -= FrameTime;
                _currentFrame++;

                int maxFrames = FrameCounts[(int)_currentState];
                if (_currentFrame >= maxFrames)
                {
                    _currentFrame = 0; // Loop animation
                }
            }
        }

        private AnimationState DetermineState(Player player)
        {
            // Priority: Jumping/falling > Walking > Idle

            // In air (jumping or falling)
            if (!player.OnGround)
            {
                return player.VelocityY < 0 ? AnimationState.JumpUp : AnimationState.JumpDown;
            }

            // On ground - walking or idle
            if (System.Math.Abs(player.VelocityX) > 0)
            {
                return AnimationState.Walk;
            }

            // Standing still
            return AnimationState.Idle;
        }

        private void SetState(AnimationState newState)
        {
            _currentState = newState;
            _currentFrame = 0;
            _frameTimer = 0f;
        }

        /// <summary>
        /// Gets the absolute frame index for sprite sheet lookup.
        /// Calculates base frame offset for current state + current frame.
        /// </summary>
        public int GetAbsoluteFrame()
        {
            int baseFrame = 0;

            // Sum frames from all previous states
            for (int i = 0; i < (int)_currentState; i++)
            {
                baseFrame += FrameCounts[i];
            }

            return baseFrame + _currentFrame;
        }
    }
}
