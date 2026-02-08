using Microsoft.Xna.Framework.Input;

namespace ZeliardAuthentic.Input
{
    /// <summary>
    /// Game actions mapped from keyboard input.
    /// Matches original DOS Zeliard controls from manual.
    /// </summary>
    public enum GameAction
    {
        Left,       // Arrow Left  - Move left
        Right,      // Arrow Right - Move right
        Up,         // Arrow Up    - Climb/look up
        Down,       // Arrow Down  - Crouch/climb down
        Jump,       // Arrow Up    - Jump (same as Up in original)
        Attack,     // Spacebar    - Swing sword
        Magic,      // Alt         - Cast selected spell
        Inventory,  // Enter       - Open inventory / advance dialogue
        Pause,      // Escape      - Pause game
        Unpause,    // Spacebar    - Unpause game (context-dependent)
        SpeedUp,    // F9          - Cycle game speed
        ToggleMusic // F1          - Toggle music on/off
    }

    /// <summary>
    /// Manages keyboard input with pressed/held/released tracking.
    /// Replicates DOS keyboard polling behavior (no buffering).
    /// </summary>
    public class InputManager
    {
        private KeyboardState _current;
        private KeyboardState _previous;

        /// <summary>
        /// Update input state. Call once per frame at the start of Update().
        /// </summary>
        public void Update()
        {
            _previous = _current;
            _current = Keyboard.GetState();
        }

        /// <summary>True while the key for this action is held down.</summary>
        public bool IsHeld(GameAction action)
        {
            return IsKeyHeld(GetKey(action));
        }

        /// <summary>True only on the frame the key is first pressed.</summary>
        public bool IsPressed(GameAction action)
        {
            return IsKeyPressed(GetKey(action));
        }

        /// <summary>True only on the frame the key is released.</summary>
        public bool IsReleased(GameAction action)
        {
            return IsKeyReleased(GetKey(action));
        }

        /// <summary>Direct key held check.</summary>
        public bool IsKeyHeld(Keys key)
        {
            return _current.IsKeyDown(key);
        }

        /// <summary>Direct key pressed check (single frame).</summary>
        public bool IsKeyPressed(Keys key)
        {
            return _current.IsKeyDown(key) && _previous.IsKeyUp(key);
        }

        /// <summary>Direct key released check (single frame).</summary>
        public bool IsKeyReleased(Keys key)
        {
            return _current.IsKeyUp(key) && _previous.IsKeyDown(key);
        }

        /// <summary>True if any key was pressed this frame.</summary>
        public bool AnyKeyPressed()
        {
            return _current.GetPressedKeyCount() > 0 && _previous.GetPressedKeyCount() == 0;
        }

        /// <summary>
        /// Map a game action to its keyboard key.
        /// Matches original DOS Zeliard controls.
        /// </summary>
        private static Keys GetKey(GameAction action)
        {
            switch (action)
            {
                case GameAction.Left:        return Keys.Left;
                case GameAction.Right:       return Keys.Right;
                case GameAction.Up:          return Keys.Up;
                case GameAction.Down:        return Keys.Down;
                case GameAction.Jump:        return Keys.Up;     // Same as Up in original
                case GameAction.Attack:      return Keys.Space;
                case GameAction.Magic:       return Keys.LeftAlt;
                case GameAction.Inventory:   return Keys.Enter;
                case GameAction.Pause:       return Keys.Escape;
                case GameAction.Unpause:     return Keys.Space;  // Space unpauses
                case GameAction.SpeedUp:     return Keys.F9;
                case GameAction.ToggleMusic: return Keys.F1;
                default:                     return Keys.None;
            }
        }
    }
}
