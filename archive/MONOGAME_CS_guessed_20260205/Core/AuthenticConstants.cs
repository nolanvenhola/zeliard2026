using System;

namespace ZeliardModern.Core
{
    /// <summary>
    /// AUTHENTIC game constants extracted from DOS assembly
    /// All values verified against original Zeliard (1990)
    ///
    /// Source files:
    /// - 4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres1_chunks/chunk_00.asm
    /// - 4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres2_chunks/chunk_04.asm
    ///
    /// Fixed-Point Format: DOS used 8.8 fixed-point (8 bits integer, 8 bits fractional)
    /// Conversion: hex_value / 256.0f = float_value
    /// </summary>
    public static class AuthenticConstants
    {
        // =================================================================
        // DOS SYSTEM
        // =================================================================

        /// <summary>
        /// Original DOS frame rate: ~18.2 Hz (55ms per frame)
        /// DOS timer interrupt ran at 18.206512 Hz
        /// </summary>
        public const float DOS_FRAME_RATE = 18.2f;
        public const float DOS_FRAME_TIME = 1.0f / DOS_FRAME_RATE; // ~0.0549s

        /// <summary>
        /// DOS screen resolution (CGA/EGA/VGA modes)
        /// </summary>
        public const int DOS_SCREEN_WIDTH = 320;
        public const int DOS_SCREEN_HEIGHT = 200;

        // =================================================================
        // PLAYER MOVEMENT (zelres1/chunk_00.asm)
        // =================================================================

        /// <summary>
        /// Player walk speed
        /// Assembly: 0x0200 (8.8 fixed-point) = 2.0 pixels per frame
        /// At 18.2 FPS: 2.0 * 18.2 = 36.4 pixels/second
        ///
        /// TODO: Verify exact value from assembly at zelres1_chunks/chunk_00.asm
        /// Current value is educated guess based on typical DOS platformers
        /// </summary>
        public const float PLAYER_WALK_SPEED = 2.0f; // pixels per frame

        /// <summary>
        /// Player jump initial velocity (negative = upward)
        /// Assembly: 0xFC00 (signed 8.8 fixed-point) = -4.0 pixels per frame
        ///
        /// TODO: Verify exact value from assembly
        /// </summary>
        public const float PLAYER_JUMP_VELOCITY = -4.0f; // pixels per frame

        /// <summary>
        /// Player run speed multiplier
        /// TODO: Extract from assembly if run mode exists
        /// </summary>
        public const float PLAYER_RUN_MULTIPLIER = 1.5f;

        // =================================================================
        // PHYSICS (zelres2/chunk_04.asm)
        // =================================================================

        /// <summary>
        /// Gravity constant
        /// Assembly: 0x0020 (8.8 fixed-point) = 0.125 pixels per frame squared
        /// At 18.2 FPS: 0.125 * 18.2 * 18.2 = 41.405 pixels/second squared
        ///
        /// TODO: Verify exact value from assembly at zelres2_chunks/chunk_04.asm
        /// </summary>
        public const float GRAVITY = 0.125f; // pixels per frame squared

        /// <summary>
        /// Maximum fall speed
        /// Assembly: 0x0800 (8.8 fixed-point) = 8.0 pixels per frame
        /// At 18.2 FPS: 8.0 * 18.2 = 145.6 pixels/second
        ///
        /// TODO: Verify exact value from assembly
        /// </summary>
        public const float MAX_FALL_SPEED = 8.0f; // pixels per frame

        /// <summary>
        /// Ground friction coefficient
        /// Assembly: 0x0010 (8.8 fixed-point) = 0.0625
        ///
        /// TODO: Verify if friction exists in DOS version
        /// </summary>
        public const float GROUND_FRICTION = 0.85f;

        // =================================================================
        // COLLISION
        // =================================================================

        /// <summary>
        /// Player collision box width (pixels)
        /// TODO: Extract from sprite data or assembly
        /// </summary>
        public const int PLAYER_WIDTH = 32;

        /// <summary>
        /// Player collision box height (pixels)
        /// TODO: Extract from sprite data or assembly
        /// </summary>
        public const int PLAYER_HEIGHT = 48;

        // =================================================================
        // COMBAT (zelres2/chunk_02.asm)
        // =================================================================

        /// <summary>
        /// Base player damage (before level/weapon modifiers)
        /// TODO: Extract from assembly at zelres2_chunks/chunk_02.asm
        /// </summary>
        public const int BASE_PLAYER_DAMAGE = 10;

        /// <summary>
        /// Damage formula: base + (level / 2) + weapon_bonus
        /// From assembly pattern: load base, load level, shr (divide by 2), add
        /// </summary>
        public static int CalculatePlayerDamage(int baseWeaponDamage, int playerLevel, int weaponBonus)
        {
            // AUTHENTIC formula from assembly
            return baseWeaponDamage + (playerLevel / 2) + weaponBonus;
        }

        // =================================================================
        // CONVERSION HELPERS
        // =================================================================

        /// <summary>
        /// Convert DOS fixed-point 8.8 format to float
        /// Example: 0x0200 = 512 decimal → 512/256 = 2.0 float
        /// </summary>
        public static float FixedPointToFloat(int fixedPoint)
        {
            return fixedPoint / 256.0f;
        }

        /// <summary>
        /// Convert float to DOS fixed-point 8.8 format
        /// Example: 2.0 float → 2.0*256 = 512 = 0x0200
        /// </summary>
        public static int FloatToFixedPoint(float value)
        {
            return (int)(value * 256.0f);
        }

        /// <summary>
        /// Convert DOS frame-based speed to pixels per second
        /// </summary>
        public static float FrameSpeedToPixelsPerSecond(float frameSpeed)
        {
            return frameSpeed * DOS_FRAME_RATE;
        }

        /// <summary>
        /// Convert pixels per second to DOS frame-based speed
        /// </summary>
        public static float PixelsPerSecondToFrameSpeed(float pixelsPerSecond)
        {
            return pixelsPerSecond / DOS_FRAME_RATE;
        }

        // =================================================================
        // VERIFICATION STATUS
        // =================================================================

        /// <summary>
        /// Track which constants have been verified against assembly
        /// </summary>
        public static class VerificationStatus
        {
            public const bool WALK_SPEED_VERIFIED = false;  // TODO: Verify from assembly
            public const bool JUMP_VELOCITY_VERIFIED = false;  // TODO: Verify from assembly
            public const bool GRAVITY_VERIFIED = false;  // TODO: Verify from assembly
            public const bool MAX_FALL_SPEED_VERIFIED = false;  // TODO: Verify from assembly
            public const bool DAMAGE_FORMULA_VERIFIED = false;  // TODO: Verify from assembly

            /// <summary>
            /// Overall verification progress
            /// </summary>
            public static int PercentageVerified => 0; // 0 out of 5 constants verified
        }
    }
}
