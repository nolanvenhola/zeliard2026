using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;
using ZeliardAuthentic.Animation;
using ZeliardAuthentic.Combat;
using ZeliardAuthentic.Entities;
using ZeliardAuthentic.Entities.Enemies;
using ZeliardAuthentic.Input;
using ZeliardAuthentic.Physics;
using ZeliardAuthentic.Rendering;

namespace ZeliardAuthentic
{
    public class Game1 : Game
    {
        private GraphicsDeviceManager _graphics;
        private SpriteBatch? _spriteBatch;
        private DOSScreen? _dosScreen;
        private Texture2D? _pixel; // 1×1 white pixel for debug rendering

        // Phase 1: Core systems
        private Player? _player;
        private PlayerController? _playerController;
        private InputManager? _input;
        private Camera? _camera;

        // Phase 2: Physics
        private PhysicsEngine? _physics;
        private CollisionMap? _collisionMap;

        // Phase 3: Animation
        private PlayerAnimator? _animator;

        // Phase 4: Combat
        private CombatSystem? _combatSystem;

        // Phase 5: Enemies
        private EnemyManager? _enemyManager;

        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;

            // 320×200 DOS resolution scaled 3× = 960×600 window
            _graphics.PreferredBackBufferWidth = 960;
            _graphics.PreferredBackBufferHeight = 600;
        }

        protected override void Initialize()
        {
            _player = new Player();
            _playerController = new PlayerController();
            _input = new InputManager();
            _camera = new Camera();
            _physics = new PhysicsEngine();
            _collisionMap = CollisionMap.CreateTestLevel();
            _animator = new PlayerAnimator();
            _combatSystem = new CombatSystem();
            _enemyManager = new EnemyManager();

            base.Initialize();
        }

        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);
            _dosScreen = new DOSScreen(GraphicsDevice);

            // Create 1×1 white pixel for debug rendering
            _pixel = new Texture2D(GraphicsDevice, 1, 1);
            _pixel.SetData(new[] { Color.White });

            _player?.LoadContent(GraphicsDevice);

            // Spawn test enemies (Phase 5)
            _enemyManager?.AddEnemy(new Slime(100, 170, GraphicsDevice)); // On floor, left side
            _enemyManager?.AddEnemy(new Slime(220, 170, GraphicsDevice)); // On floor, right side
            _enemyManager?.AddEnemy(new Bat(150, 80, GraphicsDevice));    // Flying in air
        }

        protected override void Update(GameTime gameTime)
        {
            _input?.Update();

            if (_input?.IsPressed(GameAction.Cancel) == true)
                Exit();

            // Process input → player movement
            _playerController?.ProcessInput(_input, _player!);

            // Apply physics (gravity, collisions)
            _physics?.Update(_player!, _collisionMap!);

            _player?.Update(gameTime);

            // Update animation state based on player movement
            _animator?.Update(gameTime, _player!);

            // Update enemies
            _enemyManager?.Update(_player!, gameTime);

            // Update combat (player attacks enemies, enemies attack player)
            _combatSystem?.Update(_player!, _enemyManager?.GetActiveEnemies()!);

            // Camera follows player (level is 320×208 - same as screen size, so camera stays at origin)
            _camera?.Follow(_player!, 320, 208);

            // Debug output (first frame only)
            if (gameTime.TotalGameTime.TotalSeconds < 0.1)
            {
                System.Console.WriteLine($"Camera pos: {_camera?.Position}");
                System.Console.WriteLine($"Player pos: ({_player?.X}, {_player?.Y})");
                System.Console.WriteLine($"Player velocity: ({_player?.VelocityX}, {_player?.VelocityY})");
                System.Console.WriteLine($"Player OnGround: {_player?.OnGround}");
                System.Console.WriteLine($"Animation: {_animator?.CurrentState} (frame {_animator?.CurrentFrame})");
                System.Console.WriteLine($"Player HP: {_player?.Stats.CurrentHP}/{_player?.Stats.MaxHP}");
                System.Console.WriteLine($"Player Attack: {_player?.Stats.TotalAttack} (base {_player?.Stats.BaseAttack} + level bonus {_player?.Stats.Level / 2})");
            }

            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            // Step 1: Render to 320×200 DOS buffer
            _dosScreen?.BeginFrame();

            _spriteBatch?.Begin(
                transformMatrix: _camera?.GetTransformMatrix(),
                samplerState: SamplerState.PointClamp
            );

            // Draw collision map (debug)
            _collisionMap?.DebugDraw(_spriteBatch!, _pixel!);

            // Draw enemies
            _enemyManager?.Draw(_spriteBatch!);

            // Draw player
            _player?.Draw(_spriteBatch!);

            _spriteBatch?.End();

            // Step 2: Scale DOS buffer up to fill 960×600 window
            _dosScreen?.EndFrame(_spriteBatch!);

            base.Draw(gameTime);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _dosScreen?.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
