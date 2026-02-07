using System;
using System.IO;

namespace ZeliardModern.Tools
{
    /// <summary>
    /// Verify all assets are present and accounted for
    /// Run before building to ensure content is ready
    /// </summary>
    class TestAssetLoading
    {
        static void Main(string[] args)
        {
            Console.WriteLine("=== Zeliard Modern Asset Verification ===\n");

            string contentPath = Path.Combine("..", "Content");
            int totalAssets = 0;
            int foundAssets = 0;

            // Check sprites
            Console.WriteLine("Checking Sprites...");
            string spritePath = Path.Combine(contentPath, "Sprites");

            string[] expectedSprites = new string[]
            {
                "PlayerSword.png",
                "Area1Enemies.png", "Area2Enemies.png", "Area3Enemies.png", "Area4Enemies.png",
                "Area5Enemies.png", "Area6Enemies.png", "Area7Enemies.png", "Area8Enemies.png",
                "Boss1Cangreo.png", "Boss2Pulpo.png", "Boss3Pollo.png", "Boss4Agar.png",
                "Boss5Vista.png", "Boss6Tarso.png", "Boss7Dragon.png", "Boss8Alguien.png",
                "Boss9Archfiend.png",
                "SpellAnimations.png", "LabyrinthSprites.png", "ConnectingTunnels.png",
                "NPCs.png", "Shops.png", "TownBackgrounds.png"
            };

            foreach (var sprite in expectedSprites)
            {
                totalAssets++;
                string fullPath = Path.Combine(spritePath, sprite);
                if (File.Exists(fullPath))
                {
                    foundAssets++;
                    Console.WriteLine($"  ✓ {sprite}");
                }
                else
                {
                    Console.WriteLine($"  ✗ MISSING: {sprite}");
                }
            }

            // Check tilesets
            Console.WriteLine("\nChecking Tilesets...");
            string tilesetPath = Path.Combine(contentPath, "Tilesets");

            string[] expectedTilesets = new string[]
            {
                "LabyrinthTiles.png",
                "TownTiles.png"
            };

            foreach (var tileset in expectedTilesets)
            {
                totalAssets++;
                string fullPath = Path.Combine(tilesetPath, tileset);
                if (File.Exists(fullPath))
                {
                    foundAssets++;
                    Console.WriteLine($"  ✓ {tileset}");
                }
                else
                {
                    Console.WriteLine($"  ✗ MISSING: {tileset}");
                }
            }

            // Check UI
            Console.WriteLine("\nChecking UI...");
            string uiPath = Path.Combine(contentPath, "UI");

            string[] expectedUI = new string[]
            {
                "HUD.png"
            };

            foreach (var ui in expectedUI)
            {
                totalAssets++;
                string fullPath = Path.Combine(uiPath, ui);
                if (File.Exists(fullPath))
                {
                    foundAssets++;
                    Console.WriteLine($"  ✓ {ui}");
                }
                else
                {
                    Console.WriteLine($"  ✗ MISSING: {ui}");
                }
            }

            // Summary
            Console.WriteLine("\n" + new string('=', 50));
            Console.WriteLine($"Total Assets: {totalAssets}");
            Console.WriteLine($"Found: {foundAssets}");
            Console.WriteLine($"Missing: {totalAssets - foundAssets}");

            if (foundAssets == totalAssets)
            {
                Console.WriteLine("\n✓ ALL ASSETS PRESENT! Ready to build.");
                Environment.Exit(0);
            }
            else
            {
                Console.WriteLine($"\n✗ {totalAssets - foundAssets} assets missing. Please check paths.");
                Environment.Exit(1);
            }
        }
    }
}
