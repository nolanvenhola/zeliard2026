using System;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Collections.Generic;

namespace ZeliardModern.Tools
{
    /// <summary>
    /// Converts BMP map files to tile data arrays
    /// Analyzes the map images and generates tile-based level data
    /// </summary>
    public class MapConverter
    {
        private Dictionary<uint, int> _colorToTileId;
        private int _tileWidth;
        private int _tileHeight;

        public MapConverter(int tileWidth = 16, int tileHeight = 16)
        {
            _tileWidth = tileWidth;
            _tileHeight = tileHeight;
            _colorToTileId = new Dictionary<uint, int>();

            // Initialize default color mappings
            InitializeColorMappings();
        }

        private void InitializeColorMappings()
        {
            // Map colors to tile IDs
            // These will need to be adjusted based on actual map colors
            _colorToTileId[0xFF000000] = 1;  // Black = Solid wall
            _colorToTileId[0xFFFFFFFF] = 0;  // White = Air
            _colorToTileId[0xFF808080] = 2;  // Gray = Platform
            _colorToTileId[0xFF0000FF] = 3;  // Blue = Water/hazard
            _colorToTileId[0xFFFF0000] = 4;  // Red = Spikes
            _colorToTileId[0xFF00FF00] = 5;  // Green = Door/exit
        }

        public void AddColorMapping(Color color, int tileId)
        {
            uint colorValue = (uint)color.ToArgb();
            _colorToTileId[colorValue] = tileId;
        }

        /// <summary>
        /// Convert a BMP file to tile data
        /// </summary>
        public int[,] ConvertBitmapToTiles(string bmpPath)
        {
            using (Bitmap bitmap = new Bitmap(bmpPath))
            {
                int width = bitmap.Width / _tileWidth;
                int height = bitmap.Height / _tileHeight;
                int[,] tileData = new int[width, height];

                // Sample each tile area
                for (int tileY = 0; tileY < height; tileY++)
                {
                    for (int tileX = 0; tileX < width; tileX++)
                    {
                        // Sample the center pixel of each tile
                        int pixelX = tileX * _tileWidth + _tileWidth / 2;
                        int pixelY = tileY * _tileHeight + _tileHeight / 2;

                        Color pixelColor = bitmap.GetPixel(pixelX, pixelY);
                        uint colorValue = (uint)pixelColor.ToArgb();

                        // Find matching tile ID
                        if (_colorToTileId.TryGetValue(colorValue, out int tileId))
                        {
                            tileData[tileX, tileY] = tileId;
                        }
                        else
                        {
                            // Default to air if color not recognized
                            tileData[tileX, tileY] = 0;
                        }
                    }
                }

                return tileData;
            }
        }

        /// <summary>
        /// Analyze a bitmap to find unique colors (for setting up mappings)
        /// </summary>
        public Dictionary<uint, int> AnalyzeBitmapColors(string bmpPath)
        {
            var colorCounts = new Dictionary<uint, int>();

            using (Bitmap bitmap = new Bitmap(bmpPath))
            {
                for (int y = 0; y < bitmap.Height; y++)
                {
                    for (int x = 0; x < bitmap.Width; x++)
                    {
                        Color pixel = bitmap.GetPixel(x, y);
                        uint colorValue = (uint)pixel.ToArgb();

                        if (colorCounts.ContainsKey(colorValue))
                            colorCounts[colorValue]++;
                        else
                            colorCounts[colorValue] = 1;
                    }
                }
            }

            return colorCounts;
        }

        /// <summary>
        /// Save tile data to a C# array format
        /// </summary>
        public void SaveTileDataAsCode(int[,] tileData, string outputPath, string arrayName = "levelData")
        {
            using (StreamWriter writer = new StreamWriter(outputPath))
            {
                int width = tileData.GetLength(0);
                int height = tileData.GetLength(1);

                writer.WriteLine("// Auto-generated tile data");
                writer.WriteLine($"// Size: {width}x{height}");
                writer.WriteLine();
                writer.WriteLine($"public static readonly int[,] {arrayName} = new int[,]");
                writer.WriteLine("{");

                for (int y = 0; y < height; y++)
                {
                    writer.Write("    { ");
                    for (int x = 0; x < width; x++)
                    {
                        writer.Write($"{tileData[x, y]}");
                        if (x < width - 1)
                            writer.Write(", ");
                    }
                    writer.Write(" }");
                    if (y < height - 1)
                        writer.WriteLine(",");
                    else
                        writer.WriteLine();
                }

                writer.WriteLine("};");
            }
        }

        /// <summary>
        /// Save tile data in binary format (more compact)
        /// </summary>
        public void SaveTileDataBinary(int[,] tileData, string outputPath)
        {
            using (BinaryWriter writer = new BinaryWriter(File.Open(outputPath, FileMode.Create)))
            {
                int width = tileData.GetLength(0);
                int height = tileData.GetLength(1);

                writer.Write(width);
                writer.Write(height);

                for (int y = 0; y < height; y++)
                {
                    for (int x = 0; x < width; x++)
                    {
                        writer.Write(tileData[x, y]);
                    }
                }
            }
        }

