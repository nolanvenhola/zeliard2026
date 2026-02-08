using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Game states matching the Zeliard DOS flow:
    /// Opening → Title → NameEntry → Playing → Paused → Inventory → Town → Dead
    /// </summary>
    public enum GameState
    {
        Opening,      // Cinematic intro (text scrolling over backgrounds)
        Title,        // Title screen with New Game / Load Game
        NameEntry,    // Player name entry (8-char DOS limit)
        Playing,      // In-game (cavern or connecting tunnel)
        Town,         // In a town (walking, NPCs, shops)
        Paused,       // ESC pause overlay
        Inventory,    // ENTER inventory screen
        Dead,         // Death → respawn at Muralla
        Ending,       // Victory cutscene after defeating Jashiin
        Credits,      // Scrolling credits
    }

    /// <summary>
    /// Interface for game state handlers.
    /// Each state implements its own Update/Draw logic.
    /// </summary>
    public interface IGameStateHandler
    {
        void Enter(GameStateManager manager);
        void Exit(GameStateManager manager);
        void Update(GameTime gameTime, GameStateManager manager);
        void Draw(SpriteBatch spriteBatch, GameStateManager manager);
    }

    /// <summary>
    /// Manages game state transitions and delegates Update/Draw to the active state handler.
    /// </summary>
    public class GameStateManager
    {
        private GameState _currentState;
        private GameState _previousState;
        private readonly IGameStateHandler[] _handlers;

        public GameState CurrentState => _currentState;
        public GameState PreviousState => _previousState;

        public GameStateManager()
        {
            _handlers = new IGameStateHandler[(int)GameState.Credits + 1];
            _currentState = GameState.Opening;
            _previousState = GameState.Opening;
        }

        /// <summary>
        /// Register a handler for a specific game state.
        /// </summary>
        public void RegisterHandler(GameState state, IGameStateHandler handler)
        {
            _handlers[(int)state] = handler;
        }

        /// <summary>
        /// Transition to a new state. Calls Exit on old, Enter on new.
        /// </summary>
        public void TransitionTo(GameState newState)
        {
            var oldHandler = _handlers[(int)_currentState];
            oldHandler?.Exit(this);

            _previousState = _currentState;
            _currentState = newState;

            var newHandler = _handlers[(int)_currentState];
            newHandler?.Enter(this);
        }

        /// <summary>
        /// Update the current state.
        /// </summary>
        public void Update(GameTime gameTime)
        {
            var handler = _handlers[(int)_currentState];
            handler?.Update(gameTime, this);
        }

        /// <summary>
        /// Draw the current state.
        /// </summary>
        public void Draw(SpriteBatch spriteBatch)
        {
            var handler = _handlers[(int)_currentState];
            handler?.Draw(spriteBatch, this);
        }

        /// <summary>
        /// Force-set state without calling Enter/Exit (for initialization).
        /// </summary>
        public void SetInitialState(GameState state)
        {
            _currentState = state;
            _previousState = state;
            var handler = _handlers[(int)state];
            handler?.Enter(this);
        }
    }
}
