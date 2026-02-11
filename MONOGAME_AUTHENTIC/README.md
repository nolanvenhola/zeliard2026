# Zeliard MonoGame - Authentic Port

## Philosophy

This port extracts mechanics **directly from DOS assembly** without relying on the obfuscated C decompilation.

## Approach

1. **Pattern Recognition**: Identify mechanics by assembly patterns (load-modify-store, boundary checks, etc.)
2. **Constant Extraction**: Extract exact hex values from assembly
3. **Fixed-Point Conversion**: Convert DOS 8.8 fixed-point to floats (divide by 256)
4. **Verify**: Test against original DOS behavior

## Quick Start

```bash
# Build and run
dotnet restore
dotnet build
dotnet run

# Run save/load tests
dotnet run -- --test
```

See [BUILD.md](BUILD.md) for detailed build instructions.

## Current Status

✅ **Save/Load System** - COMPLETE (DOS-compatible .USR files)
🚧 **Core Constants** - In progress (extracting from assembly)
📋 **Player Movement** - Planned (next priority)

See [PROJECT_STATUS.md](PROJECT_STATUS.md) for full roadmap.

## Project Structure

```
MONOGAME_AUTHENTIC/
├── ZeliardAuthentic.csproj    ← Project file
├── Program.cs, Game1.cs       ← Entry points
├── Core/                      ← Save/load, constants
├── Tests/                     ← Test suite
└── Content/                   ← Assets
```

## Source of Truth

- Assembly files: `../4_ASSEMBLY_DISASSEMBLY/assembly_output/`
- Primary files:
  - `zelres1_chunks/chunk_00.asm` - Player movement, jumping
  - `zelres2_chunks/chunk_00.asm` - Main game loop, systems
  - `zelres2_chunks/chunk_02.asm` - Damage calculation
  - `zelres2_chunks/chunk_04.asm` - Physics engine
  - `zelres2_chunks/chunk_17.asm` - ✅ Save/load (IMPLEMENTED)

## Documentation

- [BUILD.md](BUILD.md) - Build and run instructions
- [PROJECT_STATUS.md](PROJECT_STATUS.md) - Implementation progress
- [README_SAVELOAD.md](README_SAVELOAD.md) - Save/load system docs
- [../6_DOCUMENTATION/](../6_DOCUMENTATION/) - Assembly analysis guides
