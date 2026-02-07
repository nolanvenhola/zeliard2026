# Executable Code vs Data/Resource Chunks

## Overview

Not all 120 chunks from the .sar files are executable code. Many contain game resources like graphics, sprites, maps, and data tables. This guide helps you understand which is which.

## Summary

**Total Chunks:** 120 (40 per .sar file)
**Executable Code:** 29 chunks
**Data/Resources:** 91 chunks

## How to Tell the Difference

### Method 1: Decompiled C File Size

When Ghidra decompiled chunks that were just data, it created tiny stub files:

```bash
# Executable code chunks
zelres1_chunk_00_decompiled.c  240KB  ← Real code!

# Data/resource chunks (stubs)
zelres1_chunk_01_decompiled.c  288 bytes  ← Just data!
```

**Rule of thumb:**
- **< 500 bytes** - Data/resources (stub file)
- **> 1KB** - Executable code

### Method 2: Content Analysis

**Executable code** disassembles to:
```assembly
00000000  B80000        mov ax,0x0
00000003  8ED8          mov ds,ax
00000005  BB1000        mov bx,0x10
```

**Data/resources** look like:
```
00000000  0F0F0F0F0F0F0F0F  ........  (repeated patterns)
00000100  FF00FF00FF00FF00  ........  (graphics data)
00000200  48656C6C6F000000  Hello...  (text strings)
```

## Complete Chunk Inventory

### ZELRES1.SAR (Core Resources)

**Executable Code (6 chunks):**
```
chunk_00.bin  240KB  ★★★ CRITICAL - Main player mechanics, movement, input
chunk_02.bin  3KB    Player equipment/inventory
chunk_04.bin  3.3KB  Player stats/attributes
chunk_06.bin  66KB   ★★★ CRITICAL - Advanced player systems
chunk_24.bin  3.8KB  Utility functions
chunk_30.bin  413B   Small utility
```

**Data/Resources (34 chunks):**
```
chunk_01, 03, 05, 07-23, 25-29, 31-39

Contains:
  - Player sprite sheets
  - Equipment graphics
  - UI elements
  - Item icons
  - Font data
  - Text strings
  - Data tables
```

### ZELRES2.SAR (System Resources)

**Executable Code (19 chunks):**
```
chunk_00.bin  135KB  ★★★ CRITICAL - Main game systems, init, loop
chunk_01.bin  11KB   ★★ Combat system core
chunk_02.bin  24KB   ★★★ Damage calculation, attack mechanics
chunk_03.bin  23KB   ★★ Physics subsystems
chunk_04.bin  20KB   ★★★ Physics engine (gravity, collision)
chunk_05.bin  25KB   ★★★ Enemy AI framework
chunk_06.bin  21KB   ★★★ Enemy AI behaviors
chunk_07.bin  1.9KB  ★ Enemy type 1 behavior
chunk_08.bin  3.2KB  ★ Enemy type 2 behavior
chunk_09.bin  1.7KB  ★ Enemy type 3 behavior
chunk_10.bin  2.0KB  ★ Enemy type 4 behavior
chunk_12.bin  2.9KB  ★ Enemy type 5 behavior
chunk_13.bin  2.1KB  ★ Enemy type 6 behavior
chunk_14.bin  1.5KB  ★ Enemy type 7 behavior
chunk_15.bin  1.9KB  ★ Enemy type 8 behavior
chunk_16.bin  1.6KB  ★ Boss behavior
chunk_17.bin  1.3KB  ★ Special enemy
chunk_38.bin  440B   Utility functions
chunk_39.bin  440B   Utility functions
```

**Data/Resources (21 chunks):**
```
chunk_11, 18-37

Contains:
  - Enemy sprite sheets
  - Attack animations
  - Projectile graphics
  - Effect sprites
  - Sound effect data
  - Timing tables
  - Animation sequences
```

### ZELRES3.SAR (Level Data & Graphics)

**Executable Code (4 chunks):**
```
chunk_00.bin  3KB    ★ Level loader/manager
chunk_14.bin  7.3KB  ★ Level-specific code
chunk_16.bin  352B   Level utility
chunk_31.bin  375B   Level utility
```

**Data/Resources (36 chunks):**
```
chunk_01-13, 15, 17-30, 32-39

Contains:
  - Level map data (8 areas)
  - Tile graphics
  - Background graphics
  - Enemy spawn tables
  - Level layouts
  - Palette data
  - Parallax backgrounds
  - Environmental objects
```

## What to Disassemble

### ✅ Disassemble These (Executable Code)

Use `disassemble_code_only.bat` to process only these 29 chunks:

**Priority 1 (START HERE):**
- game.bin
- zelres1/chunk_00.bin
- zelres2/chunk_00.bin

