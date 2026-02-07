using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Graphics;
using ZeliardModern.Physics;
using ZeliardModern.Systems;

namespace ZeliardModern.Examples
{
    /// <summary>
    /// Example of how to set up a complete level with player, enemies, and tilemap
    /// </summary>
    public class LevelExample
    {
        private TileMap _tileMap;
        private Camera2D _camera;
        private Player _player;
        private PlayerRenderer _playerRenderer;
        private EnemyManager _enemyManager;

        public void Initialize(GraphicsDevice graphicsDevice)
        {
            // Create a simple level
            _tileMap = CreateSimpleLevel();

            // Create camera
            _camera = new Camera2D(graphicsDevice.Viewport);
            _camera.Zoom = 2.0f; // Pixel art zoom

            // Create player
            _player = new Player();
            _player.PhysicsBody.Position = new Vector2(100, 400);
            _playerRenderer = new PlayerRenderer(_player);

            // Create enemy manager and spawn enemies
            _enemyManager = new EnemyManager();
            SpawnEnemies();
        }

        private TileMap CreateSimpleLevel()
        {
            // Create a 200x100 tile level (3200x1600 pixels at 16x16 tiles)
            var tileMap = new TileMap(200, 100, 16, 16);

            // For this example, we'll create a simple platform level
            // In a real implementation, you'd load this from your extracted map files

            // Ground floor (y = 90-99)
            for (int x = 0; x < 200; x++)
            {
                for (int y = 90; y < 100; y++)
                {
                    tileMap.SetTile(x, y, 1); // Solid tile
                }
            }

            // Platforms
            CreatePlatform(tileMap, 20, 80, 10); // x=20, y=80, width=10
            CreatePlatform(tileMap, 40, 70, 15);
            CreatePlatform(tileMap, 70, 60, 12);
            CreatePlatform(tileMap, 100, 50, 20);

            // Walls
            CreateWall(tileMap, 0, 0, 100);  // Left wall
            CreateWall(tileMap, 199, 0, 100); // Right wall

            // Some floating platforms (one-way)
            for (int x = 120; x < 130; x++)
            {
                tileMap.SetTile(x, 75, 2); // Platform tile (one-way)
            }

            return tileMap;
        }

        private void CreatePlatform(TileMap tileMap, int startX, int y, int width)
        {
            for (int x = startX; x < startX + width; x++)
            {
                tileMap.SetTile(x, y, 1); // Solid tile
            }
        }

        private void CreateWall(TileMap tileMap, int x, int startY, int height)
        {
            for (int y = startY; y < startY + height; y++)
            {
                tileMap.SetTile(x, y, 1); // Solid tile
            }
        }

        private void SpawnEnemies()
        {
            // Spawn patrol enemies
            var goblin1 = new Enemy("Goblin", 30, 5, 50, 10);
            goblin1.X = 400;
            goblin1.Y = 1400;
            _enemyManager.SpawnEnemy(goblin1, AIBehavior.Patrol);

            var goblin2 = new Enemy("Goblin", 30, 5, 50, 10);
            goblin2.X = 800;
            goblin2.Y = 1400;
            _enemyManager.SpawnEnemy(goblin2, AIBehavior.Patrol);

            // Spawn flying enemy
            var bat = new Enemy("Bat", 15, 3, 30, 5);
            bat.X = 600;
            bat.Y = 1200;
            _enemyManager.SpawnEnemy(bat, AIBehavior.Flying);

            // Spawn chase enemy (more aggressive)
            var wolf = new Enemy("Wolf", 40, 8, 100, 15);
            wolf.X = 1200;
            wolf.Y = 1400;
            _enemyManager.SpawnEnemy(wolf, AIBehavior.Chase);

            // Spawn boss at end of level
            var boss = Boss.CreateCangreo();
            boss.X = 3000;
            boss.Y = 1400;
            _enemyManager.SpawnEnemy(boss, AIBehavior.Boss);
        }

