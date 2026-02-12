using Microsoft.Xna.Framework;
using ZeliardAuthentic.Input;

namespace ZeliardAuthentic.Entities
{
    public class PlayerController
    {
        public void ProcessInput(InputManager input, Player player)
        {
            // Horizontal movement (integers only)
            if (input.IsHeld(GameAction.Left))
            {
                player.VelocityX = -2;
                player.FacingRight = false;
            }
            else if (input.IsHeld(GameAction.Right))
            {
                player.VelocityX = 2;
                player.FacingRight = true;
            }
            else
            {
                player.VelocityX = 0; // Stop immediately when no input
            }

            // Jump (from zelres1_chunk_06 offset 0x844: mov byte [0x8c],-0x18)
            if (input.IsPressed(GameAction.Jump) && player.CanJump)
            {
                player.VelocityY = -24; // DOS uses -0x18 = -24 px/frame
                player.OnGround = false;
            }
        }
    }
}
