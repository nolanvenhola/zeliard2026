using System.Linq;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using ZeliardModern.Core;
using ZeliardModern.Systems;
using ZeliardModern.Data;
using ZeliardModern.UI;
using ZeliardModern.Audio;

namespace ZeliardModern
{
    public class Game1 : Game
    {
        private GraphicsDeviceManager _graphics;
        private SpriteBatch _spriteBatch;
        private GameState _gameState;
        private GameProgress _gameProgress;
        private SpriteFont _font;

        // Save/Load System
        private SaveSystem _saveSystem;
        private AutoSaveManager _autoSaveManager;
        private SaveLoadMenu _saveLoadMenu;
        private bool _saveLoadMenuActive;

        // Rendering System
        private ResourceManager _resourceManager;
        private Graphics.Camera2D _camera;
        private Graphics.PlayerRenderer _playerRenderer;
        private Graphics.EnemyRenderer _enemyRenderer;
        private UI.HUDRenderer _hudRenderer;
        private Graphics.ParticleSystem _particleSystem;
        private Graphics.ScreenTransition _screenTransition;

        // Audio System
        private AudioSystem _audioSystem;
        private SoundManager _soundManager;

        // Polish Systems
        private Graphics.PolishEffects _polishEffects;
        private Town.BossIntro _bossIntro;

        // Map System
        private Graphics.TileMap _tileMap;
        private Texture2D _tilesetTexture;

        // Town Systems
        private Town.SageInterface _sageInterface;
        private bool _sageEntered; // Track if sage was entered this session
        private Town.Shop _currentShop;
        private Town.ShopUI _shopUI;
        private Town.TownManager _townManager;
        private Town.NPCDialogueInterface _npcDialogue;
        private Town.TownBackgroundRenderer _townBackgroundRenderer;
        private Town.OpeningCutscene _openingCutscene;
        private int _selectedNPCIndex;

        // Input state
        private KeyboardState _previousKeyState;

        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;

            // Set resolution (original was 320x200, we'll scale up)
            _graphics.PreferredBackBufferWidth = 1280;
            _graphics.PreferredBackBufferHeight = 800;
        }

