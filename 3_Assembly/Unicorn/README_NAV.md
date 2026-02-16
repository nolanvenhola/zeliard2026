# Unicorn CPU Emulator - Constant Extraction

This directory contains tools for extracting game constants from Zeliard using the Unicorn CPU emulator.

## Purpose

Zeliard's game constants (gravity, jump velocity, speeds, timings) are computed at runtime or encoded in complex x86 assembly. The Unicorn emulator allows us to:
- Execute x86 code snippets in isolation
- Trace memory writes and register changes
- Extract computed values without reverse engineering entire algorithms

## Tools

- **extract_constants.py** - Main extraction script
- **search_constants.py** - Search for specific constant patterns
- **install_unicorn.bat** - Automated Unicorn installation (Windows)
- **install_and_test.bat** - Install and run test extraction
- **run_extraction.bat** - Quick extraction launcher

## Setup

### Quick Setup (Windows)
```bash
install_and_test.bat
```

### Manual Setup
1. Install Python 3.7+
2. Install Unicorn: `pip install unicorn`
3. Run extraction: `python extract_constants.py`

See `INSTALL_PYTHON.md` and `SETUP_GUIDE.md` for detailed instructions.

## Usage

### Basic Extraction
```bash
python extract_constants.py
```

### Search for Specific Constants
```bash
python search_constants.py <search-term>
```

## Extraction Status

See `../Documentation/CONSTANT_EXTRACTION_STATUS.md` for:
- Successfully extracted constants
- Remaining constants to extract
- Known challenges and workarounds

## Why This Is Needed

See `../Documentation/WHY_CONSTANTS_ARE_HARD.md` for detailed explanation of:
- Fixed-point 8.8 arithmetic (divide by 256.0f for floats)
- Bitwise operations masking values
- Computed tables and lookup indices

## Technical Details

- **Emulator**: Unicorn Engine (QEMU-based CPU emulator)
- **Mode**: X86 16-bit real mode
- **Memory**: DOS memory layout (segments, far pointers)
- **Output**: JSON or CSV format

## Related Documentation

- `../Documentation/EXTRACTING_EXACT_CONSTANTS.md` - Extraction methodology
- `../Documentation/PHYSICS_CONSTANTS.md` - Physics system analysis
- `../Documentation/X86_EMULATION_OPTIONS.md` - Alternative emulation approaches
