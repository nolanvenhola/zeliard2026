# Zeliard DOS to MonoGame Port - Technical Documentation

> Reverse engineering and porting the 1990 DOS action-RPG to modern platforms

## Quick Start

**Build & Run:**
```bash
cd MONOGAME_AUTHENTIC
dotnet build
dotnet run              # Normal game
dotnet run -- --test    # Save/load tests
```

**Controls:**
- F2: Chunk Explorer (browse 120 binary chunks with decode modes)
- Arrow keys: Navigate
- Enter: Select

## Project Overview

This is a faithful MonoGame port of Zeliard (DOS, 1990) by Game Arts/Sierra On-Line, based on reverse engineering the original x86 assembly and binary formats.

**Status:** Phase 3 - Graphics system decoded, sprite formats partially cracked

## Documentation Structure

### [01 - Project Structure](01_PROJECT_STRUCTURE/)
How the codebase is organized, file formats, build system

### [02 - Game Engine](02_GAME_ENGINE/)
Core architecture, chunk loading, memory layout, assembly conventions

### [03 - Graphics System](03_GRAPHICS_SYSTEM/) ⭐
VGA rendering, palette system, image compression (.grp format)

### [04 - Sprite System](04_SPRITE_SYSTEM/) ⭐
Gameplay sprites, compression formats, animation, pixel encoding

### [05 - Scenes](05_SCENES/)
Opening sequence, title screen, gameplay loop, cutscenes

### [06 - Audio](06_AUDIO/)
MIDI music (GM/MT-32), sound effects, audio drivers

### [07 - Game Data](07_GAME_DATA/)
Maps, save system, resource catalog

### [08 - Assembly Reference](08_ASSEMBLY_REFERENCE/) 🔧
x86 patterns, function directory, global variables, disassembly guide

### [09 - Reverse Engineering](09_REVERSE_ENGINEERING/) 🔬
Tools, techniques, discoveries, unsolved mysteries

### [10 - Implementation](10_IMPLEMENTATION/)
MonoGame port architecture, decoder implementations, testing

### [11 - Reference](11_REFERENCE/)
Compiler analysis, game history, hardware specs, external resources

## Key Technical Achievements

✅ **SAR archive extraction** - 120 chunks from 3 archives
✅ **Two-stage .grp decompression** - Format 6/7 RLE + bitmap/XOR decode
✅ **VGA palette system** - Scene-specific 64-color palettes decoded
✅ **Opening scene** - Complete text and image sequence working
⚠️ **Gameplay sprites** - Format identified (6-bit packed), renderer WIP
❌ **Pixel format** - 3-plane decode partially works, needs refinement

## Recent Discoveries

- **2025-02-09**: Downloaded all sprite sheets from Spriters Resource (73 assets)
- **2025-02-08**: Cracked gameplay sprite layout - 8 frames/row, 6-bit packed pixels
- **2025-02-07**: Identified compiler - Microsoft C 5.x for tools, hand-written assembly for game
- **2025-02-05**: Decoded two-stage .grp compression matching DOSBox memory dumps

## External Resources

- **Sprites**: `Resources/SpritersResource/` (Sharp X1 reference sprites)
- **Music**: `c:\Projects\Zeliard_DOS_EN\Source\Music\GM\` (14 MIDI tracks)
- **Maps**: `c:\Projects\Zeliard_DOS_EN\Source\Maps\` (19 cavern BMPs)
- **DOSBox dumps**: `DOSBOX DUMPS\` (VGA framebuffer captures)

## Quick Reference

| Topic | File | Key Info |
|-------|------|----------|
| Build commands | [build.md](../memory/build.md) | `dotnet run`, paths, gotchas |
| VGA palettes | [03_GRAPHICS_SYSTEM/palette_system.md](03_GRAPHICS_SYSTEM/palette_system.md) | 64 colors, scene switching |
| Sprite format | [04_SPRITE_SYSTEM/pixel_formats.md](04_SPRITE_SYSTEM/pixel_formats.md) | 6-bit packed, 8 frames/row |
| Chunk loader | [02_GAME_ENGINE/chunk_loading.md](02_GAME_ENGINE/chunk_loading.md) | `call [cs:0x10c]` |
| Assembly patterns | [08_ASSEMBLY_REFERENCE/key_patterns.md](08_ASSEMBLY_REFERENCE/key_patterns.md) | `CS:0xff__` globals |

## Contributing

When adding documentation:
1. Keep files focused (one topic per file)
2. Max 500 lines per file (split if longer)
3. Use relative links for cross-references
4. Update relevant README.md indices
5. Add entry to master plan if implementing new features

## Master Plan

See [MASTER_CONVERSION_PLAN.md](MASTER_CONVERSION_PLAN.md) for the complete 21-phase roadmap.

**Current Phase:** 3/21 (Graphics system foundation complete)