**Priority 2 (Core Mechanics):**
- zelres1/chunk_06.bin
- zelres2/chunk_02.bin
- zelres2/chunk_04.bin
- zelres2/chunk_05-06.bin

**Priority 3 (Enemy AI):**
- zelres2/chunk_07-17.bin

**Priority 4 (Support):**
- zelres1/chunk_02, 04, 24, 30.bin
- zelres2/chunk_01, 03, 38, 39.bin
- zelres3/chunk_00, 14, 16, 31.bin

### ❌ Don't Disassemble These (Data/Resources)

**Why not?**
- They're not executable code
- Disassembly will be meaningless (random-looking instructions)
- You already have the resources extracted

**What to use instead:**
1. **Graphics** - Use extracted sprites in `ZeliardModern/Content/Sprites/`
2. **Maps** - Already extracted as BMP, use map converter tool
3. **Sounds** - Will need to be converted from PC Speaker/AdLib format
4. **Data tables** - Can be hex-dumped if needed, but MonoGame uses different data structures

## How to Work with Data Chunks

### If You Need Data from a Resource Chunk

**Option 1: Use Extracted Assets (Recommended)**
```
ZeliardModern/Content/
├── Sprites/     ← Player, enemy, item sprites (already extracted)
├── Tilesets/    ← Tile graphics (already extracted)
├── Maps/        ← Level maps (converted from extracted BMPs)
└── Sounds/      ← Will need extraction/conversion
```

**Option 2: Hex Dump for Analysis**
```bash
# View raw data
xxd zelres1_extracted/chunk_01.bin | less

# Look for patterns (sprite dimensions, color palettes, etc.)
```

**Option 3: Extract Specific Data**
Use the SAR analyzer or custom tools to extract:
- Sprite dimensions
- Palette entries
- Data table structures
- Text strings

### Understanding Resource Chunk Contents

**Sprite Data** (likely chunks 1, 3, 5, 7-23 in zelres1):
```
Offset 0x00: Width (bytes)
Offset 0x02: Height (pixels)
Offset 0x04: Palette index
Offset 0x08: Pixel data (run-length encoded or raw)
```

**Map Data** (likely chunks 1-13 in zelres3):
```
Offset 0x00: Width (tiles)
Offset 0x02: Height (tiles)
Offset 0x04: Tile indices (16-bit per tile)
Offset ???: Enemy spawn points
Offset ???: Item locations
```

**Palette Data**:
```
RGB triplets (18-bit CGA/EGA color)
00: Black   (0,0,0)
01: Blue    (0,0,170)
02: Green   (0,170,0)
... etc
```

## Workflow Summary

### For Executable Code Chunks
1. ✅ Disassemble with ndisasm
2. ✅ Analyze assembly for constants and formulas
3. ✅ Port logic to MonoGame C#
4. ✅ Verify behavior matches

### For Data/Resource Chunks
1. ❌ Don't disassemble
2. ✅ Use already-extracted assets in ZeliardModern/Content/
3. ✅ Hex dump if you need to understand data structure
4. ✅ Create new assets using MonoGame pipeline

## Quick Reference Table

| Archive | Code Chunks | Data Chunks | Primary Content |
|---------|-------------|-------------|-----------------|
| ZELRES1 | 6 | 34 | Player mechanics + sprites |
| ZELRES2 | 19 | 21 | Combat/AI + effects |
| ZELRES3 | 4 | 36 | Level code + graphics |
| **Total** | **29** | **91** | |

## Running the Right Script

**For everything (including resources):**
```bash
disassemble_all_complete.bat    # Creates 127 .asm files
```

**For code only (recommended):**
```bash
disassemble_code_only.bat       # Creates 36 .asm files
```

The code-only version:
- Skips 91 data/resource chunks
- Saves time (faster)
- Creates cleaner output
- Focuses on what you actually need to port

## Why This Matters for MonoGame

**You need:**
- ✅ Assembly of executable code (to port game logic)
- ✅ Extracted graphics (to render with MonoGame)
- ✅ Converted maps (to build levels)

**You don't need:**
- ❌ Disassembly of graphics data (use PNG files instead)
- ❌ Disassembly of map data (use converted tilemaps instead)
- ❌ Disassembly of sound data (will convert to WAV/OGG)

## Final Recommendations

1. **Run:** `disassemble_code_only.bat` after VS Code restart
2. **Focus on:** The 6 critical chunks (game.bin, zelres1/00, zelres2/00, zelres1/06, zelres2/02, zelres2/04)
3. **Use assets from:** ZeliardModern/Content/ (already extracted and ready)
4. **Reference:** ASSEMBLY_REFERENCE_GUIDE.md for how to read the assembly
5. **Port:** Game logic from assembly to MonoGame C#

This approach gives you authentic behavior (from code) with modern assets (from extracted resources)!

---

**Ready to proceed:** Restart VS Code, then run `disassemble_code_only.bat`
