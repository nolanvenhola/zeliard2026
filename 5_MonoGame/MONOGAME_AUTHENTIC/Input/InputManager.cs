using Microsoft.Xna.Framework.Input;

namespace ZeliardAuthentic.Input
{
    public enum GameAction
    {
        Left, Right, Up, Down,
        Jump, Attack, Magic,
        Pause, Inventory, Confirm, Cancel
    }

    public class InputManager
    {
        private KeyboardState _currentKeyState;
        private KeyboardState _previousKeyState;

        public void Update()
        {
            _previousKeyState = _currentKeyState;
            _currentKeyState = Keyboard.GetState();
        }

        public bool IsPressed(GameAction action)
        {
            Keys key = MapActionToKey(action);
            return _currentKeyState.IsKeyDown(key) && !_previousKeyState.IsKeyDown(key);
        }

        public bool IsHeld(GameAction action)
        {
            Keys key = MapActionToKey(action);
            return _currentKeyState.IsKeyDown(key);
        }

        public bool IsReleased(GameAction action)
        {
            Keys key = MapActionToKey(action);
            return !_currentKeyState.IsKeyDown(key) && _previousKeyState.IsKeyDown(key);
        }

        private Keys MapActionToKey(GameAction action)
        {
            // From GAME_DATA_REFERENCE.md lines 77-91 (DOS controls)
            return action switch
            {
                GameAction.Left => Keys.Left,
                GameAction.Right => Keys.Right,
                GameAction.Up => Keys.Up,
                GameAction.Down => Keys.Down,
                GameAction.Jump => Keys.Up,          // "Up: Jump" (line 79)
                GameAction.Attack => Keys.Space,     // "Spacebar: Use weapon" (line 84)
                GameAction.Magic => Keys.LeftAlt,    // "[ALT]: Cast selected spell" (line 90)
                GameAction.Pause => Keys.Escape,     // "[ESC]: Pause game" (line 91)
                GameAction.Inventory => Keys.Enter,  // "[ENTER]: Access Inventory Screen" (line 89)
                GameAction.Confirm => Keys.Space,    // Spacebar for confirm in menus
                GameAction.Cancel => Keys.Escape,
                _ => Keys.None
            };
        }
    }
}
