using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Systems;

namespace ZeliardModern.Graphics
{
    /// <summary>
    /// Component for rendering sprites with animations
    /// </summary>
    public class SpriteRenderer
    {
        public AnimationController AnimationController { get; set; }
        public bool FlipHorizontal { get; set; }
        public bool FlipVertical { get; set; }
        public Color Color { get; set; }
        public float LayerDepth { get; set; }
        public Vector2 Scale { get; set; }

        public SpriteRenderer()
        {
            AnimationController = new AnimationController();
            Color = Color.White;
            LayerDepth = 0f;
            Scale = Vector2.One;
            FlipHorizontal = false;
            FlipVertical = false;
        }

        public void Update(float deltaTime)
        {
            AnimationController.Update(deltaTime);
        }

        public void Draw(SpriteBatch spriteBatch, Vector2 position)
        {
            SpriteEffects effects = SpriteEffects.None;
            if (FlipHorizontal) effects |= SpriteEffects.FlipHorizontally;
            if (FlipVertical) effects |= SpriteEffects.FlipVertically;

            AnimationController.Draw(spriteBatch, position, Color, 0f, Scale, effects, LayerDepth);
        }
    }

    /// <summary>
    /// Manages sprite rendering for the player character
    /// </summary>
    public class PlayerRenderer
    {
        private SpriteRenderer _renderer;
        private Player _player;

        public AnimationController AnimationController => _renderer.AnimationController;

        public PlayerRenderer(Player player)
        {
            _player = player;
            _renderer = new SpriteRenderer();
        }

        /// <summary>
        /// Initialize player animations from sprite sheet
        /// </summary>
        public void InitializeAnimations(SpriteSheet spriteSheet)
        {
            // Assuming player sprite sheet layout:
            // Row 0: Idle animation
            // Row 1: Walking animation
            // Row 2: Jumping animation
            // Row 3: Attacking animation
            // Adjust these based on actual sprite sheet layout

            // Idle animation (4 frames)
            var idleFrames = spriteSheet.GetSpritesInRegion(0, 0, 4, 1);
            _renderer.AnimationController.AddAnimation("idle", idleFrames, 0.15f, true);

            // Walking animation (6 frames)
            var walkFrames = spriteSheet.GetSpritesInRegion(0, 1, 6, 1);
            _renderer.AnimationController.AddAnimation("walk", walkFrames, 0.1f, true);

            // Jumping animation (3 frames, no loop)
            var jumpFrames = spriteSheet.GetSpritesInRegion(0, 2, 3, 1);
            _renderer.AnimationController.AddAnimation("jump", jumpFrames, 0.1f, false);

            // Attacking animation (4 frames, no loop)
            var attackFrames = spriteSheet.GetSpritesInRegion(0, 3, 4, 1);
            _renderer.AnimationController.AddAnimation("attack", attackFrames, 0.08f, false);

            // Start with idle
            _renderer.AnimationController.Play("idle");
        }

        public void Update(float deltaTime, bool isAttacking, bool isJumping)
        {
            // Update sprite direction based on movement
            if (_player.VelocityX < 0)
                _renderer.FlipHorizontal = true;
            else if (_player.VelocityX > 0)
                _renderer.FlipHorizontal = false;

            // Determine which animation to play
            if (isAttacking && !_renderer.AnimationController.IsAnimationPlaying("attack"))
            {
                _renderer.AnimationController.Play("attack");
            }
            else if (isJumping && !_renderer.AnimationController.IsAnimationPlaying("attack"))
            {
                _renderer.AnimationController.Play("jump");
            }
            else if (Math.Abs(_player.VelocityX) > 0.1f && !_renderer.AnimationController.IsAnimationPlaying("attack"))
            {
                _renderer.AnimationController.Play("walk");
            }
            else if (!_renderer.AnimationController.IsAnimationPlaying("attack"))
            {
                _renderer.AnimationController.Play("idle");
            }

            _renderer.Update(deltaTime);
        }

        public void Draw(SpriteBatch spriteBatch, Vector2 position)
        {
            _renderer.Draw(spriteBatch, position);
        }
    }

    /// <summary>
    /// Manages sprite rendering for enemies
    /// </summary>
    public class EnemyRenderer
    {
        private SpriteRenderer _renderer;
        private Enemy _enemy;

        public EnemyRenderer(Enemy enemy = null)
        {
            _enemy = enemy;
            _renderer = new SpriteRenderer();
        }

        public void InitializeAnimations(SpriteSheet spriteSheet, int startRow)
        {
            // Idle/patrol animation
            var idleFrames = spriteSheet.GetSpritesInRegion(0, startRow, 4, 1);
            _renderer.AnimationController.AddAnimation("idle", idleFrames, 0.15f, true);

            // Attack animation
            var attackFrames = spriteSheet.GetSpritesInRegion(0, startRow + 1, 4, 1);
            _renderer.AnimationController.AddAnimation("attack", attackFrames, 0.1f, false);

            _renderer.AnimationController.Play("idle");
        }

        public void Update(float deltaTime, bool isAttacking)
        {
            if (isAttacking && !_renderer.AnimationController.IsAnimationPlaying("attack"))
            {
                _renderer.AnimationController.Play("attack");
            }
            else if (!_renderer.AnimationController.IsAnimationPlaying("attack"))
            {
                _renderer.AnimationController.Play("idle");
            }

            _renderer.Update(deltaTime);
        }

        public void Draw(SpriteBatch spriteBatch, Vector2 position)
        {
            _renderer.Draw(spriteBatch, position);
        }
    }
}
