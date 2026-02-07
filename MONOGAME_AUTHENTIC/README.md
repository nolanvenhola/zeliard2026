# Zeliard MonoGame - Authentic Port

## Philosophy

This port extracts mechanics **directly from DOS assembly** without relying on the obfuscated C decompilation.

## Approach

1. **Pattern Recognition**: Identify mechanics by assembly patterns (load-modify-store, boundary checks, etc.)
2. **Constant Extraction**: Extract exact hex values from assembly
3. **Fixed-Point Conversion**: Convert DOS 8.8 fixed-point to floats (divide by 256)
4. **Verify**: Test against original DOS behavior

## Source of Truth

- Assembly files: `../4_ASSEMBLY_DISASSEMBLY/assembly_output/`
- Primary files:
  - `zelres1_chunks/chunk_00.asm` - Player movement, jumping
  - `zelres2_chunks/chunk_00.asm` - Main game loop, systems
  - `zelres2_chunks/chunk_02.asm` - Damage calculation
  - `zelres2_chunks/chunk_04.asm` - Physics engine

## Documentation

See `../6_DOCUMENTATION/ASSEMBLY_ONLY_GUIDE.md` for pattern recognition strategies.

## Current Status

🚧 **In Progress** - Extracting constants from assembly
