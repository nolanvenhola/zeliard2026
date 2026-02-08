using Microsoft.Xna.Framework;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Zeliard DOS MCGA palette — extracted from DOSBox-X capture.
    /// The game uses a 3x3x3 RGB color cube (27 colors) with VGA 6-bit DAC values {0, 31, 62}.
    /// DOSBox renders these as 8-bit values {0x00, 0x7D, 0xFB} using (val &lt;&lt; 2) | (val >> 4).
    /// Different scenes may load different palettes via the gmmcga driver.
    /// </summary>
    public static class DOSPalette
    {
        // VGA 6-bit DAC intensity levels used by Zeliard's MCGA palette
        private const byte L0 = 0x00; // VGA DAC  0 → 8-bit   0
        private const byte L1 = 0x7D; // VGA DAC 31 → 8-bit 125
        private const byte L2 = 0xFB; // VGA DAC 62 → 8-bit 251

        /// <summary>
        /// The 27-color MCGA palette: a 3x3x3 RGB cube.
        /// Verified from DOSBox-X capture of Felishika's Castle scene.
        /// Index = R*9 + G*3 + B where R,G,B are intensity levels 0-2.
        /// </summary>
        public static readonly Color[] MCGA = new Color[27]
        {
            // R=0 (no red)
            new Color(L0, L0, L0), //  0: Black           (0,0,0)
            new Color(L0, L0, L1), //  1: Dark Blue        (0,0,1)
            new Color(L0, L0, L2), //  2: Blue             (0,0,2)
            new Color(L0, L1, L0), //  3: Dark Green       (0,1,0)
            new Color(L0, L1, L1), //  4: Dark Cyan        (0,1,1)
            new Color(L0, L1, L2), //  5: Sky Blue         (0,1,2)
            new Color(L0, L2, L0), //  6: Green            (0,2,0)
            new Color(L0, L2, L1), //  7: Spring Green     (0,2,1)
            new Color(L0, L2, L2), //  8: Cyan             (0,2,2)

            // R=1 (medium red)
            new Color(L1, L0, L0), //  9: Dark Red         (1,0,0)
            new Color(L1, L0, L1), // 10: Dark Magenta     (1,0,1)
            new Color(L1, L0, L2), // 11: Violet           (1,0,2)
            new Color(L1, L1, L0), // 12: Dark Yellow      (1,1,0)
            new Color(L1, L1, L1), // 13: Gray             (1,1,1)
            new Color(L1, L1, L2), // 14: Light Blue-Gray  (1,1,2)
            new Color(L1, L2, L0), // 15: Lime             (1,2,0)
            new Color(L1, L2, L1), // 16: Light Green      (1,2,1)
            new Color(L1, L2, L2), // 17: Light Cyan       (1,2,2)

            // R=2 (bright red)
            new Color(L2, L0, L0), // 18: Red              (2,0,0)
            new Color(L2, L0, L1), // 19: Rose             (2,0,1)
            new Color(L2, L0, L2), // 20: Magenta          (2,0,2)
            new Color(L2, L1, L0), // 21: Orange           (2,1,0)
            new Color(L2, L1, L1), // 22: Salmon           (2,1,1)
            new Color(L2, L1, L2), // 23: Pink             (2,1,2)
            new Color(L2, L2, L0), // 24: Yellow           (2,2,0)
            new Color(L2, L2, L1), // 25: Light Yellow     (2,2,1)
            new Color(L2, L2, L2), // 26: White            (2,2,2)
        };

        /// <summary>
        /// Active palette reference. Points to MCGA palette by default.
        /// Can be swapped at runtime for per-area palette variations.
        /// </summary>
        public static Color[] Active = MCGA;

        /// <summary>
        /// Convert a palette index to a Color using the active palette.
        /// Index 0 is treated as transparent (Alpha = 0) when transparentZero is true.
        /// </summary>
        public static Color GetColor(int index, bool transparentZero = true)
        {
            if (index < 0 || index >= Active.Length)
                return Color.Transparent;

            if (index == 0 && transparentZero)
                return Color.Transparent;

            return Active[index];
        }

        /// <summary>
        /// Build a Color from 3x3x3 cube coordinates (each 0-2).
        /// </summary>
        public static Color FromCube(int r, int g, int b)
        {
            byte[] levels = { L0, L1, L2 };
            return new Color(levels[r], levels[g], levels[b]);
        }

        /// <summary>
        /// Get the palette index for a 3x3x3 cube coordinate.
        /// </summary>
        public static int CubeIndex(int r, int g, int b)
        {
            return r * 9 + g * 3 + b;
        }

        /// <summary>
        /// Convert VGA 6-bit DAC value (0-63) to 8-bit using DOSBox-X method.
        /// Formula: (val &lt;&lt; 2) | (val >> 4)
        /// </summary>
        public static byte VGA6to8(int value)
        {
            return (byte)((value << 2) | (value >> 4));
        }

        /// <summary>
        /// Convert 8-bit color value to VGA 6-bit DAC value.
        /// </summary>
        public static byte VGA8to6(int value)
        {
            return (byte)((value * 63 + 127) / 255);
        }
    }
}
