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
            return action switch
            {
                GameAction.Left => Keys.Left,
                GameAction.Right => Keys.Right,
                GameAction.Up => Keys.Up,
                GameAction.Down => Keys.Down,
                GameAction.Jump => Keys.Space,
                GameAction.Attack => Keys.Z,
                GameAction.Magic => Keys.X,
                GameAction.Pause => Keys.Escape,
                GameAction.Inventory => Keys.I,
                GameAction.Confirm => Keys.Enter,
                GameAction.Cancel => Keys.Escape,
                _ => Keys.None
            };
        }
    }
}
