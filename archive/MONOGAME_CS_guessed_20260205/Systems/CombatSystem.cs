using ZeliardModern.Models;
using ZeliardModern.Audio;
using ZeliardModern.Physics;

namespace ZeliardModern.Systems
{
    public class Enemy
    {
        public string Name { get; set; }
        public int Health { get; set; }
        public int MaxHealth { get; set; }
        public int AttackDamage { get; set; }
        public int ExperienceValue { get; set; }
        public int GoldValue { get; set; }
        public float X { get; set; }
        public float Y { get; set; }

        // AI and Physics
        public EnemyAI AI { get; set; }
        public PhysicsBody PhysicsBody { get; set; }
        public bool IsBoss => this is Boss;
        public bool CanFly { get; set; }

        public bool IsAlive => Health > 0;

        public Enemy(string name, int health, int attackDamage, int experience, int gold)
        {
            Name = name;
            MaxHealth = health;
            Health = health;
            AttackDamage = attackDamage;
            ExperienceValue = experience;
            GoldValue = gold;
        }
    }

    public class Boss : Enemy
    {
        public int BossNumber { get; set; }
        public string Title { get; set; }

        public Boss(int bossNumber, string name, string title, int health, int attackDamage, int experience, int gold)
            : base(name, health, attackDamage, experience, gold)
        {
            BossNumber = bossNumber;
            Title = title;
        }

        // Known bosses from documentation
        public static Boss CreateCangreo() => new Boss(1, "Cangreo", "Crab Boss", 100, 10, 500, 100);
        public static Boss CreatePulpo() => new Boss(2, "Pulpo", "Octopus Boss", 150, 15, 1000, 200);
        public static Boss CreatePollo() => new Boss(3, "Pollo", "Chicken Boss", 200, 20, 2000, 300);
        public static Boss CreateAgar() => new Boss(4, "Agar", "Agar & Paguro", 250, 25, 3000, 500);
        public static Boss CreateVista() => new Boss(5, "Vista", "Vista", 300, 30, 5000, 1000);
        public static Boss CreateTarso() => new Boss(6, "Tarso", "Tarso", 400, 40, 8000, 2000);
        public static Boss CreateDragon() => new Boss(7, "Dragon", "Dragon", 500, 50, 15000, 3000);
        public static Boss CreateAlguien() => new Boss(8, "Alguien", "Alguien", 600, 60, 30000, 5000);
        public static Boss CreateArchfiend() => new Boss(9, "Jashiin", "Archfiend", 1000, 100, 10000, 10000);
    }

    public static class CombatSystem
    {
        /// <summary>
        /// Process player attack on enemy
        /// </summary>
        public static CombatResult PlayerAttackEnemy(Player player, Enemy enemy, SoundManager soundManager = null)
        {
            int damage = player.GetAttackDamage();
            enemy.Health -= damage;

            bool enemyDefeated = enemy.Health <= 0;

            // Play sword swing sound
            soundManager?.PlaySound(SoundEffects.SWORD_SWING);

            if (enemyDefeated)
            {
                enemy.Health = 0;
                player.AddExperience(enemy.ExperienceValue);
                player.Gold += enemy.GoldValue;

                // Play appropriate death sound
                if (enemy is Boss)
                {
                    soundManager?.PlaySound(SoundEffects.BOSS_ROAR); // Boss death
                }
                else
                {
                    soundManager?.PlaySound(SoundEffects.ENEMY_DEATH);
                }
            }
            else
            {
                // Play hit sound
                soundManager?.PlaySound(SoundEffects.ENEMY_HIT);
            }

            return new CombatResult
            {
                Damage = damage,
                TargetDefeated = enemyDefeated,
                ExperienceGained = enemyDefeated ? enemy.ExperienceValue : 0,
                GoldGained = enemyDefeated ? enemy.GoldValue : 0
            };
        }

        /// <summary>
        /// Process enemy attack on player
        /// </summary>
        public static CombatResult EnemyAttackPlayer(Enemy enemy, Player player)
        {
            int baseDamage = enemy.AttackDamage;
            int healthBefore = player.Health;

            player.TakeDamage(baseDamage);

            int actualDamage = healthBefore - player.Health;

            return new CombatResult
            {
                Damage = actualDamage,
                TargetDefeated = !player.IsAlive,
                ExperienceGained = 0,
                GoldGained = 0
            };
        }

        /// <summary>
        /// Check if attack collides (simple rectangle collision)
        /// </summary>
        public static bool CheckAttackCollision(float attackX, float attackY, float attackWidth, float attackHeight,
                                               float targetX, float targetY, float targetWidth, float targetHeight)
        {
            return attackX < targetX + targetWidth &&
                   attackX + attackWidth > targetX &&
                   attackY < targetY + targetHeight &&
                   attackY + attackHeight > targetY;
        }
    }

    public class CombatResult
    {
        public int Damage { get; set; }
        public bool TargetDefeated { get; set; }
        public int ExperienceGained { get; set; }
        public int GoldGained { get; set; }
    }
}
