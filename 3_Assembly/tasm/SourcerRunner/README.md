# Sourcer Runner for DOSBox

A C# console application that launches Sourcer (Commenting Disassembler) in DOSBox with proper environment setup.

## Features

- 🚀 **Automated environment setup** - Mounts directories and sets up PATH
- 📝 **Interactive operation** - Shows instructions for manual key presses
- 🔧 **Self-contained** - Bundles DOSBox and Sourcer (~33 MB)
- 📊 **Output verification** - Checks for created .asm files and moves them to output directory
- 📋 **Clear instructions** - Displays keystroke sequence before launching Sourcer

## Prerequisites

**None!** The tool is completely self-contained - DOSBox and Sourcer are bundled.

## Building

```bash
cd 3_Assembly/tasm/SourcerRunner
dotnet build
```

## Usage

### Basic Usage

```bash
cd bin/Debug/net8.0
./SourcerRunner.exe program.exe
```

This will:
1. Set up DOSBox environment (mounts, paths)
2. Display keystroke instructions
3. Launch Sourcer with the input file
4. Wait for you to complete disassembly
5. Move the .asm file to output directory

### With Custom Output Directory

```bash
./SourcerRunner.exe program.exe --output ./disasm
```

### Command-Line Options

| Option | Description | Default |
|--------|-------------|---------|
| `<inputfile>` | Binary/EXE/COM file to disassemble | - (required) |
| `--dosbox <path>` | DOSBox executable path | `./dosbox/dosbox.exe` (bundled) |
| `--sourcer <path>` | Sourcer directory | `./sourcer` (bundled) |
| `--output <path>` | Output directory for .asm files | Same as input file |
| `--logdir <path>` | Log file directory | `./logs` |
| `--sourcer-args <args>` | Additional Sourcer arguments | None |
| `--keep-conf` | Keep temporary DOSBox config | false |

## Sourcer Keystroke Sequence

When Sourcer launches, press these keys in order:

```
I           Input filename mode
<type filename>
ENTER       Confirm filename
F           Output format → ASM
T (×9)      Assembler type → TASM 3.0
P (×7)      Analysis passes
G           Go / Run disassembly
```

The tool displays these instructions before launching Sourcer!

## How It Works

1. **Environment setup** - Mounts Sourcer, input, and output directories
2. **Displays instructions** - Shows the keystroke sequence
3. **Launches Sourcer** - Runs `sr filename.exe` in DOSBox
4. **Manual interaction** - You press the keys (takes ~10 seconds)
5. **Output handling** - Moves created .asm to output directory
6. **Verification** - Confirms .asm file was created

## Example Session

```bash
$ ./SourcerRunner.exe "C:/Projects/Zeliard/1_OriginalGame/zeliad.exe" --output ./disasm

=== Sourcer Runner for DOSBox ===

Starting Sourcer disassembly at 2026-02-16 20:15:00
Input file: C:/Projects/Zeliard/1_OriginalGame/zeliad.exe
Generated DOSBox config: C:\Temp\dosbox_sourcer_a1b2c3d4.conf
Running DOSBox...

[DOSBox window opens with instructions]
Ready to disassemble: zeliad.exe

Keystroke sequence:
  I         = Input filename
  zeliad.exe = Type the filename
  ENTER     = Confirm
  F         = Output format (ASM)
  T x 9     = Assembler type (TASM 3.0)
  P x 7     = Analysis passes
  G         = Go / Run

Press any key to continue...

[Press keys in Sourcer UI]
[Sourcer completes disassembly]

✓ Created: ./disasm/zeliad.asm (156,789 bytes)
Disassembly completed with exit code: 0

Log saved to: ./logs/sourcer_20260216_201500.log
```

## Integration with TasmRunner

Perfect workflow for modify-reassemble cycles:

```bash
# 1. Disassemble original
./SourcerRunner.exe original.exe --output ./work

# 2. Edit ./work/original.asm

# 3. Reassemble
cd ../TasmRunner/bin/Debug/net8.0
./TasmRunner.exe ../../../SourcerRunner/bin/Debug/net8.0/work/original.asm
```

## Notes

- Sourcer is an **interactive tool** - keystroke automation doesn't work reliably
- Manual key presses take ~10 seconds - small price for professional disassembly
- The tool handles all the tedious environment setup
- Output .asm files are automatically moved to the output directory

## License

Part of the Zeliard reverse engineering project.
