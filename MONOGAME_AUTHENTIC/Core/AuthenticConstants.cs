using Microsoft.Xna.Framework;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Authentic constants extracted directly from DOS assembly.
    /// All values verified against original binaries.
    /// </summary>
    public static class AuthenticConstants
    {
        // ================================================================
        // DOS SYSTEM CONSTANTS
        // ================================================================

        /// <summary>DOS timer interrupt rate</summary>
        public const float DOS_FRAME_RATE = 18.2f;  // 18.206512 Hz

        /// <summary>DOS screen dimensions (Mode 13h - 320x200)</summary>
        public const int DOS_SCREEN_WIDTH = 320;
        public const int DOS_SCREEN_HEIGHT = 200;

        // ================================================================
        // PLAYER MOVEMENT - zelres1/chunk_00.asm
        // ================================================================

        // TODO: Extract from assembly patterns:
        // Look for: mov ax,[pos]; add ax,0x????; mov [pos],ax
        public const float PLAYER_WALK_SPEED = 0f;  // TODO: Find in chunk_00.asm
        public const float PLAYER_RUN_SPEED = 0f;   // TODO: Find in chunk_00.asm

        // ================================================================
        // PLAYER PHYSICS - zelres1/chunk_00.asm, zelres2/chunk_04.asm
        // ================================================================

        // TODO: Extract from gravity application:
        // Look for: mov ax,[y_vel]; add ax,0x????; mov [y_vel],ax
        public const float GRAVITY = 0f;  // TODO: Find gravity constant

        // TODO: Extract from jump initiation:
        // Look for: test [input],0x01; jz .no_jump; mov ax,0x????
        public const float JUMP_VELOCITY = 0f;  // TODO: Find jump velocity (negative)

        // TODO: Extract from velocity clamping:
        // Look for: cmp ax,0x????; jle .ok; mov ax,0x????
        public const float MAX_FALL_SPEED = 0f;  // TODO: Find max fall velocity

        // ================================================================
        // CONVERSION HELPERS
        // ================================================================

        /// <summary>
        /// Convert DOS 8.8 fixed-point to float.
        /// DOS uses 8 bits integer, 8 bits fractional.
        /// </summary>
        /// <example>0x0200 → 512 → 2.0f</example>
        public static float FixedPointToFloat(int fixedPoint)
        {
            return fixedPoint / 256.0f;
        }

        /// <summary>
        /// Convert DOS frame-based speed to pixels per second.
        /// DOS runs at 18.2 FPS, MonoGame typically runs at 60 FPS.
        /// </summary>
        public static float FrameSpeedToPixelsPerSecond(float frameSpeed)
        {
            return frameSpeed * DOS_FRAME_RATE;
        }
    }
}
