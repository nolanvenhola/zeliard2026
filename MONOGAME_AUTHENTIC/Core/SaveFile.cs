using System;
using System.Runtime.InteropServices;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Zeliard save file structure (.USR format) - 256 bytes fixed.
    /// Structure reverse-engineered from DOS assembly (chunk_17.asm).
    /// </summary>
    [StructLayout(LayoutKind.Sequential, Pack = 1, Size = 256)]
    public struct SaveFile
    {
        // ================================================================
        // SECTION 1: Progression Flags (0x00-0x7F) - 128 bytes
        // ================================================================

        /// <summary>
        /// Bitflags tracking game progression, unlocked areas, defeated bosses, etc.
        /// Pattern: New game = 0x0000, Late game = 0xFFFF
        /// </summary>
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 128)]
        public byte[] ProgressionFlags;

        // ================================================================
        // SECTION 2: Player State (0x80-0x9F) - 32 bytes
        // ================================================================

        /// <summary>
        /// Player state including position, stats, gold, etc.
        /// Offset 0x80 in file
        /// </summary>
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 32)]
        public byte[] PlayerState;

        // ================================================================
        // SECTION 3: Inventory/Equipment (0xA0-0xBF) - 32 bytes
        // ================================================================

        /// <summary>
        /// Items, weapons, armor, equipped gear.
        /// Early game: mostly zeros, Late game: many values + "FFFR" patterns
        /// Offset 0xA0 in file
        /// </summary>
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 32)]
        public byte[] Inventory;

        // ================================================================
        // SECTION 4: Magic Marker (0xC0-0xCF) - 16 bytes
        // ================================================================

        /// <summary>
        /// File format marker with constant pattern.
        /// Bytes 0xC9-0xCF always: 8A A6 6B 75 42 4C 4B
        /// Offset 0xC0 in file
        /// </summary>
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 16)]
        public byte[] MagicMarker;

        // ================================================================
        // SECTION 5: Extended Data (0xD0-0xFF) - 48 bytes
        // ================================================================

        /// <summary>
        /// Additional game state, possibly cached code or compressed data.
        /// Offset 0xD0 in file
        /// </summary>
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 48)]
        public byte[] ExtendedData;

        /// <summary>
        /// Create a new empty save file structure.
        /// </summary>
        public static SaveFile CreateNew()
        {
            return new SaveFile
            {
                ProgressionFlags = new byte[128],
                PlayerState = new byte[32],
                Inventory = new byte[32],
                MagicMarker = new byte[16],
                ExtendedData = new byte[48]
            };
        }

        /// <summary>
        /// Validate that this is a valid Zeliard save file.
        /// Checks for the constant magic marker pattern at 0xC9-0xCF.
        /// </summary>
        public bool IsValid()
        {
            if (MagicMarker == null || MagicMarker.Length < 16)
                return false;

            // Check constant pattern: 8A A6 6B 75 42 4C 4B at offset 0xC9 (9 bytes into marker)
            return MagicMarker[9] == 0x8A &&
                   MagicMarker[10] == 0xA6 &&
                   MagicMarker[11] == 0x6B &&
                   MagicMarker[12] == 0x75 &&
                   MagicMarker[13] == 0x42 &&
                   MagicMarker[14] == 0x4C &&
                   MagicMarker[15] == 0x4B;
        }

        /// <summary>
        /// Get game progression as percentage (0-100).
        /// Based on number of set bits in progression flags.
        /// </summary>
        public float GetProgressionPercentage()
        {
            if (ProgressionFlags == null)
                return 0f;

            int setBits = 0;
            foreach (byte b in ProgressionFlags)
            {
                // Count set bits
                for (int i = 0; i < 8; i++)
                {
                    if ((b & (1 << i)) != 0)
                        setBits++;
                }
            }

            return (setBits / (128f * 8f)) * 100f;
        }
    }

    /// <summary>
    /// Helper methods for working with save file sections.
    /// Based on analysis of DOS assembly and example save files.
    /// </summary>
    public static class SaveFileHelpers
    {
        /// <summary>
        /// Check if this appears to be a new game save (minimal progression).
        /// Pattern: First 4 bytes are 0x0000 0xF000 (Muralla.usr pattern)
        /// </summary>
        public static bool IsNewGame(SaveFile save)
        {
            return save.ProgressionFlags[0] == 0x00 &&
                   save.ProgressionFlags[1] == 0x00 &&
                   save.ProgressionFlags[2] == 0xF0 &&
                   save.ProgressionFlags[3] == 0x00;
        }

        /// <summary>
        /// Check if this appears to be a late game save (high progression).
        /// Pattern: First 4 bytes are 0xFFFF 0xF8E0 (most saves pattern)
        /// </summary>
        public static bool IsLateGame(SaveFile save)
        {
            return save.ProgressionFlags[0] == 0xFF &&
                   save.ProgressionFlags[1] == 0xFF &&
                   save.ProgressionFlags[2] == 0xF8 &&
                   save.ProgressionFlags[3] == 0xE0;
        }

        /// <summary>
        /// Read 16-bit value (little-endian) from byte array at offset.
        /// DOS uses little-endian format.
        /// </summary>
        public static ushort ReadUInt16(byte[] data, int offset)
        {
            return (ushort)(data[offset] | (data[offset + 1] << 8));
        }

        /// <summary>
        /// Write 16-bit value (little-endian) to byte array at offset.
        /// </summary>
        public static void WriteUInt16(byte[] data, int offset, ushort value)
        {
            data[offset] = (byte)(value & 0xFF);
            data[offset + 1] = (byte)((value >> 8) & 0xFF);
        }

        /// <summary>
        /// Read 32-bit value (little-endian) from byte array at offset.
        /// </summary>
        public static uint ReadUInt32(byte[] data, int offset)
        {
            return (uint)(data[offset] |
                         (data[offset + 1] << 8) |
                         (data[offset + 2] << 16) |
                         (data[offset + 3] << 24));
        }

        /// <summary>
        /// Write 32-bit value (little-endian) to byte array at offset.
        /// </summary>
        public static void WriteUInt32(byte[] data, int offset, uint value)
        {
            data[offset] = (byte)(value & 0xFF);
            data[offset + 1] = (byte)((value >> 8) & 0xFF);
            data[offset + 2] = (byte)((value >> 16) & 0xFF);
            data[offset + 3] = (byte)((value >> 24) & 0xFF);
        }
    }
}
