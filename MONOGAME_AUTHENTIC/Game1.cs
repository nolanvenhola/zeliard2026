using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.IO;
using ZeliardAuthentic.Core;
using ZeliardAuthentic.Input;
using ZeliardAuthentic.Scenes;
using ZeliardAuthentic.UI;

namespace ZeliardAuthentic
{
    public class Game1 : Game
    {
        private GraphicsDeviceManager _graphics;
        private SpriteBatch _spriteBatch;

        // DOS rendering
        private DOSScreen _dosScreen;
        private SpriteExtractor _spriteExtractor;

        // Core systems
        private SaveManager _saveManager;
        private InputManager _input;
        private GameStateManager _stateManager;

        private const int SCALE_FACTOR = 3; // 960x600 window

        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;

            _graphics.PreferredBackBufferWidth = DOSScreen.WIDTH * SCALE_FACTOR;
            _graphics.PreferredBackBufferHeight = DOSScreen.HEIGHT * SCALE_FACTOR;
        }

        protected override void Initialize()
        {
            _saveManager = new SaveManager("Saved");
            _input = new InputManager();
            _stateManager = new GameStateManager();

            Console.WriteLine("===========================================");
            Console.WriteLine("  Zeliard Authentic - MonoGame Port");
            Console.WriteLine("  Phase 3: Game State Machine");
            Console.WriteLine("===========================================");
            Console.WriteLine();
            Console.WriteLine($"Window: {_graphics.PreferredBackBufferWidth}x{_graphics.PreferredBackBufferHeight}");
            Console.WriteLine($"DOS Buffer: {DOSScreen.WIDTH}x{DOSScreen.HEIGHT} (scaled {SCALE_FACTOR}x)");
            Console.WriteLine($"Palette: {DOSPalette.MCGA.Length}-color MCGA (3x3x3 RGB cube)");
            Console.WriteLine();
            Console.WriteLine("Controls:");
            Console.WriteLine("  ENTER     - Advance/select");
            Console.WriteLine("  Arrow Keys - Navigate");
            Console.WriteLine("  SPACE     - Attack/confirm");
            Console.WriteLine("  ESC       - Pause/back");
            Console.WriteLine();

            base.Initialize();
        }

        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);
            _dosScreen = new DOSScreen(GraphicsDevice);
            _spriteExtractor = new SpriteExtractor(GraphicsDevice);

            // Register state handlers
            _stateManager.RegisterHandler(GameState.Opening,
                new OpeningScene(_input, GraphicsDevice));
            _stateManager.RegisterHandler(GameState.Title,
                new TitleScreen(_input, GraphicsDevice));
            _stateManager.RegisterHandler(GameState.Playing,
                new PlayingState(_input, GraphicsDevice));

            // Chunk explorer (debug) — reuses Inventory state slot
            var chunkPaths = BuildDataChunkList();
            if (chunkPaths.Length > 0)
            {
                _stateManager.RegisterHandler(GameState.Inventory,
                    new ChunkExplorer(_input, GraphicsDevice, chunkPaths));
            }

            // Start with opening scene
            _stateManager.SetInitialState(GameState.Opening);

            Console.WriteLine($"State: {_stateManager.CurrentState}");
        }

        protected override void Update(GameTime gameTime)
        {
            _input.Update();

            // Global hotkeys that work in any state
            if (_input.IsKeyPressed(Keys.F1))
            {
                Console.WriteLine("\n=== Running Save/Load Tests ===\n");
                Tests.SaveLoadTest.Main(new string[0]);
            }

            // F2 = chunk explorer (debug)
            if (_input.IsKeyPressed(Keys.F2))
            {
                _stateManager.TransitionTo(GameState.Inventory);
            }

            // Delegate to current state
            _stateManager.Update(gameTime);

            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            // Render to DOS-resolution buffer
            _dosScreen.BeginFrame();

            _spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp);

            // Delegate to current state
            _stateManager.Draw(_spriteBatch);

            _spriteBatch.End();

            // Scale up to window
            _dosScreen.EndFrame(_spriteBatch);

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

        private string[] BuildDataChunkList()
        {
            var paths = new System.Collections.Generic.List<string>();
            string baseDir = FindChunksDirectory();
            if (baseDir == null) return new string[0];

            string[] archives = { "zelres1_extracted", "zelres2_extracted", "zelres3_extracted" };
            foreach (string archive in archives)
            {
                string dir = Path.Combine(baseDir, archive);
                if (Directory.Exists(dir))
                {
                    string[] files = Directory.GetFiles(dir, "*.bin");
                    Array.Sort(files);
                    paths.AddRange(files);
                }
            }

            // Add DOSBox VGA framebuffer dumps if they exist
            string dumpDir = @"c:\Projects\Zeliard\DOSBOX DUMPS";
            if (Directory.Exists(dumpDir))
            {
                string[] dumps = Directory.GetFiles(dumpDir, "*.BIN");
                Array.Sort(dumps);
                paths.AddRange(dumps);
            }

            Console.WriteLine($"Found {paths.Count} chunk files for explorer.");
            return paths.ToArray();
        }

        private string FindChunksDirectory()
        {
            string dir = AppDomain.CurrentDomain.BaseDirectory;
            for (int i = 0; i < 8; i++)
            {
                string candidate = Path.Combine(dir, "2_EXTRACTED_CHUNKS");
                if (Directory.Exists(candidate)) return candidate;
                string parent = Path.GetDirectoryName(dir);
                if (parent == null || parent == dir) break;
                dir = parent;
            }
            string abs = @"c:\Projects\Zeliard\2_EXTRACTED_CHUNKS";
            return Directory.Exists(abs) ? abs : null;
        }
    }
}
