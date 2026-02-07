# Zeliard SAR Chunk Analysis

## Summary

Based on structure, size, and content analysis:

### ZELRES1.SAR - Core Game Logic & Engine
**Purpose**: Main game code, enemy AI, player mechanics

| Chunk | Size  | Type | Likely System |
|-------|-------|------|---------------|
| 00 | 13.8KB | CODE | **Main Game Loop** (37 functions) |
| 01 | 5.5KB | Sound/Music | Sound effects or music data |
| 02 | 7.7KB | CODE | **Enemy/Player Logic** |
| 03-05, 10 | 8-9KB | Sound/Music | Audio data |
| 06-39 | Various | Data | Level data, graphics tables, sprites |

**Priority for decompilation**: Chunks 0, 2 (game engine core)

---

### ZELRES2.SAR - Extended Game Systems
**Purpose**: Additional game mechanics, more levels

| Chunk | Size | Type | Likely System |
|-------|------|------|---------------|
| 00 | 16KB | CODE | **Extended Game Systems** |
| 01-06 | 8-10KB | Sound/Music | Music tracks |
| 07-09 | 8-10KB | CODE | **Level/Map Systems** |
| 10-17 | Various | CODE | **UI/Menu Systems** |
| 18-35 | 4-10KB | Sound/Music | More audio data |
| 39 | **103KB** | **LARGE** | **Graphics: Sprites/Tiles** |

**Priority for decompilation**: Chunks 0, 7-9 (game systems), 10-17 (UI)

---

### ZELRES3.SAR - Level Data & Graphics
**Purpose**: Map data, level layouts, large graphics

| Chunk | Size | Type | Likely System |
|-------|------|------|---------------|
| 00 | 1.4KB | CODE | Level loader |
| 01-38 | 1-8KB | Data | **Level Maps & Layouts** |
| 20-38 | Various | Data | Level-specific data (enemies, items, triggers) |
| 39 | **217KB** | **LARGE** | **Graphics: Backgrounds/Tilesets** |

**Pattern**: zelres3 chunks show repetitive structure (0xA0, 0xA1, 0xA2 headers) suggesting level/map format

**Priority for decompilation**: Chunk 0 (level loader)

---

## Identified Game Systems

### 🎮 Core Game Engine
- **zelres1 chunk_00** (13.8KB, 37 functions) - Main loop, game state
- **zelres2 chunk_00** (16KB) - Extended systems

### 🤖 Enemy & Player Logic
- **zelres1 chunk_02** (7.7KB) - Player mechanics, collision
- **zelres2 chunks 07-09** (8-10KB) - AI, pathfinding

### 🗺️ Level/Map System
- **zelres2 chunks 10-17** - Map loading, tile rendering
- **zelres3 chunks 01-38** - Level data (38 levels/maps)

### 🎵 Audio System
- **zelres1 chunks 01, 03-05, 10** - Sound effects
- **zelres2 chunks 02-06, 18-35** - Music tracks

### 🎨 Graphics
- **zelres2 chunk_39** (103KB) - Sprite sheets
- **zelres3 chunk_39** (217KB) - Background tiles

---

## Recommended Decompilation Order

### Phase 1: Game Engine Core
1. ✅ zelres1/chunk_00.bin (DONE - 37 functions, 5913 lines)
2. zelres1/chunk_02.bin - Player/enemy logic
3. zelres2/chunk_00.bin - Extended systems

### Phase 2: Level System
4. zelres2/chunk_07.bin - Level loading
5. zelres2/chunk_08-09.bin - Map systems
6. zelres3/chunk_00.bin - Level data loader

### Phase 3: UI & Menus
7. zelres2/chunk_10-17.bin - UI systems

### Phase 4: Data Analysis
8. Analyze large chunks (39) for graphics format
9. Analyze zelres3 level data format

---

## Estimated Code Size

- **Total executable code**: ~150-200KB
- **Graphics data**: ~320KB (chunks 39)
- **Sound/Music data**: ~80-100KB
- **Level data**: ~80KB

**Note**: zelres1/chunk_00 alone is 5,913 lines of C. Estimate **50,000-80,000 lines** of decompiled C code total.
