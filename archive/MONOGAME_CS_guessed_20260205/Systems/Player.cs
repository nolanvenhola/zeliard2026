using System;
using ZeliardModern.Core;
using ZeliardModern.Models;
using ZeliardModern.Audio;
using ZeliardModern.Data;
using Microsoft.Xna.Framework;

namespace ZeliardModern.Systems
{
    public class Player
    {
        // Core Stats
        public int Level { get; set; }
        public int Experience { get; set; }
        public int Health { get; set; }
        public int MaxHealth { get; set; }
        public int Gold { get; set; }
        public int CurrentArea { get; set; }

        // Equipment
        public Sword EquippedSword { get; set; }
        public Shield EquippedShield { get; set; }
        public Armor EquippedArmor { get; set; }

        // Audio (optional)
        private SoundManager _soundManager;
        public SoundManager SoundManager
        {
            get => _soundManager;
            set
            {
                _soundManager = value;
                // Also set it on the physics body
                if (PhysicsBody != null)
                {
                    PhysicsBody.SoundManager = value;
                }
            }
        }

        // Position and Movement (for compatibility)
        public float X
        {
            get => PhysicsBody?.Position.X ?? 0f;
            set { if (PhysicsBody != null) PhysicsBody.Position = new Microsoft.Xna.Framework.Vector2(value, PhysicsBody.Position.Y); }
        }
        public float Y
        {
            get => PhysicsBody?.Position.Y ?? 0f;
            set { if (PhysicsBody != null) PhysicsBody.Position = new Microsoft.Xna.Framework.Vector2(PhysicsBody.Position.X, value); }
        }
        public float VelocityX
        {
            get => PhysicsBody?.Velocity.X ?? 0f;
            set { if (PhysicsBody != null) PhysicsBody.Velocity = new Microsoft.Xna.Framework.Vector2(value, PhysicsBody.Velocity.Y); }
        }
        public float VelocityY
        {
            get => PhysicsBody?.Velocity.Y ?? 0f;
            set { if (PhysicsBody != null) PhysicsBody.Velocity = new Microsoft.Xna.Framework.Vector2(PhysicsBody.Velocity.X, value); }
        }

        // Physics
        public Physics.PhysicsBody PhysicsBody { get; set; }

        public Player()
        {
            Level = 0;
            Experience = 0;
            MaxHealth = GameConstants.HealthPerLevel[0];
            Health = MaxHealth;
            Gold = 0;

            // Start with training sword
            EquippedSword = Sword.CreateTrainingSword();
            EquippedShield = null;
            EquippedArmor = null;

            // Initialize physics body (32x48 pixels - adjust based on actual sprite size)
            PhysicsBody = new Physics.PhysicsBody(new Microsoft.Xna.Framework.Vector2(100, 100), 32, 48);
        }

        /// <summary>
        /// Add experience points with proper level-up handling
        /// Based on Zeliard's experience system
        /// </summary>
        public bool AddExperience(int amount)
        {
            if (Level >= GameConstants.MaxLevel)
                return false;

            Experience += amount;

            // Cap experience at maximum
            if (Experience > GameConstants.MaxExperience)
                Experience = GameConstants.MaxExperience;

            return true;
        }

        /// <summary>
        /// Check if player can level up
        /// </summary>
        public bool CanLevelUp()
        {
            if (Level >= GameConstants.MaxLevel)
                return false;

            int requiredExp = GetRequiredExperienceForNextLevel();
            return Experience >= requiredExp;
        }

        /// <summary>
        /// Level up the player (called by Sage Indihar)
        /// </summary>
        public bool LevelUp()
        {
            if (!CanLevelUp())
                return false;

            int requiredExp = GetRequiredExperienceForNextLevel();

            // Subtract experience for level up
            Experience -= requiredExp;

            // Prevent keeping enough experience to level up again without fighting
            int nextRequiredExp = Level + 2 <= 16
                ? GameConstants.ExperiencePerLevel[Level + 1]
                : GameConstants.LevelUpExperienceAfter16;

            if (Experience >= nextRequiredExp)
                Experience = nextRequiredExp - 1;

            // Increase level
            Level++;

            // Update max health based on level
            if (Level < GameConstants.HealthPerLevel.Length)
            {
                MaxHealth = GameConstants.HealthPerLevel[Level];
            }
            else
            {
                MaxHealth = GameConstants.MaxHealth;
            }

            // Restore health on level up
            Health = MaxHealth;

            // Play level up sound
            SoundManager?.PlaySound(SoundEffects.LEVEL_UP);

            return true;
        }

        /// <summary>
        /// Get experience required for next level
        /// </summary>
        public int GetRequiredExperienceForNextLevel()
        {
            if (Level >= GameConstants.MaxLevel)
                return 0;

            if (Level < GameConstants.ExperiencePerLevel.Length)
                return GameConstants.ExperiencePerLevel[Level];

            return GameConstants.LevelUpExperienceAfter16;
        }

