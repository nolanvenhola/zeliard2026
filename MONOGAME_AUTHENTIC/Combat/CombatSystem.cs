using Microsoft.Xna.Framework;
using System.Collections.Generic;
using ZeliardAuthentic.Entities;

namespace ZeliardAuthentic.Combat
{
    /// <summary>
    /// Combat system handling player attacks and damage.
    /// From zelres1_chunk_06 (offsets 0x024B-0x028B) - Sword hitbox calculation.
    /// From zelres2_chunk_01 - Combat core system.
    /// </summary>
    public class CombatSystem
    {
        /// <summary>
        /// Update combat - check player attacks against enemies and enemy attacks against player.
        /// </summary>
        public void Update(Player player, List<Enemy> enemies)
        {
            // Player attacks enemies
            if (player.IsAttacking)
            {
                Rectangle swordHitbox = GetSwordHitbox(player);

                foreach (var enemy in enemies)
                {
                    if (!enemy.IsDead && swordHitbox.Intersects(enemy.GetBounds()))
                    {
                        int damage = player.Stats.CalculateDamage(enemy.Defense);
                        enemy.TakeDamage(damage);
                    }
                }
            }

            // Enemies attack player (touch damage)
            foreach (var enemy in enemies)
            {
                if (!enemy.IsDead && enemy.GetBounds().Intersects(player.GetBounds()))
                {
                    int damage = enemy.Attack - player.Stats.TotalDefense;
                    if (damage < 1) damage = 1; // Minimum 1 damage

                    player.Stats.TakeDamage(damage);
                }
            }
        }

        /// <summary>
        /// Calculate sword hitbox based on player position and facing direction.
        /// From zelres1_chunk_06 offset 0x024B - Calculate Attack Position.
        ///
        /// Assembly (lines 526-543):
        ///   0x0250  mov bl,[0x83]         ; BL = player Y
        ///   0x0254  add bl,0x4            ; Add 4 (vertical offset)
        ///   0x0259  mov dx,bx             ; DX = Y position
        ///   0x025B  add dx,[0x80]         ; Add player X
        ///
        /// Facing right - checks 3 positions at +8, +16, +24 pixels
        /// Facing left - checks 3 positions at -8, -16, -24 pixels
        /// </summary>
        private Rectangle GetSwordHitbox(Player player)
        {
            // From assembly: Sword extends 24 pixels from player
            const int SwordReach = 24;
            const int SwordHeight = 32;

            if (player.FacingRight)
            {
                // Facing right - hitbox extends from player's right side
                // Assembly checks positions +8, +16, +24 from player center
                return new Rectangle(
                    player.X + 8,           // Right of player center
                    player.Y - 12,          // Account for sprite origin
                    SwordReach,
                    SwordHeight
                );
            }
            else
            {
                // Facing left - hitbox extends from player's left side
                return new Rectangle(
                    player.X - SwordReach - 8,  // Left of player center
                    player.Y - 12,
                    SwordReach,
                    SwordHeight
                );
            }
        }
    }
}
