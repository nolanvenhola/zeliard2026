using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Plays sprite animations at DOS-authentic frame rates.
    /// DOS Zeliard runs at 18.2 FPS (timer interrupt rate).
    /// Animations are defined as sequences of frame indices with per-frame durations.
    /// </summary>
    public class AnimationPlayer
    {
        /// <summary>DOS timer interrupt rate: ~18.2065 Hz</summary>
        public const float DOS_FPS = 18.2065f;

        /// <summary>Duration of one DOS frame in seconds</summary>
        public const float DOS_FRAME_DURATION = 1.0f / DOS_FPS;

        private int[] _frameIndices;
        private int[] _frameDurations; // In DOS frames (1 = ~55ms)
        private bool _looping;

        private int _currentFrame;
        private int _dosFrameCounter;
        private float _timeAccumulator;
        private bool _finished;

        /// <summary>Current frame index in the animation sequence.</summary>
        public int CurrentFrameIndex => _frameIndices != null && _currentFrame < _frameIndices.Length
            ? _frameIndices[_currentFrame]
            : 0;

        /// <summary>Whether the animation has finished (non-looping only).</summary>
        public bool IsFinished => _finished;

        /// <summary>Current position in the animation sequence (0-based).</summary>
        public int CurrentSequencePosition => _currentFrame;

        /// <summary>
        /// Define an animation with frame indices and optional per-frame durations.
        /// </summary>
        /// <param name="frameIndices">Sprite frame indices to play in sequence.</param>
        /// <param name="frameDurations">Duration of each frame in DOS ticks. Null = 1 tick per frame.</param>
        /// <param name="looping">Whether the animation loops.</param>
        public void SetAnimation(int[] frameIndices, int[] frameDurations = null, bool looping = true)
        {
            _frameIndices = frameIndices;
            _frameDurations = frameDurations ?? CreateUniformDurations(frameIndices.Length, 1);
            _looping = looping;
            _currentFrame = 0;
            _dosFrameCounter = 0;
            _timeAccumulator = 0;
            _finished = false;
        }

        /// <summary>
        /// Update the animation timer. Call once per MonoGame frame.
        /// Uses time accumulation to maintain DOS-accurate timing regardless of actual frame rate.
        /// </summary>
        public void Update(GameTime gameTime)
        {
            if (_frameIndices == null || _finished)
                return;

            _timeAccumulator += (float)gameTime.ElapsedGameTime.TotalSeconds;

            // Process DOS frames
            while (_timeAccumulator >= DOS_FRAME_DURATION)
            {
                _timeAccumulator -= DOS_FRAME_DURATION;
                _dosFrameCounter++;

                int currentDuration = _frameDurations[_currentFrame];
                if (_dosFrameCounter >= currentDuration)
                {
                    _dosFrameCounter = 0;
                    _currentFrame++;

                    if (_currentFrame >= _frameIndices.Length)
                    {
                        if (_looping)
                            _currentFrame = 0;
                        else
                        {
                            _currentFrame = _frameIndices.Length - 1;
                            _finished = true;
                            return;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Reset the animation to the first frame.
        /// </summary>
        public void Reset()
        {
            _currentFrame = 0;
            _dosFrameCounter = 0;
            _timeAccumulator = 0;
            _finished = false;
        }

        private static int[] CreateUniformDurations(int count, int duration)
        {
            var durations = new int[count];
            for (int i = 0; i < count; i++)
                durations[i] = duration;
            return durations;
        }
    }
}
