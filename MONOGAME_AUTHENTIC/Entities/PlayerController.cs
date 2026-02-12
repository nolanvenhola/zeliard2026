using Microsoft.Xna.Framework;
using ZeliardAuthentic.Input;

namespace ZeliardAuthentic.Entities
{
    public class PlayerController
    {
        public void ProcessInput(InputManager input, Player player)
        {
            // Horizontal movement
            float moveX = 0f;

            if (input.IsHeld(GameAction.Left))
            {
                moveX = -2.0f;
                player.FacingRight = false;
            }
            else if (input.IsHeld(GameAction.Right))
            {
                moveX = 2.0f;
                player.FacingRight = true;
            }

            player.Velocity = new Vector2(moveX, player.Velocity.Y);

            // Jump (no gravity yet, so this is just upward movement)
            if (input.IsPressed(GameAction.Jump) && player.CanJump)
            {
                player.Velocity = new Vector2(player.Velocity.X, -8.0f);
                player.OnGround = false;
            }
        }
    }
}
