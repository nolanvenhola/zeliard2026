using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardAuthentic.Core;
using ZeliardAuthentic.Input;

namespace ZeliardAuthentic.Scenes
{
    /// <summary>
    /// Placeholder for the main gameplay state.
    /// Will be expanded in Phase 4+ with player, physics, enemies, etc.
    /// Currently shows the chunk browser for continued development.
    /// </summary>
    public class PlayingState : IGameStateHandler
    {
        private InputManager _input;
        private Texture2D _pixel;

        public PlayingState(InputManager input, GraphicsDevice graphicsDevice)
        {
            _input = input;
            _pixel = new Texture2D(graphicsDevice, 1, 1);
            _pixel.SetData(new[] { Color.White });
        }

        public void Enter(GameStateManager manager)
        {
            System.Console.WriteLine("Entered PLAYING state");
        }

        public void Exit(GameStateManager manager)
        {
        }

        public void Update(GameTime gameTime, GameStateManager manager)
        {
            // ESC returns to title (temporary — will become pause)
            if (_input.IsPressed(GameAction.Pause))
            {
                manager.TransitionTo(GameState.Title);
            }
        }

        public void Draw(SpriteBatch spriteBatch, GameStateManager manager)
        {
            // Dark background with placeholder text
            spriteBatch.Draw(_pixel,
                new Rectangle(0, 0, DOSScreen.WIDTH, DOSScreen.HEIGHT),
                DOSPalette.MCGA[0]); // Black

            // Draw "PLAYING" indicator
            int y = DOSScreen.HEIGHT / 2 - 4;
            spriteBatch.Draw(_pixel, new Rectangle(120, y, 80, 8), DOSPalette.MCGA[6]);  // Green bar

            // Draw "ESC = TITLE" hint
            spriteBatch.Draw(_pixel, new Rectangle(110, y + 20, 100, 6), DOSPalette.MCGA[13]); // Gray bar
        }
    }
}
