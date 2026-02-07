using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using ZeliardModern.Core;
using ZeliardModern.Systems;
using ZeliardModern.Graphics;
using ZeliardModern.Physics;
using ZeliardModern.UI;

namespace ZeliardModern.Examples
{
    /// <summary>
    /// Complete example showing all systems working together with actual assets
    /// This demonstrates a fully functional level with player, enemies, tilemap, and HUD
    /// </summary>
    public class CompleteGameExample : Game
    {
        private GraphicsDeviceManager _graphics;
        private SpriteBatch _spriteBatch;

        // Core systems
        private GameState _gameState;
        private ResourceManager _resourceManager;
        private Camera2D _camera;
        private HUDRenderer _hudRenderer;

        // Level
        private TileMap _tileMap;
        private EnemyManager _enemyManager;

        // Player rendering
        private PlayerRenderer _playerRenderer;

        // Input
        private KeyboardState _previousKeyState;
        private bool _isAttacking;
        private float _attackTimer;

        public CompleteGameExample()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";

            // Set resolution
            _graphics.PreferredBackBufferWidth = 1280;
            _graphics.PreferredBackBufferHeight = 720;
            IsMouseVisible = true;
        }

        protected override void Initialize()
        {
            _gameState = new GameState();
            _gameState.StartNewGame();

            _camera = new Camera2D(GraphicsDevice.Viewport);
            _camera.Zoom = 2.5f; // Zoom for pixel art

            _enemyManager = new EnemyManager();
            _previousKeyState = Keyboard.GetState();

            base.Initialize();
        }

        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);

            // Load all resources
            _resourceManager = new ResourceManager(Content);
            _resourceManager.LoadAll();

            // Set up player renderer with actual sprites
            _playerRenderer = new PlayerRenderer(_gameState.Player);
            _resourceManager.SetupPlayerAnimations(_playerRenderer.AnimationController);

            // Create a simple test level
            CreateTestLevel();

            // Set up HUD
            _hudRenderer = new HUDRenderer();
            _hudRenderer.LoadContent(GraphicsDevice, _resourceManager.GetTexture("HUD"));

            // Spawn some test enemies
            SpawnTestEnemies();
        }

        private void CreateTestLevel()
        {
            // Create a simple 200x50 tile level for testing
            int width = 200;
            int height = 50;
            int[,] tileData = new int[width, height];

            // Fill with air
            for (int x = 0; x < width; x++)
                for (int y = 0; y < height; y++)
                    tileData[x, y] = 0;

            // Create ground
            for (int x = 0; x < width; x++)
            {
                for (int y = 45; y < height; y++)
                {
                    tileData[x, y] = 1; // Solid tile
                }
            }

            // Create some platforms
            for (int x = 20; x < 35; x++)
                tileData[x, 40] = 1;

            for (int x = 50; x < 70; x++)
                tileData[x, 35] = 1;

            for (int x = 90; x < 110; x++)
                tileData[x, 30] = 1;

            // Create walls
            for (int y = 0; y < height; y++)
            {
                tileData[0, y] = 1;
                tileData[width - 1, y] = 1;
            }

            // Load tilemap with actual tileset
            _tileMap = _resourceManager.CreateTileMap(tileData, 16, 16);

            // Position player
            _gameState.Player.PhysicsBody.Position = new Vector2(100, 600);
        }

        private void SpawnTestEnemies()
        {
            // Spawn patrol enemies
            for (int i = 0; i < 5; i++)
            {
                var enemy = new Enemy($"Goblin {i + 1}", 30, 5, 50, 10);
                enemy.X = 300 + i * 200;
                enemy.Y = 680;
                _enemyManager.SpawnEnemy(enemy, AIBehavior.Patrol);
            }

            // Spawn flying enemies
            for (int i = 0; i < 3; i++)
            {
                var bat = new Enemy($"Bat {i + 1}", 15, 3, 30, 5);
                bat.X = 500 + i * 300;
                bat.Y = 400;
                _enemyManager.SpawnEnemy(bat, AIBehavior.Flying);
            }

            // Spawn a boss at the end
            var boss = Boss.CreateCangreo();
            boss.X = 3000;
            boss.Y = 680;
            _enemyManager.SpawnEnemy(boss, AIBehavior.Boss);
        }

        protected override void Update(GameTime gameTime)
        {
            float deltaTime = (float)gameTime.ElapsedGameTime.TotalSeconds;
            KeyboardState keyState = Keyboard.GetState();

            // Exit
            if (keyState.IsKeyDown(Keys.Escape))
                Exit();

            // Player movement
            HandlePlayerInput(keyState, deltaTime);

            // Update physics
            _gameState.Player.PhysicsBody.Update(deltaTime);
            CollisionSystem.ResolveCollisions(_gameState.Player.PhysicsBody, _tileMap);

            // Update player animation
            _playerRenderer.Update(deltaTime, _isAttacking, !_gameState.Player.PhysicsBody.IsGrounded);

            // Update attack timer
            if (_isAttacking)
            {
                _attackTimer -= deltaTime;
                if (_attackTimer <= 0)
                    _isAttacking = false;
            }

            // Update enemies
            _enemyManager.Update(deltaTime, _gameState.Player, _tileMap);

            // Check collisions with enemies
            HandleEnemyCollisions();

            // Camera follow player
            _camera.Follow(_gameState.Player.PhysicsBody.Position, 0.1f);
            _camera.ClampToBounds(new Rectangle(0, 0, _tileMap.WidthInPixels, _tileMap.HeightInPixels));

            // Cheat keys for testing
            HandleCheatKeys(keyState);

            _previousKeyState = keyState;
            base.Update(gameTime);
        }

        private void HandlePlayerInput(KeyboardState keyState, float deltaTime)
        {
            Player player = _gameState.Player;
            float moveSpeed = 200f;

            // Movement
            if (keyState.IsKeyDown(Keys.Left) || keyState.IsKeyDown(Keys.A))
            {
                player.PhysicsBody.Velocity = new Vector2(-moveSpeed, player.PhysicsBody.Velocity.Y);
            }
            else if (keyState.IsKeyDown(Keys.Right) || keyState.IsKeyDown(Keys.D))
            {
                player.PhysicsBody.Velocity = new Vector2(moveSpeed, player.PhysicsBody.Velocity.Y);
            }
            else
            {
                player.PhysicsBody.Velocity = new Vector2(0, player.PhysicsBody.Velocity.Y);
            }

            // Jump
            if (IsKeyPressed(keyState, Keys.Space) || IsKeyPressed(keyState, Keys.W))
            {
                player.PhysicsBody.Jump(400f);
            }

            // Attack
            if (IsKeyPressed(keyState, Keys.Z) || IsKeyPressed(keyState, Keys.J))
            {
                _isAttacking = true;
                _attackTimer = 0.3f;
            }
        }

        private void HandleEnemyCollisions()
        {
            var hitEnemy = _enemyManager.CheckPlayerCollision(_gameState.Player.PhysicsBody);

            if (hitEnemy != null)
            {
                if (_isAttacking)
                {
                    // Player attacks enemy
                    var result = CombatSystem.PlayerAttackEnemy(_gameState.Player, hitEnemy);
                    // In a full game, you'd show damage numbers, play sounds, etc.
                }
                else
                {
                    // Enemy damages player (with cooldown to prevent instant death)
                    // You'd implement invincibility frames here
                }
            }
        }

        private void HandleCheatKeys(KeyboardState keyState)
        {
            // Add XP
            if (IsKeyPressed(keyState, Keys.X))
            {
                _gameState.Player.AddExperience(100);
            }

            // Level up
            if (IsKeyPressed(keyState, Keys.L))
            {
                if (_gameState.Player.CanLevelUp())
                {
                    _gameState.Player.LevelUp();
                }
            }

            // Add gold
            if (IsKeyPressed(keyState, Keys.G))
            {
                _gameState.Player.Gold += 100;
            }

            // Heal
            if (IsKeyPressed(keyState, Keys.H))
            {
                _gameState.Player.Heal(50);
            }
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            // Draw game world with camera
            _spriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.AlphaBlend,
                SamplerState.PointClamp, // Pixel-perfect rendering
                null, null, null,
                _camera.GetTransformMatrix()
            );

            // Draw tilemap
            _tileMap.Draw(_spriteBatch, _camera);

            // Draw player
            _playerRenderer.Draw(_spriteBatch, _gameState.Player.PhysicsBody.Position);

            // Draw enemies (placeholder - in full game use EnemyRenderer)
            DrawEnemies(_spriteBatch);

            _spriteBatch.End();

            // Draw HUD (no camera transform)
            _spriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.AlphaBlend,
                SamplerState.LinearClamp
            );

            _hudRenderer.Draw(_spriteBatch, _gameState.Player,
                GraphicsDevice.Viewport.Width,
                GraphicsDevice.Viewport.Height);

            // Draw instructions
            DrawInstructions(_spriteBatch);

            _spriteBatch.End();

            base.Draw(gameTime);
        }

        private void DrawEnemies(SpriteBatch spriteBatch)
        {
            // In a full implementation, you'd use EnemyRenderer with actual sprites
            // For now, draw simple rectangles to show enemy positions

            var pixelTexture = new Texture2D(GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            foreach (var enemy in _enemyManager.GetEnemies())
            {
                Color enemyColor = enemy is Boss ? Color.Red : Color.Orange;

                spriteBatch.Draw(pixelTexture,
                    new Rectangle((int)enemy.X - 16, (int)enemy.Y - 16, 32, 32),
                    enemyColor);
            }
        }

        private void DrawInstructions(SpriteBatch spriteBatch)
        {
            string[] instructions = new string[]
            {
                "Controls:",
                "Arrow Keys / WASD - Move",
                "Space / W - Jump",
                "Z / J - Attack",
                "",
                "Cheats (for testing):",
                "X - Add XP",
                "L - Level Up",
                "G - Add Gold",
                "H - Heal",
                "",
                "ESC - Exit"
            };

            int y = GraphicsDevice.Viewport.Height - 220;
            // Instructions would use a font if one is loaded
            // For now they're just reference
        }

        private bool IsKeyPressed(KeyboardState currentState, Keys key)
        {
            return currentState.IsKeyDown(key) && _previousKeyState.IsKeyUp(key);
        }
    }
}
