using System;
using System.IO;
using ZeliardAuthentic.Core;

namespace ZeliardAuthentic.Tests
{
    /// <summary>
    /// Test program to verify save/load system works with authentic DOS .USR files.
    /// Run this to validate against example saves from Resources/Saved Games/.
    /// </summary>
    public class SaveLoadTest
    {
        /// <summary>
        /// Run save/load tests. Called from Program.cs when --test flag is used.
        /// </summary>
        public static void Main(string[] args)
        {
            Console.WriteLine("=================================================");
            Console.WriteLine("  Zeliard Save/Load System Test");
            Console.WriteLine("  Testing against authentic DOS save files");
            Console.WriteLine("=================================================");
            Console.WriteLine();

            // Use the "Saved" folder in the execution directory
            // DOS save files are auto-copied here during build
            string savedFolder = Path.Combine(Directory.GetCurrentDirectory(), "Saved");
            savedFolder = Path.GetFullPath(savedFolder);

            Console.WriteLine($"Save Files Directory: {savedFolder}");
            Console.WriteLine();

            if (!Directory.Exists(savedFolder))
            {
                Console.WriteLine("ERROR: Saved folder not found!");
                Console.WriteLine("Expected path: " + savedFolder);
                Console.WriteLine("Make sure to build the project first: dotnet build");
                return;
            }

            // Create SaveManager pointing to Saved folder
            SaveManager manager = new SaveManager(savedFolder);

            // Test 1: List all saves
            Console.WriteLine("--- Test 1: List All Saves ---");
            string[] saves = manager.GetAllSaves();
            Console.WriteLine($"Found {saves.Length} save files:");
            foreach (string save in saves)
            {
                Console.WriteLine($"  - {save}");
            }
            Console.WriteLine();

            // Test 2: Load and analyze specific saves
            Console.WriteLine("--- Test 2: Load Specific Saves ---");
            TestLoadSave(manager, "Muralla");  // Early game
            TestLoadSave(manager, "Gold");     // Late game
            TestLoadSave(manager, "Bosque");   // Mid game
            Console.WriteLine();

            // Test 3: Hex dump comparison
            Console.WriteLine("--- Test 3: Hex Dump (Muralla - Early Game) ---");
            manager.DumpSaveFile("Muralla");
            Console.WriteLine();

            Console.WriteLine("--- Test 3: Hex Dump (Gold - Late Game) ---");
            manager.DumpSaveFile("Gold");
            Console.WriteLine();

            // Test 4: Create new save and verify
            Console.WriteLine("--- Test 4: Create New Save ---");
            TestCreateNewSave(manager);
            Console.WriteLine();

            // Test 5: Load, modify, save
            Console.WriteLine("--- Test 5: Load, Modify, Save ---");
            TestModifySave(manager, manager);
            Console.WriteLine();

            Console.WriteLine("=================================================");
            Console.WriteLine("  All tests completed!");
            Console.WriteLine("=================================================");
        }

        static void TestLoadSave(SaveManager manager, string playerName)
        {
            Console.WriteLine($"\nLoading: {playerName}.usr");

            SaveFile? save = manager.LoadGame(playerName);
            if (save == null)
            {
                Console.WriteLine($"  ❌ Failed to load!");
                return;
            }

            SaveFile s = save.Value;

            Console.WriteLine($"  ✅ Loaded successfully");
            Console.WriteLine($"  Valid: {s.IsValid()}");
            Console.WriteLine($"  Progression: {s.GetProgressionPercentage():F1}%");
            Console.WriteLine($"  New Game: {SaveFileHelpers.IsNewGame(s)}");
            Console.WriteLine($"  Late Game: {SaveFileHelpers.IsLateGame(s)}");

            // Show first 16 bytes of each section
            Console.WriteLine($"  Progression Flags [0-15]: {BytesToHex(s.ProgressionFlags, 0, 16)}");
            Console.WriteLine($"  Player State [0-15]:      {BytesToHex(s.PlayerState, 0, 16)}");
            Console.WriteLine($"  Inventory [0-15]:         {BytesToHex(s.Inventory, 0, 16)}");
            Console.WriteLine($"  Magic Marker [0-15]:      {BytesToHex(s.MagicMarker, 0, 16)}");
        }

        static void TestCreateNewSave(SaveManager manager)
        {
            SaveFile newSave = SaveFile.CreateNew();

            // Set up as new game (Muralla pattern)
            newSave.ProgressionFlags[0] = 0x00;
            newSave.ProgressionFlags[1] = 0x00;
            newSave.ProgressionFlags[2] = 0xF0;
            newSave.ProgressionFlags[3] = 0x00;

            // Set magic marker (constant pattern)
            newSave.MagicMarker[9] = 0x8A;
            newSave.MagicMarker[10] = 0xA6;
            newSave.MagicMarker[11] = 0x6B;
            newSave.MagicMarker[12] = 0x75;
            newSave.MagicMarker[13] = 0x42;
            newSave.MagicMarker[14] = 0x4C;
            newSave.MagicMarker[15] = 0x4B;

            string testName = "TESTGAME";
            bool success = manager.SaveGame(testName, newSave);

            Console.WriteLine($"Created new save: {testName}.usr");
            Console.WriteLine($"  Save result: {(success ? "✅ Success" : "❌ Failed")}");
            Console.WriteLine($"  Valid: {newSave.IsValid()}");

            // Verify by loading it back
            SaveFile? loaded = manager.LoadGame(testName);
            if (loaded != null)
            {
                Console.WriteLine($"  ✅ Verified: Loaded back successfully");
                Console.WriteLine($"  Loaded is valid: {loaded.Value.IsValid()}");
            }
            else
            {
                Console.WriteLine($"  ❌ Verification failed: Could not load back");
            }
        }

        static void TestModifySave(SaveManager loadManager, SaveManager saveManager)
        {
            string originalName = "Muralla";
            string modifiedName = "MODIFIED";

            Console.WriteLine($"Loading {originalName}.usr from DOS saves...");
            SaveFile? save = loadManager.LoadGame(originalName);

            if (save == null)
            {
                Console.WriteLine("  ❌ Failed to load original");
                return;
            }

            SaveFile s = save.Value;
            Console.WriteLine($"  ✅ Loaded");
            Console.WriteLine($"  Original progression: {s.GetProgressionPercentage():F1}%");

            // Modify progression flags (simulate game progress)
            s.ProgressionFlags[0] = 0xFF;
            s.ProgressionFlags[1] = 0xFF;

            Console.WriteLine($"  Modified progression: {s.GetProgressionPercentage():F1}%");

            // Save to Saved folder
            bool success = saveManager.SaveGame(modifiedName, s);
            Console.WriteLine($"  Save to Saved/{modifiedName}.usr: {(success ? "✅ Success" : "❌ Failed")}");

            // Verify
            SaveFile? loaded = saveManager.LoadGame(modifiedName);
            if (loaded != null)
            {
                Console.WriteLine($"  ✅ Verified: Changes persisted");
                Console.WriteLine($"  Loaded progression: {loaded.Value.GetProgressionPercentage():F1}%");
            }
        }

        static string BytesToHex(byte[] bytes, int offset, int count)
        {
            if (bytes == null || offset + count > bytes.Length)
                return "Invalid";

            string hex = "";
            for (int i = 0; i < count; i++)
            {
                hex += $"{bytes[offset + i]:X2} ";
            }
            return hex.TrimEnd();
        }
    }
}