        protected override void Initialize()
        {
            _gameState = new GameState();
            _gameProgress = new GameProgress();
            _previousKeyState = Keyboard.GetState();

            // Initialize save/load system
            _saveSystem = new SaveSystem();
            _autoSaveManager = new AutoSaveManager(_saveSystem);
            _autoSaveManager.Initialize(_gameState.Player);
            _saveLoadMenuActive = false;

            base.Initialize();
        }

        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);

            // Initialize resource manager and load all assets
            _resourceManager = new ResourceManager(Content);
            _resourceManager.LoadAll();

            // Initialize audio system
            _audioSystem = new AudioSystem();
            _soundManager = new SoundManager(_audioSystem);

            // Audio assets will be loaded by ResourceManager
            // Music and sounds are available through the Content pipeline

            // Initialize save/load menu with sound manager
            _saveLoadMenu = new SaveLoadMenu(_saveSystem, _soundManager);
            _saveLoadMenu.OnSaveSelected += OnSaveGame;
            _saveLoadMenu.OnLoadSelected += OnLoadGame;
            _saveLoadMenu.OnCancelled += () => { _saveLoadMenuActive = false; };

            // TODO: Start playing menu music once content is loaded
            // _audioSystem.PlayIntroMusic();

            // Initialize camera
            _camera = new Graphics.Camera2D
            {
                Position = new Vector2(640, 400), // Center of screen
                Zoom = 2.0f // 2x zoom for pixel art
            };

            // Initialize renderers
            _playerRenderer = new Graphics.PlayerRenderer(_gameState.Player);
            _enemyRenderer = new Graphics.EnemyRenderer();
            _hudRenderer = new UI.HUDRenderer();
            _hudRenderer.LoadContent(GraphicsDevice, null, null);
            _particleSystem = new Graphics.ParticleSystem(GraphicsDevice);
            _screenTransition = new Graphics.ScreenTransition(GraphicsDevice);
            _polishEffects = new Graphics.PolishEffects(GraphicsDevice);
            _bossIntro = new Town.BossIntro();

            // Initialize tilemap
            _tilesetTexture = Town.MapLoader.CreateTestTileset(GraphicsDevice, 16);

            // Try to load original Zeliard map, fallback to test map if it fails
            try
            {
                string sarPath = System.IO.Path.Combine(Content.RootDirectory, "zelres1.sar");
                if (System.IO.File.Exists(sarPath))
                {
                    // Load first map (file index 16 in zelres1.sar)
                    _tileMap = Town.ZeliardMapLoader.LoadFromSar(sarPath, 16, _tilesetTexture, 16);
                    System.Console.WriteLine($"Loaded original Zeliard map: {_tileMap.Width}x{_tileMap.Height} tiles");
                }
                else
                {
                    // Fallback to test map
                    _tileMap = Town.MapLoader.CreateTestMap(_tilesetTexture);
                    System.Console.WriteLine("Using test map (zelres1.sar not found)");
                }
            }
            catch (System.Exception ex)
            {
                System.Console.WriteLine($"Error loading map: {ex.Message}");
                // Fallback to test map
                _tileMap = Town.MapLoader.CreateTestMap(_tilesetTexture);
            }

            // Load player animations (assuming player sprite sheet is loaded)
            var playerSheet = _resourceManager.GetSpriteSheet("PlayerSword");
            if (playerSheet != null)
            {
                _playerRenderer.InitializeAnimations(playerSheet);
            }

            // Initialize town systems
            _sageInterface = new Town.SageInterface();
            _sageInterface.SoundManager = _soundManager;

            _shopUI = new Town.ShopUI();

            _npcDialogue = new Town.NPCDialogueInterface(GraphicsDevice);
            _npcDialogue.SoundManager = _soundManager;

            _townBackgroundRenderer = new Town.TownBackgroundRenderer(GraphicsDevice);

            // Initialize opening cutscene
            _openingCutscene = new Town.OpeningCutscene(GraphicsDevice);

            // Initialize town manager with all 8 towns
            _townManager = new Town.TownManager();
            _selectedNPCIndex = 0;

            // Start with fade in from black
            _screenTransition.SetBlack();
            _screenTransition.FadeIn(1.0f);

            // Load game font
            _font = Content.Load<SpriteFont>("Fonts/GameFont");
        }

        protected override void Update(GameTime gameTime)
        {
            KeyboardState keyState = Keyboard.GetState();

            // Exit game
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed ||
                keyState.IsKeyDown(Keys.Escape))
                Exit();

            // Update screen transition
            _screenTransition?.Update((float)gameTime.ElapsedGameTime.TotalSeconds);

            // Update save/load menu if active
            if (_saveLoadMenuActive)
            {
                _saveLoadMenu.Update();
                _previousKeyState = keyState;
                base.Update(gameTime);
                return;
            }

            // Handle different game screens
            switch (_gameState.CurrentScreen)
            {
                case GameScreen.OpeningCutscene:
                    UpdateOpeningCutscene(gameTime, keyState);
                    break;

                case GameScreen.MainMenu:
                    UpdateMainMenu(keyState);
                    break;

                case GameScreen.Playing:
                    UpdateGameplay(gameTime, keyState);
                    break;

                case GameScreen.Sage:
                    UpdateSage(gameTime, keyState);
                    break;

                case GameScreen.Shop:
                    UpdateShop(keyState);
                    break;

                case GameScreen.Town:
                    UpdateTown(keyState);
                    break;

                case GameScreen.NPCDialogue:
                    UpdateNPCDialogue(gameTime, keyState);
                    break;

                case GameScreen.Paused:
                    UpdatePaused(keyState);
                    break;

                case GameScreen.GameOver:
                    UpdateGameOver(keyState);
                    break;
            }

            _previousKeyState = keyState;
            base.Update(gameTime);
        }

        private void UpdateMainMenu(KeyboardState keyState)
        {
            if (IsKeyPressed(keyState, Keys.Enter))
            {
                // Start with opening cutscene
                _openingCutscene.Reset();
                _gameState.CurrentScreen = GameScreen.OpeningCutscene;
            }
        }

        private void UpdateOpeningCutscene(GameTime gameTime, KeyboardState keyState)
        {
            float deltaTime = (float)gameTime.ElapsedGameTime.TotalSeconds;

            // Update cutscene
            _openingCutscene.Update(deltaTime);

            // Allow skipping with Space or Enter
            if (IsKeyPressed(keyState, Keys.Space) || IsKeyPressed(keyState, Keys.Enter))
            {
                _openingCutscene.Skip();
            }

            // When cutscene completes, start the game
            if (_openingCutscene.IsComplete)
            {
                _gameState.StartNewGame();

                // Fade in from black
                _screenTransition?.FadeIn(1.0f);
            }
        }

        private void UpdateGameplay(GameTime gameTime, KeyboardState keyState)
        {
            float deltaTime = (float)gameTime.ElapsedGameTime.TotalSeconds;
            Player player = _gameState.Player;

            // Update camera shake
            _camera?.Update(deltaTime);

            // Update auto-save manager
            _autoSaveManager.Update(gameTime, player, _gameProgress);

            // Update particle system
            _particleSystem.Update(deltaTime);

            // Update polish effects
            _polishEffects.Update(deltaTime);

            // Update boss intro
            _bossIntro.Update(deltaTime);
            if (_bossIntro.IsActive && _bossIntro.IsSkippable && IsKeyPressed(keyState, Keys.Enter))
            {
                _bossIntro.Skip();
            }

            // Don't update gameplay if boss intro is active
            if (_bossIntro.IsActive)
            {
                _previousKeyState = keyState;
                return;
            }

            // Check if player died
            if (!player.IsAlive)
            {
                _gameState.GameOver();
                return;
            }

            // Player movement using PhysicsBody
            if (player.PhysicsBody != null)
            {
                float moveSpeed = 200f; // pixels per second

                // Horizontal movement
                var vel = player.PhysicsBody.Velocity;
                vel.X = 0;

                if (keyState.IsKeyDown(Keys.Left) || keyState.IsKeyDown(Keys.A))
                    vel.X = -moveSpeed;

                if (keyState.IsKeyDown(Keys.Right) || keyState.IsKeyDown(Keys.D))
                    vel.X = moveSpeed;

                player.PhysicsBody.Velocity = vel;

                // Jumping
                if ((IsKeyPressed(keyState, Keys.Up) || IsKeyPressed(keyState, Keys.W)) &&
                    (player.PhysicsBody.IsGrounded || player.PhysicsBody.IsOnPlatform))
                {
                    player.PhysicsBody.Jump(400f);
                    _soundManager?.PlaySound(SoundEffects.PLAYER_JUMP);
                }

                // Update physics
                player.PhysicsBody.Update(deltaTime);

                // Resolve tilemap collisions
                if (_tileMap != null)
                {
                    Physics.CollisionSystem.ResolveCollisions(player.PhysicsBody, _tileMap);
                }

                // Sync player position with physics body
                player.X = player.PhysicsBody.Position.X;
                player.Y = player.PhysicsBody.Position.Y;
            }
            else
            {
                // Fallback to simple movement if no physics body
                float moveSpeed = 200f;
                player.VelocityX = 0;

                if (keyState.IsKeyDown(Keys.Left) || keyState.IsKeyDown(Keys.A))
                    player.VelocityX = -moveSpeed;

                if (keyState.IsKeyDown(Keys.Right) || keyState.IsKeyDown(Keys.D))
                    player.VelocityX = moveSpeed;

                player.X += player.VelocityX * deltaTime;
                player.Y += player.VelocityY * deltaTime;
            }

            // Attack
            if (IsKeyPressed(keyState, Keys.Space) || IsKeyPressed(keyState, Keys.Z))
            {
                PerformPlayerAttack();
            }

            // Visit Sage (for testing)
            if (IsKeyPressed(keyState, Keys.S))
            {
                _gameState.VisitSage();
            }

            // Quick Save (F5)
            if (IsKeyPressed(keyState, Keys.F5))
            {
                OpenSaveMenu();
            }

            // Quick Load (F9)
            if (IsKeyPressed(keyState, Keys.F9))
            {
                OpenLoadMenu();
            }

            // Pause
            if (IsKeyPressed(keyState, Keys.P))
            {
                _gameState.CurrentScreen = GameScreen.Paused;
            }

            // Enter town (T key)
            if (IsKeyPressed(keyState, Keys.T))
            {
                _gameState.CurrentScreen = GameScreen.Town;
            }

            // Update enemies
            UpdateEnemies(gameTime);
        }

        private void UpdateEnemies(GameTime gameTime)
        {
            float deltaTime = (float)gameTime.ElapsedGameTime.TotalSeconds;
            Player player = _gameState.Player;

            foreach (var enemy in _gameState.ActiveEnemies.ToList())
            {
                // Initialize physics body if not already set
                if (enemy.PhysicsBody == null)
                {
                    enemy.PhysicsBody = new Physics.PhysicsBody(new Vector2(enemy.X, enemy.Y), 32, 32);
                    enemy.PhysicsBody.SoundManager = _soundManager;
                }

                // Initialize AI if not already set
                if (enemy.AI == null)
                {
                    // Determine AI behavior based on enemy type
                    AIBehavior behavior = enemy.IsBoss ? AIBehavior.Boss :
                                         enemy.CanFly ? AIBehavior.Flying :
                                         AIBehavior.Patrol;

                    enemy.AI = new EnemyAI(enemy, enemy.PhysicsBody, behavior);
                }

                // Update enemy AI
                enemy.AI.Update(deltaTime, player);

                // Update enemy physics
                enemy.PhysicsBody.Update(deltaTime);

                // Resolve tilemap collisions
                if (_tileMap != null)
                {
                    Physics.CollisionSystem.ResolveCollisions(enemy.PhysicsBody, _tileMap);
                }

                enemy.X = enemy.PhysicsBody.Position.X;
                enemy.Y = enemy.PhysicsBody.Position.Y;
            }
        }

        private void PerformPlayerAttack()
        {
            // Simple attack - check if any enemy is in range
            Player player = _gameState.Player;
            float attackRange = 50f;

            // Play sword swing sound
            _soundManager?.PlaySound(SoundEffects.SWORD_SWING);

            foreach (Enemy enemy in _gameState.ActiveEnemies.ToList())
            {
                float distance = Vector2.Distance(
                    new Vector2(player.X, player.Y),
                    new Vector2(enemy.X, enemy.Y)
                );

                if (distance < attackRange)
                {
                    CombatResult result = CombatSystem.PlayerAttackEnemy(player, enemy);

                    // Play hit sound and create hit effect
                    _soundManager?.PlaySound(SoundEffects.PLAYER_SWORD_HIT);
                    _particleSystem.CreateHitEffect(new Vector2(enemy.X, enemy.Y));
                    _polishEffects.ShowDamageNumber(result.Damage, new Vector2(enemy.X, enemy.Y - 20), Color.Yellow);

                    if (result.TargetDefeated)
                    {
                        // Play death sound and create explosion effect
                        _soundManager?.PlaySound(SoundEffects.ENEMY_DEATH);
                        _particleSystem.CreateExplosion(new Vector2(enemy.X, enemy.Y), Color.Red);
                        _gameState.ActiveEnemies.Remove(enemy);
                    }
                }
            }
        }

        private void UpdateSage(GameTime gameTime, KeyboardState keyState)
        {
            // Initialize sage interaction if just entered
            if (!_sageEntered)
            {
                _sageInterface.Enter(_gameState.Player);
                _sageEntered = true;
            }

            // Update sage interface with delta time
            float deltaTime = (float)gameTime.ElapsedGameTime.TotalSeconds;
            _sageInterface.Update(deltaTime);

            // Advance dialogue on key press
            if (IsKeyPressed(keyState, Keys.Enter) || IsKeyPressed(keyState, Keys.Space))
            {
                _sageInterface.AdvanceDialogue();
                _soundManager?.PlaySound(SoundEffects.DIALOGUE_ADVANCE);
            }

            // Check if sage interaction is complete
            if (_sageInterface.IsComplete || IsKeyPressed(keyState, Keys.Escape))
            {
                _sageEntered = false; // Reset for next visit
                _gameState.CurrentScreen = GameScreen.Playing;
                _soundManager?.PlaySound(SoundEffects.MENU_BACK);
            }
        }

        private void UpdateShop(KeyboardState keyState)
        {
            // Initialize shop if just entered
            if (_currentShop == null)
            {
                // Create a default shop (Muralla shop)
                _currentShop = Town.Shop.CreateMurallaShop();
                _shopUI.OpenShop(_currentShop, _gameState.Player);
            }

            // Handle navigation
            if (IsKeyPressed(keyState, Keys.Up))
            {
                _shopUI.SelectPrevious();
                _soundManager?.PlaySound(SoundEffects.MENU_MOVE);
            }
            else if (IsKeyPressed(keyState, Keys.Down))
            {
                _shopUI.SelectNext();
                _soundManager?.PlaySound(SoundEffects.MENU_MOVE);
            }

            // Handle purchase
            if (IsKeyPressed(keyState, Keys.Enter))
            {
                bool success = _shopUI.PurchaseSelected();
                if (success)
                {
                    _soundManager?.PlaySound(SoundEffects.MENU_SELECT);
                }
                else
                {
                    // Not enough gold or invalid item
                    _soundManager?.PlaySound(SoundEffects.MENU_BACK);
                }
            }

            // Exit shop
            if (IsKeyPressed(keyState, Keys.Escape))
            {
                _currentShop = null; // Reset shop for next visit
                _gameState.CurrentScreen = GameScreen.Playing;
                _soundManager?.PlaySound(SoundEffects.MENU_BACK);
            }
        }

        private void UpdateTown(KeyboardState keyState)
        {
            var currentTown = _townManager.CurrentTown;

            // Town navigation (Left/Right to switch towns)
            if (IsKeyPressed(keyState, Keys.Left))
            {
                // Previous town (with wrap around)
                int currentIndex = _gameState.CurrentArea - 1;
                int newIndex = currentIndex - 1;
                if (newIndex < 0) newIndex = 7; // Wrap to last town
                _townManager.EnterTown(newIndex);
                _gameState.CurrentArea = newIndex + 1;
                _selectedNPCIndex = 0; // Reset NPC selection
                _soundManager?.PlaySound(SoundEffects.MENU_MOVE);
            }
            else if (IsKeyPressed(keyState, Keys.Right))
            {
                // Next town (with wrap around)
                int currentIndex = _gameState.CurrentArea - 1;
                int newIndex = (currentIndex + 1) % 8;
                _townManager.EnterTown(newIndex);
                _gameState.CurrentArea = newIndex + 1;
                _selectedNPCIndex = 0; // Reset NPC selection
                _soundManager?.PlaySound(SoundEffects.MENU_MOVE);
            }
            else if (IsKeyPressed(keyState, Keys.S))
            {
                // Enter shop
                if (currentTown.Shop != null)
                {
                    _currentShop = currentTown.Shop;
                    _gameState.CurrentScreen = GameScreen.Shop;
                    _soundManager?.PlaySound(SoundEffects.MENU_SELECT);
                }
            }
            else if (IsKeyPressed(keyState, Keys.A))
            {
                // Visit Sage
                if (currentTown.HasSage)
                {
                    _gameState.CurrentScreen = GameScreen.Sage;
                    _soundManager?.PlaySound(SoundEffects.MENU_SELECT);
                }
            }
            else if (IsKeyPressed(keyState, Keys.N))
            {
                // Cycle through NPCs
                if (currentTown.NPCs.Count > 0)
                {
                    _selectedNPCIndex = (_selectedNPCIndex + 1) % currentTown.NPCs.Count;
                    _soundManager?.PlaySound(SoundEffects.MENU_MOVE);
                }
            }
            else if (IsKeyPressed(keyState, Keys.Enter))
            {
                // Talk to selected NPC
                if (currentTown.NPCs.Count > 0)
                {
                    var npc = currentTown.NPCs[_selectedNPCIndex];
                    _npcDialogue.StartConversation(npc, _gameState.Player);
                    _gameState.CurrentScreen = GameScreen.NPCDialogue;
                    _soundManager?.PlaySound(SoundEffects.MENU_SELECT);
                }
            }
            else if (IsKeyPressed(keyState, Keys.Escape))
            {
                // Return to game
                _gameState.CurrentScreen = GameScreen.Playing;
                _soundManager?.PlaySound(SoundEffects.MENU_BACK);
            }
        }

        private void UpdateNPCDialogue(GameTime gameTime, KeyboardState keyState)
        {
            // Update dialogue system
            float deltaTime = (float)gameTime.ElapsedGameTime.TotalSeconds;
            _npcDialogue.Update(deltaTime);

            // Advance dialogue on key press
            if (IsKeyPressed(keyState, Keys.Enter) || IsKeyPressed(keyState, Keys.Space))
            {
                bool hasMore = _npcDialogue.AdvanceDialogue();
                if (!hasMore)
                {
                    // Conversation complete, return to town
                    _gameState.CurrentScreen = GameScreen.Town;
                }
            }

            // Skip dialogue
            if (IsKeyPressed(keyState, Keys.Escape))
            {
                _gameState.CurrentScreen = GameScreen.Town;
                _soundManager?.PlaySound(SoundEffects.MENU_BACK);
            }
        }

        private void UpdatePaused(KeyboardState keyState)
        {
            if (IsKeyPressed(keyState, Keys.P) || IsKeyPressed(keyState, Keys.Escape))
            {
                _gameState.CurrentScreen = GameScreen.Playing;
            }

            // Quick Save (F5)
            if (IsKeyPressed(keyState, Keys.F5))
            {
                OpenSaveMenu();
            }

            // Quick Load (F9)
            if (IsKeyPressed(keyState, Keys.F9))
            {
                OpenLoadMenu();
            }
        }

        private void UpdateGameOver(KeyboardState keyState)
        {
            if (IsKeyPressed(keyState, Keys.Enter))
            {
                _gameState.StartNewGame();
            }
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Black);

            _spriteBatch.Begin();

            // Draw different screens
            switch (_gameState.CurrentScreen)
            {
                case GameScreen.OpeningCutscene:
                    DrawOpeningCutscene();
                    break;

                case GameScreen.MainMenu:
                    DrawMainMenu();
                    break;

                case GameScreen.Playing:
                    DrawGameplay();
                    break;

                case GameScreen.Sage:
                    DrawSage();
                    break;

                case GameScreen.Shop:
                    DrawShop();
                    break;

                case GameScreen.Town:
                    DrawTown();
                    break;

                case GameScreen.NPCDialogue:
                    DrawNPCDialogue();
                    break;

                case GameScreen.Paused:
                    DrawPaused();
                    break;

                case GameScreen.GameOver:
                    DrawGameOver();
                    break;
            }

            // Draw save/load menu if active
            if (_saveLoadMenuActive && _font != null)
            {
                _saveLoadMenu.Draw(_spriteBatch, _font, _graphics.PreferredBackBufferWidth, _graphics.PreferredBackBufferHeight);
            }

            // Draw auto-save notification
            if (_autoSaveManager.ShowingSaveNotification && _font != null)
            {
                string notificationText = "Auto-Saving...";
                Microsoft.Xna.Framework.Vector2 textSize = _font.MeasureString(notificationText);
                Microsoft.Xna.Framework.Vector2 position = new Microsoft.Xna.Framework.Vector2(
                    _graphics.PreferredBackBufferWidth - textSize.X - 20,
                    20
                );
                _spriteBatch.DrawString(_font, notificationText, position, Color.Yellow);
            }

            // Draw screen transition overlay (must be last)
            _screenTransition?.Draw(_spriteBatch, _graphics.PreferredBackBufferWidth, _graphics.PreferredBackBufferHeight);

            _spriteBatch.End();

            base.Draw(gameTime);
        }

        private void DrawMainMenu()
        {
            // Draw title
            string title = "ZELIARD";
            if (_font != null)
            {
                Vector2 titleSize = _font.MeasureString(title);
                Vector2 titlePos = new Vector2(
                    (_graphics.PreferredBackBufferWidth - titleSize.X) / 2,
                    150
                );
                _spriteBatch.DrawString(_font, title, titlePos, Color.Yellow, 0f, Vector2.Zero, 2.0f, SpriteEffects.None, 0f);
            }

            // Draw instructions
            string instructions = "Press ENTER to start\nF5: Save  F9: Load  ESC: Exit";
            if (_font != null)
            {
                Vector2 instructionsSize = _font.MeasureString(instructions);
                Vector2 instructionsPos = new Vector2(
                    (_graphics.PreferredBackBufferWidth - instructionsSize.X) / 2,
                    400
                );
                _spriteBatch.DrawString(_font, instructions, instructionsPos, Color.White);
            }
        }

        private void DrawOpeningCutscene()
        {
            if (_openingCutscene != null && _font != null)
            {
                _openingCutscene.Draw(_spriteBatch, _font,
                    _graphics.PreferredBackBufferWidth,
                    _graphics.PreferredBackBufferHeight);
            }
        }

        private void DrawGameplay()
        {
            Player player = _gameState.Player;

            // Update camera to follow player
            if (player.PhysicsBody != null)
            {
                _camera.Follow(player.PhysicsBody.Position, 0.1f);
            }

            // LAYER 1: World rendering (with camera transform)
            _spriteBatch.End(); // End the previous Begin() from Draw()

            _spriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.AlphaBlend,
                SamplerState.PointClamp, // Pixel-perfect rendering
                null,
                null,
                null,
                _camera.GetTransformMatrix()
            );

            // Draw tilemap
            _tileMap?.Draw(_spriteBatch, _camera);

            // Draw player
            if (player.PhysicsBody != null)
            {
                _playerRenderer.Draw(_spriteBatch, player.PhysicsBody.Position);
            }

            // Draw enemies
            foreach (var enemy in _gameState.ActiveEnemies)
            {
                _enemyRenderer.Draw(_spriteBatch, new Vector2(enemy.X, enemy.Y));
            }

            // Draw particles (in world space)
            _particleSystem.Draw(_spriteBatch);

            // Draw polish effects (in world space) - damage numbers need font
            if (_font != null)
            {
                _polishEffects.Draw(_spriteBatch, _font);
            }

            _spriteBatch.End();

            // LAYER 2: HUD rendering (screen-space, no camera)
            _spriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.AlphaBlend,
                SamplerState.LinearClamp // Standard filtering for UI/text
            );

            // Draw HUD
            _hudRenderer.Draw(_spriteBatch, player, _graphics.PreferredBackBufferWidth, _graphics.PreferredBackBufferHeight);

            // Draw boss intro overlay (if active)
            if (_bossIntro.IsActive && _font != null)
            {
                _bossIntro.Draw(_spriteBatch, _font, _graphics.PreferredBackBufferWidth, _graphics.PreferredBackBufferHeight);
            }
        }

        private void DrawHUD()
        {
            Player player = _gameState.Player;

            // Placeholder text rendering
            // TODO: Create proper HUD with health bar, experience bar, etc.
            string statsText = $"Level: {player.Level}  HP: {player.Health}/{player.MaxHealth}  " +
                             $"EXP: {player.Experience}/{player.GetRequiredExperienceForNextLevel()}  " +
                             $"Gold: {player.Gold}  DMG: {player.GetAttackDamage()}";
        }

        private void DrawSage()
        {
            // Draw sage interface (dialogue and UI)
            if (_font != null)
            {
                _sageInterface.Draw(_spriteBatch, _font,
                    _graphics.PreferredBackBufferWidth,
                    _graphics.PreferredBackBufferHeight);
            }
            else
            {
                // Fallback text rendering if font not loaded
                // Show basic sage info
                // TODO: Remove once font is loaded
            }
        }

        private void DrawShop()
        {
            // Draw shop interface
            if (_font != null)
            {
                _shopUI.Draw(_spriteBatch, _font,
                    _graphics.PreferredBackBufferWidth,
                    _graphics.PreferredBackBufferHeight);
            }
            else
            {
                // Fallback text rendering if font not loaded
                // TODO: Remove once font is loaded
            }
        }

        private void DrawTown()
        {
            // Town menu with NPC list and navigation
            if (_font != null && _townManager != null)
            {
                var currentTown = _townManager.CurrentTown;
                int centerX = _graphics.PreferredBackBufferWidth / 2;
                int centerY = _graphics.PreferredBackBufferHeight / 2;

                // Draw themed background
                _townBackgroundRenderer.DrawTownBackground(_spriteBatch,
                    currentTown.AreaLevel,
                    _graphics.PreferredBackBufferWidth,
                    _graphics.PreferredBackBufferHeight);

                // Draw town navigation
                int townIndex = _gameState.CurrentArea - 1;
                string navText = $"< Town {townIndex + 1}/8: {currentTown.Name} >";
                Microsoft.Xna.Framework.Vector2 navSize = _font.MeasureString(navText);
                _spriteBatch.DrawString(_font, navText,
                    new Microsoft.Xna.Framework.Vector2(centerX - navSize.X / 2, 30),
                    Color.Cyan);

                // Draw town description
                Microsoft.Xna.Framework.Vector2 descSize = _font.MeasureString(currentTown.Description);
                _spriteBatch.DrawString(_font, currentTown.Description,
                    new Microsoft.Xna.Framework.Vector2(centerX - descSize.X / 2, 60),
                    Color.Gray, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);

                // Draw options
                _spriteBatch.DrawString(_font, "[S] Visit Shop",
                    new Microsoft.Xna.Framework.Vector2(50, centerY - 50), Color.Yellow);
                _spriteBatch.DrawString(_font, "[A] Visit Sage",
                    new Microsoft.Xna.Framework.Vector2(50, centerY - 20), Color.Yellow);

                // Draw NPCs
                _spriteBatch.DrawString(_font, "Talk to NPCs:",
                    new Microsoft.Xna.Framework.Vector2(50, centerY + 30), Color.Cyan);

                for (int i = 0; i < currentTown.NPCs.Count; i++)
                {
                    var npc = currentTown.NPCs[i];

                    // Use NPC's sprite color if selected, otherwise dimmed version
                    Color npcColor = i == _selectedNPCIndex ?
                        npc.SpriteColor :
                        npc.SpriteColor * 0.6f;

                    string npcText = i == _selectedNPCIndex ? $"> {npc.Name}" : $"  {npc.Name}";

                    // Add role indicator
                    if (!string.IsNullOrEmpty(npc.Role) && npc.Role != "Villager")
                    {
                        npcText += $" [{npc.Role}]";
                    }

                    _spriteBatch.DrawString(_font, npcText,
                        new Microsoft.Xna.Framework.Vector2(70, centerY + 60 + i * 25), npcColor);
                }

                // Draw controls
                _spriteBatch.DrawString(_font, "[←→] Switch Town  [N] Next NPC  [Enter] Talk  [ESC] Leave",
                    new Microsoft.Xna.Framework.Vector2(centerX - 250, _graphics.PreferredBackBufferHeight - 50),
                    Color.Gray, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
            }
        }

        private void DrawNPCDialogue()
        {
            // Draw NPC dialogue interface
            if (_font != null)
            {
                _npcDialogue.Draw(_spriteBatch, _font,
                    _graphics.PreferredBackBufferWidth,
                    _graphics.PreferredBackBufferHeight);
            }
        }

        private void DrawPaused()
        {
            DrawGameplay(); // Draw game behind pause screen

            // Draw semi-transparent overlay
            var pixelTexture = new Texture2D(GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });
            _spriteBatch.Draw(pixelTexture,
                new Rectangle(0, 0, _graphics.PreferredBackBufferWidth, _graphics.PreferredBackBufferHeight),
                Color.Black * 0.5f);

            // Draw "PAUSED" text
            string pausedText = "PAUSED";
            if (_font != null)
            {
                Vector2 textSize = _font.MeasureString(pausedText);
                Vector2 textPos = new Vector2(
                    (_graphics.PreferredBackBufferWidth - textSize.X) / 2,
                    (_graphics.PreferredBackBufferHeight - textSize.Y) / 2
                );
                _spriteBatch.DrawString(_font, pausedText, textPos, Color.Yellow, 0f, Vector2.Zero, 1.5f, SpriteEffects.None, 0f);
            }

            // Draw instructions
            string instructions = "P or ESC: Resume  F5: Save  F9: Load";
            if (_font != null)
            {
                Vector2 instructionsSize = _font.MeasureString(instructions);
                Vector2 instructionsPos = new Vector2(
                    (_graphics.PreferredBackBufferWidth - instructionsSize.X) / 2,
                    _graphics.PreferredBackBufferHeight / 2 + 50
                );
                _spriteBatch.DrawString(_font, instructions, instructionsPos, Color.White, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
            }
        }

        private void DrawGameOver()
        {
            // Draw "GAME OVER" text
            string gameOverText = "GAME OVER";
            if (_font != null)
            {
                Vector2 textSize = _font.MeasureString(gameOverText);
                Vector2 textPos = new Vector2(
                    (_graphics.PreferredBackBufferWidth - textSize.X) / 2,
                    (_graphics.PreferredBackBufferHeight - textSize.Y) / 2
                );
                _spriteBatch.DrawString(_font, gameOverText, textPos, Color.Red, 0f, Vector2.Zero, 2.0f, SpriteEffects.None, 0f);
            }

            // Draw instructions
            string instructions = "Press ENTER to return to main menu";
            if (_font != null)
            {
                Vector2 instructionsSize = _font.MeasureString(instructions);
                Vector2 instructionsPos = new Vector2(
                    (_graphics.PreferredBackBufferWidth - instructionsSize.X) / 2,
                    _graphics.PreferredBackBufferHeight / 2 + 80
                );
                _spriteBatch.DrawString(_font, instructions, instructionsPos, Color.White);
            }
        }

        private bool IsKeyPressed(KeyboardState currentState, Keys key)
        {
            return currentState.IsKeyDown(key) && _previousKeyState.IsKeyUp(key);
        }

        // Save/Load Methods

        private void OnSaveGame(int slot)
        {
            // Update player's current area from game state
            _gameState.Player.CurrentArea = _gameState.CurrentArea;

            // Create save data
            SaveData saveData = new SaveData
            {
                SlotNumber = slot,
                SaveTime = System.DateTime.Now,
                PlayTime = _gameProgress.TotalPlayTime,
                Player = _gameState.Player.ToPlayerData(),
                Progress = _gameProgress.ToProgressData()
            };

            // Save the game
            bool success = _saveSystem.SaveGame(slot, saveData);

            if (success)
            {
                System.Console.WriteLine($"Game saved to slot {slot}");
            }
            else
            {
                System.Console.WriteLine($"Failed to save game to slot {slot}");
            }

            _saveLoadMenuActive = false;
        }

        private void OnLoadGame(int slot)
        {
            SaveData saveData = _saveSystem.LoadGame(slot);

            if (saveData != null)
            {
                // Restore player data
                _gameState.Player.FromPlayerData(saveData.Player);

                // Restore progress data
                _gameProgress.FromProgressData(saveData.Progress);
                _gameProgress.TotalPlayTime = saveData.PlayTime;

                // Restore game state
                _gameState.CurrentArea = saveData.Player.CurrentArea;

                // Reset auto-save timer
                _autoSaveManager.ResetTimer();
                _autoSaveManager.Initialize(_gameState.Player);

                // Start playing
                _gameState.CurrentScreen = GameScreen.Playing;

                System.Console.WriteLine($"Game loaded from slot {slot}");
            }
            else
            {
                System.Console.WriteLine($"Failed to load game from slot {slot}");
            }

            _saveLoadMenuActive = false;
        }

        private void OpenSaveMenu()
        {
            _saveLoadMenu.Open(SaveLoadMode.Save);
            _saveLoadMenuActive = true;
        }

        private void OpenLoadMenu()
        {
            _saveLoadMenu.Open(SaveLoadMode.Load);
            _saveLoadMenuActive = true;
        }
    }
}
