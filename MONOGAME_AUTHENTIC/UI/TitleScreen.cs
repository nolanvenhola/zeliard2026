using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardAuthentic.Core;
using ZeliardAuthentic.Input;

namespace ZeliardAuthentic.UI
{
    /// <summary>
    /// Title screen with game logo and menu options.
    /// New Game → starts NameEntry → Playing
    /// Load Game → loads save → Playing
    /// </summary>
    public class TitleScreen : IGameStateHandler
    {
        private InputManager _input;
        private Texture2D _pixel;
        private SpriteFont _font;
        private int _selectedOption;
        private float _blinkTimer;
        private bool _blinkOn;

        private static readonly string[] MenuOptions = { "NEW GAME", "LOAD GAME" };

        public TitleScreen(InputManager input, GraphicsDevice graphicsDevice)
        {
            _input = input;
            _pixel = new Texture2D(graphicsDevice, 1, 1);
            _pixel.SetData(new[] { Color.White });
        }

        public void SetFont(SpriteFont font)
        {
            _font = font;
        }

        public void Enter(GameStateManager manager)
        {
            _selectedOption = 0;
            _blinkTimer = 0f;
            _blinkOn = true;
        }

        public void Exit(GameStateManager manager)
        {
        }

        public void Update(GameTime gameTime, GameStateManager manager)
        {
            float dt = (float)gameTime.ElapsedGameTime.TotalSeconds;

            // Blink cursor
            _blinkTimer += dt;
            if (_blinkTimer >= 0.4f)
            {
                _blinkTimer -= 0.4f;
                _blinkOn = !_blinkOn;
            }

            // Navigate menu
            if (_input.IsPressed(GameAction.Down) || _input.IsPressed(GameAction.Right))
            {
                _selectedOption = (_selectedOption + 1) % MenuOptions.Length;
            }
            if (_input.IsPressed(GameAction.Up) || _input.IsPressed(GameAction.Left))
            {
                _selectedOption = (_selectedOption - 1 + MenuOptions.Length) % MenuOptions.Length;
            }

            // Select option
            if (_input.IsPressed(GameAction.Inventory) || _input.IsPressed(GameAction.Attack))
            {
                if (_selectedOption == 0)
                {
                    // New Game → go to Playing (skip name entry for now)
                    manager.TransitionTo(GameState.Playing);
                }
                else
                {
                    // Load Game → also go to Playing for now
                    manager.TransitionTo(GameState.Playing);
                }
            }
        }

        public void Draw(SpriteBatch spriteBatch, GameStateManager manager)
        {
            // Black background
            spriteBatch.Draw(_pixel,
                new Rectangle(0, 0, DOSScreen.WIDTH, DOSScreen.HEIGHT),
                Color.Black);

            // Title text area (centered)
            int centerX = DOSScreen.WIDTH / 2;

            if (_font != null)
            {
                // Draw "ZELIARD" title
                string title = "ZELIARD";
                Vector2 titleSize = _font.MeasureString(title);
                Vector2 titlePos = new Vector2(centerX - titleSize.X / 2, 40);
                spriteBatch.DrawString(_font, title, titlePos, DOSPalette.MCGA[24]); // Yellow

                // Draw menu options
                for (int i = 0; i < MenuOptions.Length; i++)
                {
                    string text = MenuOptions[i];
                    Vector2 size = _font.MeasureString(text);
                    Vector2 pos = new Vector2(centerX - size.X / 2, 120 + i * 20);

                    Color color = (i == _selectedOption && _blinkOn)
                        ? DOSPalette.MCGA[26]   // White (selected, blinking)
                        : DOSPalette.MCGA[13];  // Gray

                    spriteBatch.DrawString(_font, text, pos, color);
                }
            }
            else
            {
                // Placeholder rendering without font
                DrawPlaceholder(spriteBatch, centerX);
            }
        }

        private void DrawPlaceholder(SpriteBatch spriteBatch, int centerX)
        {
            // Title bar
            spriteBatch.Draw(_pixel,
                new Rectangle(centerX - 60, 40, 120, 16),
                DOSPalette.MCGA[24]); // Yellow bar

            // Menu options
            for (int i = 0; i < MenuOptions.Length; i++)
            {
                int width = MenuOptions[i].Length * 6;
                Color color = (i == _selectedOption && _blinkOn)
                    ? DOSPalette.MCGA[26]   // White
                    : DOSPalette.MCGA[13];  // Gray

                spriteBatch.Draw(_pixel,
                    new Rectangle(centerX - width / 2, 120 + i * 20, width, 10),
                    color);
            }

            // Selection arrow
            int arrowY = 120 + _selectedOption * 20;
            spriteBatch.Draw(_pixel,
                new Rectangle(centerX - 60, arrowY + 2, 8, 6),
                DOSPalette.MCGA[18]); // Red arrow
        }
    }
}
