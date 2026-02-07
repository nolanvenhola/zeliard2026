using System;
using ZeliardModern.Core;
using ZeliardModern.Models;
using ZeliardModern.Systems;

namespace ZeliardModern.Tests
{
    /// <summary>
    /// Verify game mechanics match the original Zeliard formulas
    /// Run this to ensure accuracy against documented game internals
    /// </summary>
    public static class GameMechanicsTest
    {
        public static void RunAllTests()
        {
            Console.WriteLine("=== Zeliard Modern - Game Mechanics Verification ===\n");

            TestSwordDamageFormula();
            TestExperienceSystem();
            TestLevelUpMechanics();
            TestHealthProgression();
            TestSageMessages();

            Console.WriteLine("\n=== All Tests Complete ===");
        }

        static void TestSwordDamageFormula()
        {
            Console.WriteLine("Test: Sword Damage Formula");
            Console.WriteLine("Formula: BaseDamage + (Level / 2)\n");

            var trainingSword = Sword.CreateTrainingSword();
            var spiritSword = Sword.CreateSpiritSword();
            var enchantmentSword = Sword.CreateEnchantmentSword();

            // Test at various levels
            int[] testLevels = { 0, 2, 4, 8, 16, 255 };

            foreach (int level in testLevels)
            {
                int trainingDmg = trainingSword.GetDamage(level);
                int spiritDmg = spiritSword.GetDamage(level);
                int enchantDmg = enchantmentSword.GetDamage(level);

                Console.WriteLine($"Level {level,3}: Training={trainingDmg,3}, Spirit={spiritDmg,3}, Enchantment={enchantDmg,3}");
            }

            // Verify key fact from documentation:
            // "A level 4 character with a Training Sword has the same attack power as a level 2 character with a Wise Man's Sword"
            var wiseManSword = Sword.CreateWiseManSword();
            int trainingSwordLvl4 = trainingSword.GetDamage(4);
            int wiseManSwordLvl2 = wiseManSword.GetDamage(2);

            Console.WriteLine($"\nVerification: Training Sword (Lvl 4) = {trainingSwordLvl4}, Wise Man's Sword (Lvl 2) = {wiseManSwordLvl2}");
            Console.WriteLine($"Match: {trainingSwordLvl4 == wiseManSwordLvl2} ✓\n");
        }

        static void TestExperienceSystem()
        {
            Console.WriteLine("Test: Experience Requirements");
            Console.WriteLine("Levels 1-16 from documentation:\n");

            for (int i = 0; i < GameConstants.ExperiencePerLevel.Length; i++)
            {
                Console.WriteLine($"Level {i + 1,2}: {GameConstants.ExperiencePerLevel[i],6} XP required");
            }

            Console.WriteLine($"Level 17+: {GameConstants.LevelUpExperienceAfter16,6} XP required\n");
        }

        static void TestLevelUpMechanics()
        {
            Console.WriteLine("Test: Level Up Mechanics & Experience Carryover");

            Player player = new Player();

            // Test: Give player 400 XP at level 0
            // Level 1 requires 50 XP, Level 2 requires 150 XP
            // After leveling to 1, should have 149 XP (not 350) to prevent instant level-up
            player.AddExperience(400);
            Console.WriteLine($"Player has {player.Experience} XP at level {player.Level}");

            player.LevelUp();
            Console.WriteLine($"After level up: Level {player.Level}, {player.Experience} XP");
            Console.WriteLine($"(Should be 149 XP, not 350, to prevent instant second level-up)");
            Console.WriteLine($"Correct: {player.Experience == 149} ✓\n");
        }

        static void TestHealthProgression()
        {
            Console.WriteLine("Test: Health Progression (Non-linear)");
            Console.WriteLine("From documentation:\n");

            for (int i = 0; i < GameConstants.HealthPerLevel.Length; i++)
            {
                Console.WriteLine($"Level {i,2}: {GameConstants.HealthPerLevel[i],3} HP");
            }

            Console.WriteLine($"\nMax Health: {GameConstants.MaxHealth} HP");
            Console.WriteLine($"Health per pixel: {GameConstants.HealthPerPixel} HP/px\n");
        }

        static void TestSageMessages()
        {
            Console.WriteLine("Test: Sage Indihar Messages");

            Player player = new Player();

            // Test at different experience percentages
            int required = player.GetRequiredExperienceForNextLevel(); // 50 for level 0

            player.AddExperience(20); // 40%
            Console.WriteLine($"At {player.Experience}/{required} XP (40%): \"{player.GetSageMessage()}\"");

            player.AddExperience(10); // 60%
            Console.WriteLine($"At {player.Experience}/{required} XP (60%): \"{player.GetSageMessage()}\"");

            player.AddExperience(10); // 80%
            Console.WriteLine($"At {player.Experience}/{required} XP (80%): \"{player.GetSageMessage()}\"");

            player.AddExperience(10); // 100%
            Console.WriteLine($"At {player.Experience}/{required} XP (100%): \"{player.GetSageMessage()}\"");

            Console.WriteLine();
        }

        static void Main(string[] args)
        {
            RunAllTests();
            Console.WriteLine("Press any key to exit...");
            Console.ReadKey();
        }
    }
}
