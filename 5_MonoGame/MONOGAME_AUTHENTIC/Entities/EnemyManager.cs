using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ZeliardAuthentic.Entities
{
    /// <summary>
    /// Manages enemy spawning and updates.
    /// From zelres3_chunk_32 - Enemy manager/spawning system.
    /// Maximum 128 enemies from zelres2_chunk_06 line 65.
    /// </summary>
    public class EnemyManager
    {
        private List<Enemy> _activeEnemies = new List<Enemy>();
        private const int MaxEnemies = 128; // From assembly: mov cx,0x80

        public void AddEnemy(Enemy enemy)
        {
            if (_activeEnemies.Count < MaxEnemies)
            {
                _activeEnemies.Add(enemy);
            }
        }

        public void Update(Player player, GameTime gameTime)
        {
            // Update all enemies, remove dead ones
            for (int i = _activeEnemies.Count - 1; i >= 0; i--)
            {
                Enemy enemy = _activeEnemies[i];

                if (enemy.IsDead)
                {
                    // TODO: Award XP and gold to player
                    // player.Stats.AddExperience(enemy.XPReward);
                    // player.Stats.Gold += enemy.GoldReward;

                    _activeEnemies.RemoveAt(i);
                    continue;
                }

                enemy.Update(player, gameTime);
            }
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            foreach (Enemy enemy in _activeEnemies)
            {
                if (!enemy.IsDead)
                {
                    enemy.Draw(spriteBatch);
                }
            }
        }

        public List<Enemy> GetActiveEnemies()
        {
            return _activeEnemies;
        }

        public void Clear()
        {
            _activeEnemies.Clear();
        }

        public int Count => _activeEnemies.Count;
    }
}
