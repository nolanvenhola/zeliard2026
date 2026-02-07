namespace ZeliardModern.Core
{
    /// <summary>
    /// Game constants based on reverse-engineered Zeliard mechanics
    /// Reference: Zeliard Game Internals documentation
    /// </summary>
    public static class GameConstants
    {
        // Experience System
        public const int MaxLevel = 255;
        public const int MaxExperience = 65535;
        public const int LevelUpExperienceAfter16 = 60000;

        // Experience required for each level (0-16)
        public static readonly int[] ExperiencePerLevel = new int[]
        {
            50,      // Level 1
            150,     // Level 2
            300,     // Level 3
            420,     // Level 4
            1000,    // Level 5
            1500,    // Level 6
            3000,    // Level 7
            5000,    // Level 8
            6000,    // Level 9
            8000,    // Level 10
            10000,   // Level 11
            15000,   // Level 12
            20000,   // Level 13
            40000,   // Level 14
            50000,   // Level 15
            60000    // Level 16
        };

        // Health progression per level (0-15)
        public static readonly int[] HealthPerLevel = new int[]
        {
            80,      // Level 0
            120,     // Level 1
            160,     // Level 2
            240,     // Level 3
            280,     // Level 4
            320,     // Level 5
            380,     // Level 6
            460,     // Level 7
            540,     // Level 8
            600,     // Level 9
            640,     // Level 10
            680,     // Level 11
            720,     // Level 12
            760,     // Level 13
            780,     // Level 14
            800      // Level 15 (max)
        };

        public const int MaxHealth = 800;
        public const int HealthPerPixel = 8;

        // Sword Base Damage Values
        public static readonly int[] SwordBaseDamage = new int[]
        {
            1,       // Training Sword
            2,       // Wise Man's Sword
            4,       // Spirit Sword
            8,       // Knight's Sword
            16,      // Enchantment Sword
            255      // Ultimate Sword (if it exists)
        };

        // Sword damage formula: BaseDamage + (Level / 2)
        // Note: Integer division, so levels are effectively grouped in pairs
    }
}
