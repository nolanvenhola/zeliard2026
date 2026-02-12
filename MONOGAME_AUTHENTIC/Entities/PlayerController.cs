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

            // Normal jump (double jump in assembly is -24, normal likely half that)
            if (input.IsPressed(GameAction.Jump) && player.CanJump)
            {
                player.VelocityY = -12; // Estimated (double jump = -24 from assembly)
                player.OnGround = false;
            }

            // Attack (Z key mapped to GameAction.Attack)
            // From zelres2_chunk_01 - Combat input handling
            if (input.IsPressed(GameAction.Attack) && !player.IsAttacking)
            {
                player.IsAttacking = true;
                player.AttackFrameCounter = 0;
            }
        }
    }
}