        public void LoadSprites(GraphicsDevice graphicsDevice, Microsoft.Xna.Framework.Content.ContentManager content)
        {
            // Example of loading sprites from your extracted assets
            // Adjust paths based on where you place the files in Content/

            // Load tileset
            // var tilesetTexture = content.Load<Texture2D>("Tilesets/LabyrinthTiles");
            // var tileSheet = new SpriteSheet(tilesetTexture, 16, 16);

            // Create tile types
            // _tileMap.AddTileType(new Tile(0, null, false, false, "Air"));
            // _tileMap.AddTileType(new Tile(1, tileSheet.GetSprite(0), true, false, "Wall"));
            // _tileMap.AddTileType(new Tile(2, tileSheet.GetSprite(5), false, true, "Platform"));

            // Load player sprites
            // var playerTexture = content.Load<Texture2D>("Sprites/PlayerSheet");
            // var playerSheet = new SpriteSheet(playerTexture, 32, 48);
            // _playerRenderer.InitializeAnimations(playerSheet);

            // For now, create a simple colored rectangle as placeholder
            CreatePlaceholderSprites(graphicsDevice);
        }

        private void CreatePlaceholderSprites(GraphicsDevice graphicsDevice)
        {
            // Create simple colored textures as placeholders until real sprites are loaded
            var whitePixel = new Texture2D(graphicsDevice, 1, 1);
            whitePixel.SetData(new[] { Color.White });

            // Placeholder tile sprites
            var tileSprite = new Sprite(whitePixel, 0, 0, 16, 16);
            _tileMap.AddTileType(new Tile(0, null, false, false, "Air"));
            _tileMap.AddTileType(new Tile(1, tileSprite, true, false, "Wall"));
            _tileMap.AddTileType(new Tile(2, tileSprite, false, true, "Platform"));
        }

        public void Update(float deltaTime, bool[] input)
        {
            // input[0] = left, input[1] = right, input[2] = jump, input[3] = attack

            // Player movement
            float moveSpeed = 200f;
            if (input[0]) // Left
                _player.PhysicsBody.Velocity = new Vector2(-moveSpeed, _player.PhysicsBody.Velocity.Y);
            else if (input[1]) // Right
                _player.PhysicsBody.Velocity = new Vector2(moveSpeed, _player.PhysicsBody.Velocity.Y);
            else
                _player.PhysicsBody.Velocity = new Vector2(0, _player.PhysicsBody.Velocity.Y);

            // Jump
            if (input[2])
                _player.PhysicsBody.Jump(400f);

            // Update player physics
            _player.PhysicsBody.Update(deltaTime);
            CollisionSystem.ResolveCollisions(_player.PhysicsBody, _tileMap);

            // Update player animation
            _playerRenderer.Update(deltaTime, input[3], !_player.PhysicsBody.IsGrounded);

            // Update enemies
            _enemyManager.Update(deltaTime, _player, _tileMap);

            // Check player-enemy collisions
            var hitEnemy = _enemyManager.CheckPlayerCollision(_player.PhysicsBody);
            if (hitEnemy != null && input[3]) // If attacking
            {
                var result = CombatSystem.PlayerAttackEnemy(_player, hitEnemy);
                // Handle combat result
            }
            else if (hitEnemy != null)
            {
                // Player got hit
                var result = CombatSystem.EnemyAttackPlayer(hitEnemy, _player);
                // Handle damage
            }

            // Camera follows player
            _camera.Follow(_player.PhysicsBody.Position, 0.1f);
            _camera.ClampToBounds(new Rectangle(0, 0, _tileMap.WidthInPixels, _tileMap.HeightInPixels));
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            // Begin with camera transform and point clamp for pixel-perfect rendering
            spriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.AlphaBlend,
                SamplerState.PointClamp,
                null, null, null,
                _camera.GetTransformMatrix()
            );

            // Draw tilemap
            _tileMap.Draw(spriteBatch, _camera);

            // Draw player
            _playerRenderer.Draw(spriteBatch, _player.PhysicsBody.Position);

            // Draw enemies (placeholder - in real version, use EnemyRenderer)
            foreach (var enemy in _enemyManager.GetEnemies())
            {
                // Draw enemy sprite here
                // For now, just show position
            }

            spriteBatch.End();

            // Draw HUD (without camera transform)
            spriteBatch.Begin();
            DrawHUD(spriteBatch);
            spriteBatch.End();
        }

        private void DrawHUD(SpriteBatch spriteBatch)
        {
            // Draw player stats
            string stats = $"HP: {_player.Health}/{_player.MaxHealth}  " +
                          $"Lvl: {_player.Level}  " +
                          $"XP: {_player.Experience}/{_player.GetRequiredExperienceForNextLevel()}  " +
                          $"Gold: {_player.Gold}";

            // You'd draw this with a sprite font in the real implementation
            // spriteBatch.DrawString(font, stats, new Vector2(10, 10), Color.White);
        }
    }
}
