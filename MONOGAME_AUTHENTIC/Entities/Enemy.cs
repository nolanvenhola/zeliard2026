using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardAuthentic.Entities
{
    /// <summary>
    /// Base enemy class (Phase 5 will add AI).
    /// Placeholder for Phase 4 combat testing.
    /// </summary>
    public abstract class Enemy
    {
        public int X { get; set; }
        public int Y { get; set; }
        public int HP { get; set; }
        public int Attack { get; set; }
        public int Defense { get; set; }
        public bool IsDead => HP <= 0;

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