        /// <summary>
        /// Get experience progress percentage for current level
        /// </summary>
        public float GetExperienceProgress()
        {
            int required = GetRequiredExperienceForNextLevel();
            if (required == 0)
                return 1.0f;

            return (float)Experience / required;
        }

        /// <summary>
        /// Get the Sage's message based on experience progress
        /// </summary>
        public string GetSageMessage()
        {
            if (!CanLevelUp())
            {
                float progress = GetExperienceProgress();
                if (progress < 0.5f)
                    return "You must persevere";
                else if (progress < 0.75f)
                    return "You must accumulate more experience";
                else
                    return "I see the faint light of the spirits";
            }
            return "Your power has increased!";
        }

        /// <summary>
        /// Calculate current attack damage
        /// </summary>
        public int GetAttackDamage()
        {
            if (EquippedSword == null)
                return 1; // Bare hands

            return EquippedSword.GetDamage(Level);
        }

        /// <summary>
        /// Take damage with shield/armor calculations
        /// </summary>
        public void TakeDamage(int damage)
        {
            int actualDamage = damage;

            // Apply shield defense
            if (EquippedShield != null)
            {
                // Light Shield and Titanium Shield have better damage reduction
                if (EquippedShield.Type == ShieldType.Light ||
                    EquippedShield.Type == ShieldType.Titanium)
                {
                    actualDamage = damage / 2; // Roughly 60% damage reduction
                }
                else
                {
                    actualDamage = damage - EquippedShield.BaseDefense;
                }
            }

            // Apply armor defense
            if (EquippedArmor != null)
            {
                actualDamage -= EquippedArmor.Defense;
            }

            // Minimum damage is 1
            actualDamage = Math.Max(1, actualDamage);

            bool wasAlive = Health > 0;
            Health -= actualDamage;
            if (Health < 0)
                Health = 0;

            // Play appropriate sound
            if (Health <= 0 && wasAlive)
            {
                SoundManager?.PlaySound(SoundEffects.PLAYER_DEATH);
            }
            else
            {
                SoundManager?.PlaySound(SoundEffects.PLAYER_HURT);
            }
        }

        /// <summary>
        /// Heal the player
        /// </summary>
        public void Heal(int amount)
        {
            Health += amount;
            if (Health > MaxHealth)
                Health = MaxHealth;

            // Play potion/healing sound
            SoundManager?.PlaySound(SoundEffects.POTION_DRINK);
        }

        /// <summary>
        /// Export player state to serializable data
        /// </summary>
        public PlayerData ToPlayerData()
        {
            return new PlayerData
            {
                Level = this.Level,
                Experience = this.Experience,
                Health = this.Health,
                MaxHealth = this.MaxHealth,
                Gold = this.Gold,
                X = this.PhysicsBody?.Position.X ?? 0f,
                Y = this.PhysicsBody?.Position.Y ?? 0f,
                CurrentArea = this.CurrentArea,
                Equipment = new EquipmentData
                {
                    SwordType = this.EquippedSword?.Type.ToString() ?? "None",
                    ShieldType = this.EquippedShield?.Type.ToString() ?? "None",
                    ArmorType = this.EquippedArmor?.Type.ToString() ?? "None"
                }
            };
        }

        /// <summary>
        /// Import player state from saved data
        /// </summary>
        public void FromPlayerData(PlayerData data)
        {
            // Restore stats
            this.Level = data.Level;
            this.Experience = data.Experience;
            this.Health = data.Health;
            this.MaxHealth = data.MaxHealth;
            this.Gold = data.Gold;
            this.CurrentArea = data.CurrentArea;

            // Restore position
            if (PhysicsBody != null)
            {
                PhysicsBody.Position = new Vector2(data.X, data.Y);
            }

            // Restore equipment
            if (data.Equipment != null)
            {
                // Restore sword
                if (Enum.TryParse<SwordType>(data.Equipment.SwordType, out var swordType))
                {
                    this.EquippedSword = Sword.Create(swordType);
                }
                else
                {
                    this.EquippedSword = Sword.CreateTrainingSword();
                }

                // Restore shield (can be null)
                if (data.Equipment.ShieldType != "None" &&
                    Enum.TryParse<ShieldType>(data.Equipment.ShieldType, out var shieldType))
                {
                    this.EquippedShield = Shield.Create(shieldType);
                }
                else
                {
                    this.EquippedShield = null;
                }

                // Restore armor (can be null)
                if (data.Equipment.ArmorType != "None" &&
                    Enum.TryParse<ArmorType>(data.Equipment.ArmorType, out var armorType))
                {
                    this.EquippedArmor = Armor.Create(armorType);
                }
                else
                {
                    this.EquippedArmor = null;
                }
            }
        }

        public bool IsAlive => Health > 0;
    }
}
