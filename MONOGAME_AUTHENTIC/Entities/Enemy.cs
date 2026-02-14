using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardAuthentic.Entities
{
    /// <summary>
    /// Base enemy class (Phase 5 will add AI).
    /// Placeholder for Phase 4 combat testing.
    /// </summary>
    /// <summary>
    /// AI states from zelres2_chunk_06 offset +0x07.
    /// </summary>
    public enum AIState
    {
        Patrol = 0,   // Normal movement pattern
        Aggro = 1,    // Player detected, pursuing
        Attack = 2,   // In attack range
        Retreat = 3   // Low health, fleeing
    }

    /// <summary>
    /// Base enemy class matching DOS assembly structure.
    /// From zelres2_chunk_06 (enemy struct at 0x501d, 32 bytes each).
    /// </summary>
    public abstract class Enemy
    {
        // Position (offsets +0x00, +0x02)
        public int X { get; set; }
        public int Y { get; set; }

        // Velocity (offsets +0x04, +0x05)
        public int VelocityX { get; set; }
        public int VelocityY { get; set; }

        // Stats (offset +0x06)
        public int HP { get; set; }
        public int Attack { get; set; }
        public int Defense { get; set; }
        public bool IsDead => HP <= 0;

        // AI State (offset +0x07)
        protected AIState CurrentState { get; set; } = AIState.Patrol;

        // Animation (offset +0x08)
        protected int AnimationFrame { get; set; } = 0;

        // Direction (offset +0x09): 0=Left, 1=Right
        protected bool FacingRight { get; set; } = true;

        // Timers (offset +0x0A)
        protected int AttackCooldown { get; set; } = 0;

        // Rewards
        public int XPReward { get; set; }
        public int GoldReward { get; set; }

        public abstract void Update(Player player, GameTime gameTime);
        public abstract Rectangle GetBounds();
        public abstract void Draw(SpriteBatch spriteBatch);

        public virtual void TakeDamage(int damage)
        {
            HP -= damage;
            if (HP < 0) HP = 0;
        }
    }
}
