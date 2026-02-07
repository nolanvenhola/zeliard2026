using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardModern.Graphics
{
    /// <summary>
    /// Represents an animated sequence of sprites
    /// </summary>
    public class Animation
    {
        public Sprite[] Frames { get; set; }
        public float FrameDuration { get; set; }
        public bool Loop { get; set; }
        public string Name { get; set; }

        private int _currentFrame;
        private float _frameTimer;
        private bool _isPlaying;
        private bool _isFinished;

        public Animation(string name, Sprite[] frames, float frameDuration, bool loop = true)
        {
            Name = name;
            Frames = frames;
            FrameDuration = frameDuration;
            Loop = loop;
            _currentFrame = 0;
            _frameTimer = 0f;
            _isPlaying = false;
            _isFinished = false;
        }

        public void Play()
        {
            _isPlaying = true;
            _isFinished = false;
        }

        public void Stop()
        {
            _isPlaying = false;
            _currentFrame = 0;
            _frameTimer = 0f;
        }

        public void Pause()
        {
            _isPlaying = false;
        }

        public void Resume()
        {
            if (!_isFinished)
                _isPlaying = true;
        }

        public void Reset()
        {
            _currentFrame = 0;
            _frameTimer = 0f;
            _isFinished = false;
        }

        public void Update(float deltaTime)
        {
            if (!_isPlaying || _isFinished || Frames.Length == 0)
                return;

            _frameTimer += deltaTime;

            if (_frameTimer >= FrameDuration)
            {
                _frameTimer -= FrameDuration;
                _currentFrame++;

                if (_currentFrame >= Frames.Length)
                {
                    if (Loop)
                    {
                        _currentFrame = 0;
                    }
                    else
                    {
                        _currentFrame = Frames.Length - 1;
                        _isFinished = true;
                        _isPlaying = false;
                    }
                }
            }
        }

        public void Draw(SpriteBatch spriteBatch, Vector2 position, Color color,
                        float rotation = 0f, Vector2? scale = null,
                        SpriteEffects effects = SpriteEffects.None, float layerDepth = 0f)
        {
            if (Frames.Length == 0)
                return;

            Frames[_currentFrame].Draw(spriteBatch, position, color, rotation, scale, effects, layerDepth);
        }

        public Sprite CurrentFrame => Frames.Length > 0 ? Frames[_currentFrame] : null;
        public int CurrentFrameIndex => _currentFrame;
        public bool IsPlaying => _isPlaying;
        public bool IsFinished => _isFinished;
    }

    /// <summary>
    /// Manages multiple animations and handles switching between them
    /// </summary>
    public class AnimationController
    {
        private Dictionary<string, Animation> _animations;
        private Animation _currentAnimation;
        private string _currentAnimationName;

        public AnimationController()
        {
            _animations = new Dictionary<string, Animation>();
        }

        public void AddAnimation(Animation animation)
        {
            _animations[animation.Name] = animation;
        }

        public void AddAnimation(string name, Sprite[] frames, float frameDuration, bool loop = true)
        {
            var animation = new Animation(name, frames, frameDuration, loop);
            AddAnimation(animation);
        }

        public void Play(string animationName, bool forceRestart = false)
        {
            if (!_animations.ContainsKey(animationName))
                return;

            if (_currentAnimationName == animationName && !forceRestart)
                return;

            _currentAnimation?.Stop();
            _currentAnimationName = animationName;
            _currentAnimation = _animations[animationName];
            _currentAnimation.Reset();
            _currentAnimation.Play();
        }

        public void Update(float deltaTime)
        {
            _currentAnimation?.Update(deltaTime);
        }

        public void Draw(SpriteBatch spriteBatch, Vector2 position, Color color,
                        float rotation = 0f, Vector2? scale = null,
                        SpriteEffects effects = SpriteEffects.None, float layerDepth = 0f)
        {
            _currentAnimation?.Draw(spriteBatch, position, color, rotation, scale, effects, layerDepth);
        }

        public Animation CurrentAnimation => _currentAnimation;
        public string CurrentAnimationName => _currentAnimationName;
        public bool IsAnimationPlaying(string name) => _currentAnimationName == name && _currentAnimation?.IsPlaying == true;
    }
}
