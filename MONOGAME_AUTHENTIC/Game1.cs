using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardAuthentic.Entities;
using ZeliardAuthentic.Input;
using ZeliardAuthentic.Rendering;

namespace ZeliardAuthentic
{
    public class Game1 : Game
    {
        private GraphicsDeviceManager _graphics;
        private SpriteBatch? _spriteBatch;

        // Phase 1: Core systems
        private Player? _player;
        private PlayerController? _playerController;
        private InputManager? _input;
        private Camera? _camera;

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

            System.Console.WriteLine("=== Phase 1: Player Entity ===");
            System.Console.WriteLine($"Player spawn: {_player.Position}");
            System.Console.WriteLine($"Level size: 640×400");
            System.Console.WriteLine($"Screen size: 320×200");
            System.Console.WriteLine($"Player at screen center: (160, 100) with origin at sprite center");
            System.Console.WriteLine();
            System.Console.WriteLine("Controls:");
            System.Console.WriteLine("  Arrow Keys - Move");
            System.Console.WriteLine("  SPACE - Jump (no gravity yet)");
            System.Console.WriteLine("  ESC - Exit");
            System.Console.WriteLine();
            System.Console.WriteLine("Look for: Blue rectangle with white marker showing direction");

            base.Initialize();
        }

        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);
            _player?.LoadContent(GraphicsDevice);
        }

        protected override void Update(GameTime gameTime)
        {
            _input?.Update();

            if (_input?.IsPressed(GameAction.Cancel) == true)
                Exit();

            // Process input → player movement
            _playerController?.ProcessInput(_input, _player!);
            _player?.Update(gameTime);

            // Camera follows player (temp level size: 640×400 - bigger than screen)
            _camera?.Follow(_player!, 640, 400);

            // Debug output (first frame only)
            if (gameTime.TotalGameTime.TotalSeconds < 0.1)
            {
                System.Console.WriteLine($"Camera pos: {_camera?.Position}");
                System.Console.WriteLine($"Player pos: {_player?.Position}");
                System.Console.WriteLine($"Player screen pos: ({_player?.Position.X - _camera?.Position.X}, {_player?.Position.Y - _camera?.Position.Y})");
            }

            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Black);

            // Draw game world with camera transform
            _spriteBatch?.Begin(
                transformMatrix: _camera?.GetTransformMatrix(),
                samplerState: SamplerState.PointClamp
            );

            _player?.Draw(_spriteBatch!);

            _spriteBatch?.End();

            base.Draw(gameTime);
        }
    }
}
