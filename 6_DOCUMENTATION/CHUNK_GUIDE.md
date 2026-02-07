# Complete Chunk Guide

## Overview

The original Zeliard game was split into chunks stored in three .sar archive files. This guide provides everything you need to know about chunks: what they contain, which are executable code, and how to work with them.

**Total Chunks:** 120 (40 per .sar file)
**Executable Code:** 29 chunks
**Data/Resources:** 91 chunks

## Quick Reference

| Archive | Code Chunks | Data Chunks | Primary Content |
|---------|-------------|-------------|-----------------|
| ZELRES1 | 6 | 34 | Player mechanics + sprites |
| ZELRES2 | 19 | 21 | Combat/AI + effects |
| ZELRES3 | 4 | 36 | Level code + graphics |
| **Total** | **29** | **91** | |

## How to Identify Code vs Data

### Method 1: Decompiled C File Size

Ghidra created tiny stub files for data-only chunks:

```bash
# Executable code chunks
zelres1_chunk_00_decompiled.c  240KB  ← Real code!

# Data/resource chunks (stubs)
zelres1_chunk_01_decompiled.c  288 bytes  ← Just data!
```

**Rule of thumb:**
- **< 500 bytes** - Data/resources
- **> 1KB** - Executable code

### Method 2: Disassembly Content

**Executable code** disassembles to real instructions:
```assembly
00000000  B80000        mov ax,0x0
00000003  8ED8          mov ds,ax
00000005  BB1000        mov bx,0x10
```

**Data/resources** look like binary data:
```
00000000  0F0F0F0F0F0F0F0F  ........  (patterns)
00000100  FF00FF00FF00FF00  ........  (graphics)
00000200  48656C6C6F000000  Hello...  (text)
```

---

## ZELRES1.SAR - Core Game Resources (251KB)

**Purpose:** Core game mechanics, player systems, fundamental gameplay

### Executable Code Chunks (6 total)

| Chunk | Binary Size | Disassembly | C Lines | Priority | Content |
|-------|-------------|-------------|---------|----------|---------|
| **00** | 14KB | 240KB | 5,913 | ⭐⭐⭐ | **Main player code** - Movement, jumping, core mechanics |
| **06** | 12KB | 119KB | 2,927 | ⭐⭐⭐ | **Advanced player systems** - Equipment, abilities |
| 02 | 3KB | 145KB | 106 | ⭐ | Player equipment/inventory |
| 04 | 3KB | 165KB | 122 | ⭐ | Player stats/attributes |
| 24 | 4KB | 82KB | 104 | ⭐ | Utility functions |
| 30 | 0.4KB | 53KB | — | ⭐ | Small utility |

### Data/Resource Chunks (34 total)

**Chunks:** 01, 03, 05, 07-23, 25-29, 31-39

**Contents:**
- Player sprite sheets (multiple animation frames)
- Equipment graphics (swords, armor, shields)
- UI elements (health bars, menus, icons)
- Item icons (potions, keys, treasures)
- Font data (game text rendering)
- Text strings (dialogue, item names)
- Data tables (stats, equipment modifiers)

**Porting note:** Use already-extracted assets in `MONOGAME_CS/Content/Sprites/`

---

## ZELRES2.SAR - System Resources (338KB)

**Purpose:** Combat systems, physics, enemy AI, collision detection

### Executable Code Chunks (19 total)

