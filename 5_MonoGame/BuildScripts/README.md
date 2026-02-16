# Build Automation Scripts

This directory contains build and disassembly automation scripts for the Zeliard project.

## Available Scripts

### disassemble_all.bat
Basic disassembly script for Zeliard executables and drivers.

**Usage:**
```bash
disassemble_all.bat
```

**Output:**
- Disassembles main game executable
- Disassembles graphics drivers (MCGA, EGA, Hercules, TGA)
- Saves to `../../3_Assembly/ndisasm/output/`

### disassemble_all_complete.bat
Enhanced disassembly script with chunk extraction.

**Usage:**
```bash
disassemble_all_complete.bat
```

**Output:**
- All executables and drivers
- Individual SAR chunk disassembly
- Organized into zelres1/2/3_chunks folders

## Prerequisites

### ndisasm (Netwide Disassembler)
Part of the NASM assembler package.

**Installation:**
- **Windows**: Download from https://www.nasm.us/
- **Linux**: `sudo apt install nasm`
- **macOS**: `brew install nasm`

Add to PATH or place `ndisasm.exe` in `../../3_Assembly/ndisasm/tool/`

### SAR Extraction (for complete script)
Chunks must be extracted first:
```bash
cd ../../2_SAR/Tools
python extract_sar.py ../../1_OriginalGame/zelres1.sar
python extract_sar.py ../../1_OriginalGame/zelres2.sar
python extract_sar.py ../../1_OriginalGame/zelres3.sar
```

## Script Details

### Basic Disassembly Process
1. Locates original executables in `../../1_OriginalGame/`
2. Runs `ndisasm -b 16` (16-bit real mode disassembly)
3. Saves `.asm` files to `../../3_Assembly/ndisasm/output/`

### Complete Disassembly Process
1. Basic disassembly (executables + drivers)
2. Iterates through extracted chunks
3. Disassembles each `.bin` chunk file
4. Organizes by zelres archive

## Output Location

All disassembly output goes to:
```
../../3_Assembly/ndisasm/output/
├── zeliad.asm
├── gmmcga.asm
├── gmega.asm
├── gmhgc.asm
├── gmtga.asm
├── stick.asm
├── stdply.asm
├── game.asm
├── zelres1_chunks/
├── zelres2_chunks/
└── zelres3_chunks/
```

## Troubleshooting

### ndisasm not found
Ensure ndisasm is in PATH or copy to `../../3_Assembly/ndisasm/tool/ndisasm.exe`

### Access denied
Close any programs that have game files open (hex editors, debuggers, etc.)

### Incomplete output
Check that:
- Original executables exist in `../../1_OriginalGame/`
- SAR chunks extracted to `../../2_SAR/ExtractedChunks/`
- Output directory has write permissions

## Related Tools

- **Sourcer**: `../../3_Assembly/sourcer/` - Commercial disassembler with better analysis
- **Unicorn**: `../../3_Assembly/Unicorn/` - Runtime constant extraction via CPU emulation
