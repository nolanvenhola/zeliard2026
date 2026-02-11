using System;
using System.IO;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardAuthentic.Core;

// Quick utility to render VGA framebuffer dumps as PNG files
// Usage: dotnet run MEMDUMP_logo.BIN logo_output.png

class Program
{
    static void Main(string[] args)
    {
        if (args.Length < 2)
        {
            Console.WriteLine("Usage: RenderVGA <input.bin> <output.png>");
            return;
        }

        string inputPath = args[0];
        string outputPath = args[1];

        if (!File.Exists(inputPath))
        {
            Console.WriteLine($"Error: Input file not found: {inputPath}");
            return;
        }

        byte[] vgaData = File.ReadAllBytes(inputPath);
        Console.WriteLine($"Read {vgaData.Length} bytes from {inputPath}");

        if (vgaData.Length != 64000)
        {
            Console.WriteLine($"Warning: Expected 64000 bytes (320x200), got {vgaData.Length}");
        }

        // Create a minimal GraphicsDevice for rendering
        using (var game = new DummyGame())
        {
            game.Run();

            var texture = GrpDecoder.RenderVGAFramebuffer(game.GraphicsDevice, vgaData);

            if (texture != null)
            {
                // Save as PNG
                using (var stream = File.Create(outputPath))
                {
                    texture.SaveAsPng(stream, texture.Width, texture.Height);
                }
                Console.WriteLine($"Rendered {texture.Width}x{texture.Height} image to {outputPath}");
            }
            else
            {
                Console.WriteLine("Error: Failed to render VGA framebuffer");
            }
        }
    }
}

class DummyGame : Game
{
    public DummyGame()
    {
        new GraphicsDeviceManager(this)
        {
            PreferredBackBufferWidth = 320,
            PreferredBackBufferHeight = 200
        };
    }

    protected override void Initialize()
    {
        base.Initialize();
        Exit();
    }
}