| Chunk | Binary Size | Disassembly | C Lines | Priority | Content |
|-------|-------------|-------------|---------|----------|---------|
| **00** | 16KB | 266KB | 6,072 | ⭐⭐⭐ | **Main systems** - Init, game loop, UI |
| **02** | 24KB | 162KB | 1,116 | ⭐⭐⭐ | **Damage calculation** - Combat formulas |
| **04** | 20KB | 163KB | 976 | ⭐⭐⭐ | **Physics engine** - Gravity, collision |
| **05** | 25KB | 180KB | 1,165 | ⭐⭐⭐ | **Enemy AI framework** - State machines |
| **06** | 21KB | 166KB | 1,054 | ⭐⭐⭐ | **Enemy AI behaviors** - Chase, attack |
| 01 | 11KB | 60KB | 504 | ⭐⭐ | Combat system core |
| 03 | 23KB | 166KB | 1,090 | ⭐⭐ | Physics subsystems |
| 07 | 2KB | 187KB | — | ⭐ | Enemy type 1 (Slime) |
| 08 | 3KB | 200KB | 151 | ⭐ | Enemy type 2 (Bat) |
| 09 | 2KB | 146KB | — | ⭐ | Enemy type 3 (Spider) |
| 10 | 2KB | — | — | ⭐ | Enemy type 4 (Skeleton) |
| 12 | 3KB | — | 136 | ⭐ | Enemy type 5 (Ghost) |
| 13 | 2KB | — | — | ⭐ | Enemy type 6 (Goblin) |
| 14 | 2KB | — | — | ⭐ | Enemy type 7 (Orc) |
| 15 | 2KB | — | — | ⭐ | Enemy type 8 (Wizard) |
| 16 | 2KB | — | — | ⭐ | Boss behavior 1 |
| 17 | 1KB | — | — | ⭐ | Special enemy |
| 38 | 0.4KB | — | — | ⭐ | Utility functions |
| 39 | 0.4KB | — | — | ⭐ | Utility functions |

### Data/Resource Chunks (21 total)

**Chunks:** 11, 18-37

**Contents:**
- Enemy sprite sheets (8 enemy types)
- Attack animations (slashes, projectiles)
- Projectile graphics (arrows, fireballs)
- Effect sprites (explosions, magic)
- Sound effect data (PC speaker/AdLib)
- Timing tables (animation frames)
- Animation sequences (enemy movement)

---

## ZELRES3.SAR - Level Data & Graphics (335KB)

**Purpose:** Level maps, tile data, enemy placement, graphics resources

### Executable Code Chunks (4 total)

| Chunk | Binary Size | Disassembly | C Lines | Priority | Content |
|-------|-------------|-------------|---------|----------|---------|
| 00 | 3KB | 53KB | 139 | ⭐ | Level loader/manager |
| 14 | 7KB | 82KB | 301 | ⭐ | Level renderer |
| 16 | 0.4KB | — | — | ⭐ | Level utility |
| 31 | 0.4KB | — | — | ⭐ | Level utility |

### Data/Resource Chunks (36 total)

**Chunks:** 01-13, 15, 17-30, 32-39

**Contents:**

**Level Maps (Chunks 01-08):**
- Area 1: Forest (chunk 01)
- Area 2: Cave (chunk 02)
- Area 3: Castle (chunk 03)
- Area 4: Dungeon (chunk 04)
- Area 5: Tower (chunk 05)
- Area 6: Temple (chunk 06)
- Area 7: Ruins (chunk 07)
- Area 8: Final Area (chunk 08)

**Additional Data (Chunks 09-13, 15, 17-39):**
- Enemy spawn tables per area
- Item placement data
- Tile graphics (8x8 tiles)
- Background graphics (parallax)
- Palette data (CGA/EGA colors)
- Environmental objects (doors, chests)

---

## Priority Guide for MonoGame Porting

### ⭐⭐⭐ Critical (Port First - Week 1-2)

**Must-port executable code:**

1. **ZELRES1/chunk_00.asm** (240KB disassembly)
   - Player walk speed, jump velocity
   - Input handling
   - Basic collision
   - Animation states

2. **ZELRES2/chunk_00.asm** (266KB disassembly)
   - Main game loop structure
   - System initialization
   - Game state management

3. **ZELRES2/chunk_02.asm** (162KB disassembly)
   - Damage calculation formulas
   - Level scaling
   - Weapon bonuses

4. **ZELRES2/chunk_04.asm** (163KB disassembly)
   - Gravity constant (0x0020 = 0.125)
   - Collision detection
   - Velocity updates

5. **ZELRES2/chunk_05-06.asm** (346KB combined)
   - Enemy AI state machines
   - Chase/patrol behaviors
   - Attack triggers

6. **ZELRES1/chunk_06.asm** (119KB disassembly)
   - Advanced player mechanics
   - Equipment system
   - Special abilities

### ⭐⭐ High Priority (Week 3-4)

7. **ZELRES2/chunk_01.asm** (60KB) - Combat support
8. **ZELRES2/chunk_03.asm** (166KB) - Physics support
9. **ZELRES2/chunks_07-17.asm** - Individual enemy types
10. **ZELRES1/chunks_02,04,24,30.asm** - Player support

