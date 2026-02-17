using System.Diagnostics;
using System.Text;

namespace SourcerRunner;

class Program
{
    static int Main(string[] args)
    {
        Console.WriteLine("=== Sourcer Runner for DOSBox ===");
        Console.WriteLine();

        if (args.Length == 0 || args.Contains("--help") || args.Contains("-h"))
        {
            ShowHelp();
            return 0;
        }

        try
        {
            var config = ParseArguments(args);
            var logFile = CreateLogFile(config.LogDir);

            Log($"Starting Sourcer disassembly at {DateTime.Now}", logFile);
            Log($"Input file: {config.InputFile}", logFile);

            var result = RunSourcerInDosBox(config, logFile);

            Log($"Disassembly completed with exit code: {result}", logFile);
            Console.WriteLine($"\nLog saved to: {logFile}");

            return result;
        }
        catch (Exception ex)
        {
            Console.Error.WriteLine($"ERROR: {ex.Message}");
            return 1;
        }
    }

    static void ShowHelp()
    {
        Console.WriteLine("Usage: SourcerRunner <inputfile> [options]");
        Console.WriteLine();
        Console.WriteLine("Arguments:");
        Console.WriteLine("  <inputfile>            Path to binary/EXE/COM file to disassemble");
        Console.WriteLine();
        Console.WriteLine("Options:");
        Console.WriteLine("  --dosbox <path>        Path to DOSBox executable (default: ./dosbox/dosbox.exe - bundled)");
        Console.WriteLine("  --sourcer <path>       Path to Sourcer directory (default: ./sourcer - bundled)");
        Console.WriteLine("  --output <path>        Output directory for .asm files (default: same as input)");
        Console.WriteLine("  --logdir <path>        Directory for log files (default: ./logs)");
        Console.WriteLine("  --sourcer-args <args>  Additional Sourcer arguments (default: none)");
        Console.WriteLine("  --keep-conf            Keep temporary DOSBox config file");
        Console.WriteLine();
        Console.WriteLine("Examples:");
        Console.WriteLine("  SourcerRunner program.exe");
        Console.WriteLine("  SourcerRunner program.com --output ./disasm");
        Console.WriteLine("  SourcerRunner file.bin --sourcer-args \"-cALL -v\"");
    }

    static Config ParseArguments(string[] args)
    {
        var config = new Config
        {
            InputFile = args[0],
            DosBoxPath = "./dosbox/dosbox.exe",
            SourcerPath = "./sourcer",
            OutputDir = null,
            LogDir = "./logs",
            SourcerArgs = "",
            KeepConf = false
        };

        if (!File.Exists(config.InputFile))
            throw new Exception($"Input file not found: {config.InputFile}");

        for (int i = 1; i < args.Length; i++)
        {
            switch (args[i].ToLower())
            {
                case "--dosbox":
                    config.DosBoxPath = args[++i];
                    break;
                case "--sourcer":
                    config.SourcerPath = args[++i];
                    break;
                case "--output":
                    config.OutputDir = args[++i];
                    break;
                case "--logdir":
                    config.LogDir = args[++i];
                    break;
                case "--sourcer-args":
                    config.SourcerArgs = args[++i];
                    break;
                case "--keep-conf":
                    config.KeepConf = true;
                    break;
            }
        }

        // Default output dir to same location as input file
        config.OutputDir ??= Path.GetDirectoryName(Path.GetFullPath(config.InputFile)) ?? ".";

        // Resolve Sourcer path relative to executable location
        if (!Path.IsPathRooted(config.SourcerPath))
        {
            var exeDir = AppContext.BaseDirectory;
            config.SourcerPath = Path.GetFullPath(Path.Combine(exeDir, config.SourcerPath));
        }

        // Resolve DOSBox path relative to executable location
        if (!Path.IsPathRooted(config.DosBoxPath))
        {
            var exeDir = AppContext.BaseDirectory;
            config.DosBoxPath = Path.GetFullPath(Path.Combine(exeDir, config.DosBoxPath));
        }

        return config;
    }

    static string CreateLogFile(string logDir)
    {
        Directory.CreateDirectory(logDir);
        var timestamp = DateTime.Now.ToString("yyyyMMdd_HHmmss");
        var logFile = Path.Combine(logDir, $"sourcer_{timestamp}.log");
        return logFile;
    }

    static void Log(string message, string logFile)
    {
        Console.WriteLine(message);
        File.AppendAllText(logFile, message + Environment.NewLine);
    }

