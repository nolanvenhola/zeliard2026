using System;

namespace ZeliardAuthentic
{
    /// <summary>
    /// Main entry point for Zeliard Authentic MonoGame port.
    /// </summary>
    public static class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            // Check for test mode
            if (args.Length > 0 && args[0] == "--test")
            {
                Console.WriteLine("Running in TEST mode...");
                Tests.SaveLoadTest.Main(args);
                return;
            }

            // Normal game mode
            using (var game = new Game1())
            {
                game.Run();
            }
        }
    }
}