### ⭐ Medium Priority (Week 5+)

11. **ZELRES3/chunk_00,14.asm** - Level code
12. **ZELRES3/chunk_16,31.asm** - Level utilities
13. **ZELRES2/chunk_38-39.asm** - System utilities

### ❌ Don't Port (Use Modern Alternatives)

- **All data chunks** - Use extracted assets instead
- **Graphics drivers (GM*.BIN)** - Use MonoGame rendering
- **Low-level loaders** - Use C# asset loading

---

## File Locations

### Original Binary Chunks
```
2_EXTRACTED_CHUNKS/
├── zelres1_extracted/  (40 .bin files)
├── zelres2_extracted/  (40 .bin files)
└── zelres3_extracted/  (40 .bin files)
```

### Assembly Disassembly (Code Only)
```
4_ASSEMBLY_DISASSEMBLY/assembly_output/
├── zelres1_chunks/  (6 .asm files)
├── zelres2_chunks/  (19 .asm files)
└── zelres3_chunks/  (4 .asm files)
```

### C Decompilation (All Chunks)
```
3_DECOMPILED_C/
├── zelres1_chunk_00-39_decompiled.c  (40 files)
├── zelres2_chunk_00-39_decompiled.c  (40 files)
└── zelres3_chunk_00-39_decompiled.c  (40 files)
```

---

## Working with Data Chunks

### Don't Disassemble - Use Extracted Assets

Data chunks have already been extracted to usable formats:

```
MONOGAME_CS/Content/
├── Sprites/     ← Player, enemy, item sprites
├── Tilesets/    ← Tile graphics
├── Maps/        ← Level maps
└── Sounds/      ← Audio (needs conversion)
```

### If You Need to Analyze Data Chunks

For understanding data structures:

```bash
# Hex dump to see structure
xxd 2_EXTRACTED_CHUNKS/zelres1_extracted/chunk_01.bin | less

# Look for patterns (sprite dimensions, palettes)
```

**Common data formats:**
- Sprite data: Width, Height, Palette index, Pixel data (RLE)
- Map data: Width, Height, Tile indices, Spawn points
- Palette data: RGB triplets (18-bit CGA/EGA)

---

## Search Examples

### Find Player Walk Speed
```bash
cd 4_ASSEMBLY_DISASSEMBLY/assembly_output
grep -i "0x0200\|walk\|move" zelres1_chunks/chunk_00.asm
```

### Find Damage Formula
```bash
grep -i "damage\|attack" zelres2_chunks/chunk_02.asm
```

### Find Enemy AI States
```bash
grep -i "state\|chase\|patrol" zelres2_chunks/chunk_05.asm
```

### Find Gravity Constant
```bash
grep "0x0020" zelres2_chunks/chunk_04.asm
```

---

## Quick Reference Table

| Need | Archive | Chunk | Assembly File |
|------|---------|-------|---------------|
| Player movement | ZELRES1 | 00 | zelres1_chunks/chunk_00.asm |
| Jump physics | ZELRES1 | 00 | zelres1_chunks/chunk_00.asm |
| Damage calc | ZELRES2 | 02 | zelres2_chunks/chunk_02.asm |
| Gravity | ZELRES2 | 04 | zelres2_chunks/chunk_04.asm |
| Collision | ZELRES2 | 04 | zelres2_chunks/chunk_04.asm |
| Enemy AI | ZELRES2 | 05-06 | zelres2_chunks/chunk_05-06.asm |
| Enemy types | ZELRES2 | 07-17 | zelres2_chunks/chunk_07-17.asm |
| Level loader | ZELRES3 | 00 | zelres3_chunks/chunk_00.asm |

---

## Summary

- **29 executable code chunks** → Disassemble and port to MonoGame
- **91 data/resource chunks** → Use extracted assets
- **Focus on ZELRES1/00 and ZELRES2/00-06** for core mechanics
- **Use assembly as ground truth** for authentic behavior

This is your complete chunk reference! 📦

---

*Consolidated from CHUNK_REFERENCE_MAP.md and EXECUTABLE_VS_DATA_CHUNKS.md*
*Created: 2026-02-04*
