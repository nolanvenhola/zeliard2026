using Microsoft.Xna.Framework.Audio;
using System;
using System.Collections.Generic;

namespace ZeliardModern.Audio
{
    /// <summary>
    /// Manages sound effects with pooling and categories
    /// Handles sound effect instances, spatial audio, and volume control
    /// </summary>
    public class SoundManager
    {
        private AudioSystem _audioSystem;
        private Dictionary<string, List<SoundEffectInstance>> _activeSounds;
        private const int MAX_INSTANCES_PER_SOUND = 3;

        public SoundManager(AudioSystem audioSystem)
        {
            _audioSystem = audioSystem;
            _activeSounds = new Dictionary<string, List<SoundEffectInstance>>();
        }

        /// <summary>
        /// Play a one-shot sound effect
        /// </summary>
        public void PlaySound(string soundName, float volume = 1.0f)
        {
            _audioSystem.PlaySound(soundName, volume);
        }

        /// <summary>
        /// Play a positional sound effect (with panning based on position)
        /// </summary>
        public void PlaySoundAtPosition(string soundName, float listenerX, float soundX, float maxDistance = 800f)
        {
            if (!_audioSystem.SoundEnabled)
                return;

            // Calculate pan based on horizontal distance (-1 = left, 0 = center, 1 = right)
            float distance = soundX - listenerX;
            float pan = Math.Clamp(distance / maxDistance, -1f, 1f);

            // Calculate volume based on distance
            float distanceRatio = Math.Abs(distance) / maxDistance;
            float volume = Math.Max(0f, 1f - distanceRatio);

            _audioSystem.PlaySound(soundName, volume, 0f, pan);
        }

        /// <summary>
        /// Play a looping sound effect
        /// </summary>
        public SoundEffectInstance PlayLoopingSound(string soundName, float volume = 1.0f)
        {
            // This would require getting the SoundEffect from AudioSystem
            // For now, return null as a placeholder
            // In a full implementation, we'd need to expose SoundEffect objects from AudioSystem
            return null;
        }

        /// <summary>
        /// Stop all active sound instances
        /// </summary>
        public void StopAllSounds()
        {
            foreach (var instances in _activeSounds.Values)
            {
                foreach (var instance in instances)
                {
                    instance.Stop();
                    instance.Dispose();
                }
                instances.Clear();
            }
            _activeSounds.Clear();
        }

        /// <summary>
        /// Update active sound instances (remove finished ones)
        /// </summary>
        public void Update()
        {
            List<string> keysToRemove = new List<string>();

            foreach (var kvp in _activeSounds)
            {
                var instances = kvp.Value;
                instances.RemoveAll(instance =>
                {
                    if (instance.State == SoundState.Stopped)
                    {
                        instance.Dispose();
                        return true;
                    }
                    return false;
                });

                if (instances.Count == 0)
                {
                    keysToRemove.Add(kvp.Key);
                }
            }

            foreach (var key in keysToRemove)
            {
                _activeSounds.Remove(key);
            }
        }

        /// <summary>
        /// Cleanup resources
        /// </summary>
        public void Dispose()
        {
            StopAllSounds();
        }
    }

    /// <summary>
    /// Predefined sound effect names for easy reference
    /// Note: These sounds need to be created or sourced
    /// </summary>
    public static class SoundEffects
    {
        // Player sounds
        public const string PLAYER_JUMP = "PlayerJump";
        public const string PLAYER_LAND = "PlayerLand";
        public const string PLAYER_SWORD_SWING = "SwordSwing";
        public const string SWORD_SWING = "SwordSwing"; // Alias for backward compatibility
        public const string PLAYER_SWORD_HIT = "SwordHit";
        public const string PLAYER_HURT = "PlayerHurt";
        public const string PLAYER_DEATH = "PlayerDeath";

        // Enemy sounds
        public const string ENEMY_HIT = "EnemyHit";
        public const string ENEMY_DEATH = "EnemyDeath";
        public const string BOSS_ROAR = "BossRoar";

        // Item sounds
        public const string ITEM_PICKUP = "ItemPickup";
        public const string ITEM_PURCHASE = "ItemPurchase";
        public const string COIN_PICKUP = "CoinPickup";
        public const string POTION_DRINK = "PotionDrink";

        // Magic sounds
        public const string SPELL_CAST = "SpellCast";
        public const string SPELL_HIT = "SpellHit";
        public const string MAGIC_CHARGE = "MagicCharge";

        // UI sounds
        public const string MENU_SELECT = "MenuSelect";
        public const string MENU_MOVE = "MenuMove";
        public const string MENU_BACK = "MenuBack";
        public const string DIALOGUE_ADVANCE = "DialogueAdvance";

        // Environment sounds
        public const string DOOR_OPEN = "DoorOpen";
        public const string CHEST_OPEN = "ChestOpen";
        public const string TELEPORT = "Teleport";
        public const string LEVEL_UP = "LevelUp";
    }
}