    static int RunSourcerInDosBox(Config config, string logFile)
    {
        // Convert Windows paths to DOSBox mount format
        var inputFullPath = Path.GetFullPath(config.InputFile);
        var inputDir = Path.GetDirectoryName(inputFullPath) ?? ".";
        var inputFile = Path.GetFileName(inputFullPath);
        var outputDir = Path.GetFullPath(config.OutputDir ?? ".");

        // Create temporary DOSBox config
        var confFile = CreateDosBoxConf(config, inputDir, inputFile, outputDir);

        try
        {
            Log($"Generated DOSBox config: {confFile}", logFile);
            Log($"Running DOSBox...", logFile);
            Log("", logFile);

            // Run DOSBox with visible window for manual interaction
            var startInfo = new ProcessStartInfo
            {
                FileName = config.DosBoxPath,
                Arguments = $"-conf \"{confFile}\"",
                UseShellExecute = true
            };

            Log("Launching DOSBox with Sourcer - press keys manually (I, filename, F, T×9, P×7, G)", logFile);

            var process = new Process { StartInfo = startInfo };
            process.Start();
            process.WaitForExit();

            Log("", logFile);
            Log($"DOSBox exited with code: {process.ExitCode}", logFile);

            // Read Sourcer output from redirected log file
            var baseName = Path.GetFileNameWithoutExtension(inputFile);
            var sourcerLogFile = Path.Combine(inputDir, $"sourcer_output_{baseName}.txt");
            if (File.Exists(sourcerLogFile))
            {
                Log("", logFile);
                Log("=== Sourcer Output ===", logFile);
                var sourcerOutput = File.ReadAllText(sourcerLogFile);
                Log(sourcerOutput.TrimEnd(), logFile);
                Log("=== End Sourcer Output ===", logFile);
                Log("", logFile);

                // Clean up Sourcer log file
                try { File.Delete(sourcerLogFile); } catch { }
            }

            // Check if output files were created (could be in input or output dir)
            var asmFileOutput = Path.Combine(outputDir, baseName + ".asm");
            var asmFileInput = Path.Combine(inputDir, baseName + ".asm");

            string? createdFile = null;
            if (File.Exists(asmFileOutput))
            {
                createdFile = asmFileOutput;
            }
            else if (File.Exists(asmFileInput))
            {
                createdFile = asmFileInput;
                // Move to output directory if different
                if (inputDir != outputDir)
                {
                    File.Move(asmFileInput, asmFileOutput);
                    createdFile = asmFileOutput;
                    Log($"Moved {baseName}.asm to output directory", logFile);
                }
            }

            if (createdFile != null)
            {
                var fileInfo = new FileInfo(createdFile);
                Log($"✓ Created: {createdFile} ({fileInfo.Length:N0} bytes)", logFile);
            }
            else
            {
                Log($"✗ Not found: {baseName}.asm in either input or output directory", logFile);
            }

            // Return 0 if asm file was created, 1 otherwise
            return createdFile != null ? 0 : 1;
        }
        finally
        {
            if (!config.KeepConf && File.Exists(confFile))
            {
                File.Delete(confFile);
                Log($"Deleted temporary config: {confFile}", logFile);
            }
        }
    }

    static string CreateDosBoxConf(Config config, string inputDir, string inputFile, string outputDir)
    {
        var confFile = Path.Combine(Path.GetTempPath(), $"dosbox_sourcer_{Guid.NewGuid():N}.conf");
        var baseName = Path.GetFileNameWithoutExtension(inputFile);

        var sb = new StringBuilder();
        sb.AppendLine("[autoexec]");
        sb.AppendLine("@echo off");
        sb.AppendLine();
        sb.AppendLine("rem Mount Sourcer directory");
        sb.AppendLine($"mount s \"{config.SourcerPath}\"");
        sb.AppendLine();
        sb.AppendLine("rem Mount working directory");
        sb.AppendLine($"mount w \"{inputDir}\"");
        sb.AppendLine();

        if (inputDir != outputDir)
        {
            sb.AppendLine("rem Mount output directory");
            sb.AppendLine($"mount o \"{outputDir}\"");
            sb.AppendLine();
        }

        sb.AppendLine("rem Add Sourcer to PATH");
        sb.AppendLine("set PATH=S:\\");
        sb.AppendLine();
        sb.AppendLine("rem Go to working directory (where input file is)");
        sb.AppendLine("w:");
        sb.AppendLine();
        sb.AppendLine("rem Run Sourcer");
        sb.AppendLine($"sr {inputFile}");

        sb.AppendLine();
        sb.AppendLine("if errorlevel 1 goto error");
        sb.AppendLine("echo Disassembly successful!");
        sb.AppendLine("goto end");
        sb.AppendLine();
        sb.AppendLine(":error");
        sb.AppendLine("echo Disassembly failed!");
        sb.AppendLine("goto end");
        sb.AppendLine();
        sb.AppendLine(":end");
        sb.AppendLine("exit");

        File.WriteAllText(confFile, sb.ToString());
        return confFile;
    }

    class Config
    {
        public string InputFile { get; set; } = "";
        public string DosBoxPath { get; set; } = "";
        public string SourcerPath { get; set; } = "";
        public string? OutputDir { get; set; }
        public string LogDir { get; set; } = "";
        public string SourcerArgs { get; set; } = "";
        public bool KeepConf { get; set; }
    }
}
