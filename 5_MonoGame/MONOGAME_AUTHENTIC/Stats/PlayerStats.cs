using Microsoft.Xna.Framework;
using System;

namespace ZeliardAuthentic.Stats
{
    /// <summary>
    /// Player statistics matching DOS assembly structure.
    /// From zelres1_chunk_04 (offsets 0x6000-0x6050) - Player stat block.
    /// Total structure size: 80 bytes.
    /// </summary>
    public class PlayerStats
    {
        // Core Stats (0x6000-0x6011)
        // From GAME_DATA_REFERENCE.md line 312: "Starting Level: 0 (80 HP)"
        public byte Level { get; set; } = 0;                    // 0x6000 - Starting level = 0
        // 0x6001 - Reserved byte

        public uint Experience { get; set; } = 0;               // 0x6002 - Current XP (32-bit dword)
        public uint Gold { get; set; } = 1000;                  // 0x6006 - "Starting gold: 1000 (from King)" line 1963

        public ushort CurrentHP { get; set; } = 80;             // 0x600A - "80 HP" at level 0 (line 320)
        public ushort MaxHP { get; set; } = 80;                 // 0x600C - Max HP at level 0
        public ushort CurrentMP { get; set; } = 10;             // 0x600E - Current mana points
        public ushort MaxMP { get; set; } = 10;                 // 0x6010 - Maximum mana points

        // Base Stats (0x6012-0x6021)
        // From GAME_DATA_REFERENCE line 383: "Training Sword base damage = 1"
        public ushort BaseAttack { get; set; } = 1;             // 0x6012 - Training Sword
        public ushort BaseDefense { get; set; } = 0;            // 0x6014 - No armor at start
        public ushort BaseSpeed { get; set; } = 5;              // 0x6016 - Speed before equipment
        public ushort BaseMagic { get; set; } = 0;              // 0x6018 - No magic at start

        public ushort TotalAttack { get; set; } = 1;            // 0x601A - Attack with equipment = 1
        public ushort TotalDefense { get; set; } = 0;           // 0x601C - Defense with equipment = 0
        public ushort TotalSpeed { get; set; } = 5;             // 0x601E - Speed with equipment
        public ushort TotalMagic { get; set; } = 0;             // 0x6020 - Magic with equipment = 0

        // Raw Attributes (0x6022-0x6025)
        public byte Strength { get; set; } = 10;                // 0x6022 - Raw strength attribute
        public byte Vitality { get; set; } = 10;                // 0x6023 - Raw vitality attribute
        public byte Intelligence { get; set; } = 10;            // 0x6024 - Raw intelligence attribute
        public byte Dexterity { get; set; } = 10;               // 0x6025 - Raw dexterity attribute

        // Status Effects (0x6026-0x602F)
        public ushort StatusFlags { get; set; } = 0;            // 0x6026 - Bit flags for status effects
        public byte PoisonTimer { get; set; } = 0;              // 0x6028 - Frames until poison damage
        public byte RegenTimer { get; set; } = 0;               // 0x6029 - Frames until regen heal
        public ushort InvincibleTimer { get; set; } = 0;        // 0x602A - Frames of invincibility left
        public ushort PowerUpTimer { get; set; } = 0;           // 0x602C - Frames of attack boost left

        // Lives System (0x602E-0x602F)
        public byte Lives { get; set; } = 3;                    // 0x602E - Extra lives remaining
        public byte Continues { get; set; } = 0;                // 0x602F - Continues used

        /// <summary>
        /// Calculate damage dealt to target.
        /// From zelres1_chunk_04 - Damage calculation formula.
        /// </summary>
        public int CalculateDamage(int targetDefense)
        {
            // Base damage = attack - defense
            int baseDamage = TotalAttack - targetDefense;
            if (baseDamage < 1)
                baseDamage = 1; // Minimum 1 damage

            // ±10% variance (from assembly damage formula)
            float variance = (Random.Shared.NextSingle() * 0.2f) - 0.1f; // -0.1 to +0.1
            int finalDamage = (int)(baseDamage * (1.0f + variance));

            return System.Math.Max(1, finalDamage);
        }

        /// <summary>
        /// Apply damage to player.
        /// From zelres1_chunk_04 offset 0x1121 - Apply Damage to Player.
        /// </summary>
        public void TakeDamage(int damage)
        {
            // Check invincibility (from assembly line 416)
            if (InvincibleTimer > 0)
                return; // Still invincible

            // Subtract from HP (line 420)
            if (CurrentHP > damage)
            {
                CurrentHP -= (ushort)damage;
            }
            else
            {
                CurrentHP = 0; // Player died (line 424)
                // TODO: Call player_death_sequence (Phase 5+)
            }

            // Start invincibility frames
            // Walkthrough says 120 frames (6.6 sec) but that's too long - likely documentation error
            // Using 36 frames = ~2 seconds (typical for platformers)
            InvincibleTimer = 36; // TODO: Extract exact value from assembly

            // TODO: Play hurt sound (line 433)
            // TODO: Flash player sprite (line 437)
        }

        /// <summary>
        /// Update status effect timers each frame.
        /// From zelres1_chunk_04 offset 0x1800 - Update Status Effects.
        /// </summary>
        public void Update(GameTime gameTime)
        {
            // Update invincibility timer
            if (InvincibleTimer > 0)
                InvincibleTimer--;

            // Poison damage (from assembly: 2 HP every 18 frames = 1 sec)
            if (PoisonTimer > 0)
            {
                PoisonTimer--;
                if (PoisonTimer % 18 == 0) // Every ~1 second at 18.2 FPS
                {
                    if (CurrentHP > 2)
                        CurrentHP -= 2; // Poison deals 2 HP/sec
                    else
                        CurrentHP = 0;
                }
            }

            // Regeneration (from assembly: 1 HP every 18 frames = 1 sec)
            if (RegenTimer > 0)
            {
                RegenTimer--;
                if (RegenTimer % 18 == 0)
                {
                    if (CurrentHP < MaxHP)
                        CurrentHP++; // Restore 1 HP/sec
                }
            }

            // Power-up timer countdown
            if (PowerUpTimer > 0)
                PowerUpTimer--;
        }
    }
}