        /// <summary>
        /// Load tile data from binary format
        /// </summary>
        public static int[,] LoadTileDataBinary(string inputPath)
        {
            using (BinaryReader reader = new BinaryReader(File.Open(inputPath, FileMode.Open)))
            {
                int width = reader.ReadInt32();
                int height = reader.ReadInt32();
                int[,] tileData = new int[width, height];

                for (int y = 0; y < height; y++)
                {
                    for (int x = 0; x < width; x++)
                    {
                        tileData[x, y] = reader.ReadInt32();
                    }
                }

                return tileData;
            }
        }

        /// <summary>
        /// Generate a simple visualization of the tile data
        /// </summary>
        public void VisualizeTileData(int[,] tileData, string outputPath)
        {
            int width = tileData.GetLength(0);
            int height = tileData.GetLength(1);

            using (Bitmap bitmap = new Bitmap(width * _tileWidth, height * _tileHeight))
            using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap))
            {
                g.Clear(Color.White);

                for (int y = 0; y < height; y++)
                {
                    for (int x = 0; x < width; x++)
                    {
                        Color tileColor = GetTileColor(tileData[x, y]);
                        using (SolidBrush brush = new SolidBrush(tileColor))
                        {
                            g.FillRectangle(brush,
                                x * _tileWidth,
                                y * _tileHeight,
                                _tileWidth,
                                _tileHeight);
                        }
                    }
                }

                bitmap.Save(outputPath, ImageFormat.Png);
            }
        }

        private Color GetTileColor(int tileId)
        {
            return tileId switch
            {
                0 => Color.White,        // Air
                1 => Color.Black,        // Solid
                2 => Color.Gray,         // Platform
                3 => Color.Blue,         // Water
                4 => Color.Red,          // Spikes
                5 => Color.Green,        // Door
                _ => Color.Magenta       // Unknown
            };
        }

        /// <summary>
        /// Process all maps in a directory
        /// </summary>
        public void ConvertAllMapsInDirectory(string inputDir, string outputDir)
        {
            if (!Directory.Exists(outputDir))
                Directory.CreateDirectory(outputDir);

            var bmpFiles = Directory.GetFiles(inputDir, "*.bmp");

            Console.WriteLine($"Found {bmpFiles.Length} BMP files to convert...");

            foreach (var bmpFile in bmpFiles)
            {
                string fileName = Path.GetFileNameWithoutExtension(bmpFile);
                Console.WriteLine($"Converting {fileName}...");

                try
                {
                    int[,] tileData = ConvertBitmapToTiles(bmpFile);

                    // Save as binary
                    string binaryPath = Path.Combine(outputDir, $"{fileName}.tilemap");
                    SaveTileDataBinary(tileData, binaryPath);

                    // Save as C# code
                    string codePath = Path.Combine(outputDir, $"{fileName}.cs");
                    SaveTileDataAsCode(tileData, codePath, fileName.Replace("-", "_"));

                    // Save visualization
                    string vizPath = Path.Combine(outputDir, $"{fileName}_viz.png");
                    VisualizeTileData(tileData, vizPath);

                    Console.WriteLine($"  Saved to {fileName}.tilemap");
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"  ERROR: {ex.Message}");
                }
            }

            Console.WriteLine("Conversion complete!");
        }
    }

    /// <summary>
    /// Console application to run the map converter
    /// </summary>
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("=== Zeliard Map Converter ===");
            Console.WriteLine();

            if (args.Length < 2)
            {
                Console.WriteLine("Usage: MapConverter <input_dir> <output_dir>");
                Console.WriteLine();
                Console.WriteLine("Example:");
                Console.WriteLine("  MapConverter ../Source/Maps ../ZeliardModern/Content/Maps");
                return;
            }

            string inputDir = args[0];
            string outputDir = args[1];

            if (!Directory.Exists(inputDir))
            {
                Console.WriteLine($"Error: Input directory '{inputDir}' not found!");
                return;
            }

            var converter = new MapConverter(16, 16);

            // First, analyze one map to see what colors are used
            var bmpFiles = Directory.GetFiles(inputDir, "*.bmp");
            if (bmpFiles.Length > 0)
            {
                Console.WriteLine($"Analyzing {Path.GetFileName(bmpFiles[0])} for colors...");
                var colors = converter.AnalyzeBitmapColors(bmpFiles[0]);

                Console.WriteLine($"Found {colors.Count} unique colors:");
                foreach (var kvp in colors)
                {
                    Color c = Color.FromArgb((int)kvp.Key);
                    Console.WriteLine($"  RGB({c.R},{c.G},{c.B}) - {kvp.Value} pixels");
                }
                Console.WriteLine();
            }

            // Convert all maps
            converter.ConvertAllMapsInDirectory(inputDir, outputDir);

            Console.WriteLine();
            Console.WriteLine("Press any key to exit...");
            Console.ReadKey();
        }
    }
}
