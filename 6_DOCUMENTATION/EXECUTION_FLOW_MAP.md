# Zeliard Complete Execution Flow Map

## Overview

This document maps the complete execution flow of Zeliard from DOS launch to game loop, showing how zeliad.exe loads and orchestrates all game components.

## Execution Timeline

```
┌─────────────────────────────────────────────────────────────┐
│ 1. DOS Launch                                               │
│    User types: ZELIAD                                       │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      ↓
┌─────────────────────────────────────────────────────────────┐
│ 2. ZELIAD.EXE (3KB) - Loader/Bootstrap                     │
│    Entry Point: 0x100 (DOS .COM/.EXE format)               │
│                                                              │
│    Actions:                                                  │
│    • Parse command line arguments                            │
│    • Check DOS version                                       │
│    • Allocate memory segments                                │
│    • Set up graphics mode (CGA/EGA/VGA)                      │
│    • Initialize sound system                                 │
│    • Load GAME.BIN into memory                               │
│    • Transfer control to GAME.BIN entry point                │
│                                                              │
│    Assembly: 4_ASSEMBLY_DISASSEMBLY/assembly_output/zeliad.asm
│    C Reference: 3_DECOMPILED_C/zeliad_decompiled.c          │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      ↓
┌─────────────────────────────────────────────────────────────┐
│ 3. GAME.BIN (1.2KB) - Main Loader & Dispatcher             │
│    Loaded at: Variable segment (typically CS+offset)        │
│                                                              │
│    Actions:                                                  │
│    • Initialize game variables (0xff00-0xffff range)         │
│    • Detect graphics hardware                                │
│    • Load appropriate graphics driver (GM*.BIN)              │
│    • Open .SAR archive files (ZELRES1/2/3.SAR)               │
│    • Set up chunk loader (function at cs:0x10c)              │
│    • Load initial chunks from SAR files                      │
│    • Set up memory segments for chunks                       │
│    • Transfer control to main game code                      │
│                                                              │
│    Memory Layout:                                            │
│    CS+0x0000: Game loader code                               │
│    CS+0x3000: Loaded chunk area 1                            │
│    CS+0x6000: Loaded chunk area 2                            │
│    CS+0x9000: Loaded chunk area 3                            │
│    CS+0xc000: Loaded chunk area 4                            │
│    CS+0xe200: Loaded chunk area 5                            │
│                                                              │
│    Assembly: 4_ASSEMBLY_DISASSEMBLY/assembly_output/game.asm │
│    C Reference: 3_DECOMPILED_C/game_decompiled.c            │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      ↓
┌─────────────────────────────────────────────────────────────┐
│ 4. Graphics Driver Selection (one of):                      │
│                                                              │
│    GMCGA.BIN  (62KB) - CGA  320x200 4-color                 │
│    GMEGA.BIN  (69KB) - EGA  640x350 16-color                │
│    GMHGC.BIN  (64KB) - Hercules 720x348 mono                │
│    GMMCGA.BIN (57KB) - MCGA 320x200 256-color               │
│    GMTGA.BIN  (65KB) - TGA/VGA 640x480 16-color             │
│                                                              │
│    Loaded to: CS+0x3000                                      │
│                                                              │
│    Functions:                                                │
│    • Low-level pixel plotting                                │
│    • Sprite blitting                                         │
│    • Screen scrolling                                        │
│    • Palette management                                      │
│    • Double buffering                                        │
│                                                              │
│    Assembly: 4_ASSEMBLY_DISASSEMBLY/assembly_output/gm*.asm │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      ↓
┌─────────────────────────────────────────────────────────────┐
│ 5. SAR Archives - Dynamic Chunk Loading                     │
│                                                              │
│    ┌──────────────────────────────────────────────┐        │
│    │ ZELRES1.SAR (251KB) - Core Game Resources   │        │
│    ├──────────────────────────────────────────────┤        │
│    │ Chunk 00: 14KB  ★ MAIN PLAYER CODE          │        │
│    │ Chunk 02:  3KB    Player equipment           │        │
│    │ Chunk 04:  3KB    Player stats               │        │
│    │ Chunk 06: 12KB  ★ Advanced player systems    │        │
│    │ Chunk 24:  4KB    Utility functions          │        │
│    │ Chunk 30: 0.4KB   Small utility              │        │
│    │ Chunks 01,03,05,07-23,25-39: Data/Graphics   │        │
│    └──────────────────────────────────────────────┘        │
│                                                              │
│    ┌──────────────────────────────────────────────┐        │
│    │ ZELRES2.SAR (338KB) - System Resources      │        │
│    ├──────────────────────────────────────────────┤        │
│    │ Chunk 00: 16KB  ★ MAIN SYSTEMS               │        │
│    │ Chunk 01: 11KB  ★ Combat system              │        │
│    │ Chunk 02: 24KB  ★ Damage/combat mechanics    │        │
│    │ Chunk 03: 23KB  ★ Physics subsystems         │        │
│    │ Chunk 04: 20KB  ★ Physics engine             │        │
│    │ Chunk 05: 25KB  ★ Enemy AI framework         │        │
│    │ Chunk 06: 21KB  ★ Enemy AI behaviors         │        │
│    │ Chunks 07-17:     Individual enemy types     │        │
│    │ Chunks 38-39:     Utilities                  │        │
│    │ Chunks 11,18-37:  Data/Effects/Sounds        │        │
│    └──────────────────────────────────────────────┘        │
│                                                              │
│    ┌──────────────────────────────────────────────┐        │
│    │ ZELRES3.SAR (335KB) - Level Data            │        │
│    ├──────────────────────────────────────────────┤        │
│    │ Chunk 00:  3KB    Level loader               │        │
│    │ Chunk 14:  7KB    Level renderer             │        │
│    │ Chunk 16: 0.4KB   Level utility              │        │
│    │ Chunk 31: 0.4KB   Level utility              │        │
│    │ Chunks 01-13:     Level map data (8 areas)   │        │
│    │ Chunks 15,17-39:  Graphics/Tiles/Sprites     │        │
│    └──────────────────────────────────────────────┘        │
│                                                              │
│    Chunk Loading Process:                                   │
│    1. Game.bin opens .SAR file                               │
│    2. Reads chunk index from archive                         │
│    3. Seeks to chunk offset                                  │
│    4. Loads chunk to memory segment                          │
│    5. Relocates addresses if needed                          │
│    6. Calls chunk entry point                                │
│                                                              │
│    Binary chunks: 2_EXTRACTED_CHUNKS/zelres*_extracted/     │
│    Assembly: 4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres*_chunks/
│    C Reference: 3_DECOMPILED_C/zelres*_chunk_*_decompiled.c │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      ↓
┌─────────────────────────────────────────────────────────────┐
│ 6. Main Game Initialization (ZELRES1/Chunk 00)             │
│    Entry: First loaded chunk from ZELRES1.SAR               │
│                                                              │
│    Actions:                                                  │
│    • Initialize player data structures                       │
│    • Set up input handlers (keyboard/joystick)               │
│    • Initialize sound system                                 │
│    • Set up timer interrupt (18.2 Hz)                        │
│    • Load main menu chunk                                    │
│    • Display title screen                                    │
│    • Wait for user input                                     │
│                                                              │
│    Assembly: zelres1_chunks/chunk_00.asm (240KB disassembly)│
│    C Reference: zelres1_chunk_00_decompiled.c (5,913 lines) │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      ↓
┌─────────────────────────────────────────────────────────────┐
│ 7. Main Menu / Title Screen                                 │
│    • Display game logo                                       │
│    • Show menu options (New Game, Load, Options, Quit)       │
│    • Handle input                                            │
│    • Load save game if selected                              │
│    • Initialize new game if selected                         │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      ↓ [New Game Selected]
┌─────────────────────────────────────────────────────────────┐
│ 8. Game Initialization                                       │
│    • Load ZELRES2 main systems (chunk 00)                    │
│    • Initialize player stats (Level 1, HP, MP, etc.)         │
│    • Initialize inventory (starting items)                   │
│    • Load first level (Area 1 - Forest)                      │
│    • Set player spawn position                               │
│    • Initialize enemy spawn tables                           │
│    • Start music                                             │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      ↓
┌─────────────────────────────────────────────────────────────┐
│ 9. MAIN GAME LOOP (ZELRES2/Chunk 00)                       │
│    Running at ~18.2 Hz (DOS timer interrupt)                │
│                                                              │
│    Loop Structure:                                           │
│    ┌────────────────────────────────────────┐              │
│    │ while (game_running) {                 │              │
│    │                                         │              │
│    │   1. Process Input                      │              │
│    │      • Read keyboard/joystick           │              │
│    │      • Update input state               │              │
│    │      • Handle menu keys                 │              │
│    │                                         │              │
│    │   2. Update Game State                  │              │
│    │      • Update player physics            │ ← ZELRES1/00│
│    │      • Update player animation          │              │
│    │      • Process player actions           │              │
│    │      • Update enemy AI                  │ ← ZELRES2/05-06
│    │      • Update projectiles               │              │
│    │      • Check collisions                 │ ← ZELRES2/04│
│    │      • Update items                     │              │
│    │      • Update HUD                       │              │
│    │      • Handle level transitions         │              │
│    │                                         │              │
│    │   3. Render Frame                       │              │
│    │      • Clear back buffer                │              │
│    │      • Draw background tiles            │ ← ZELRES3   │
│    │      • Draw sprites (enemies, items)    │              │
│    │      • Draw player sprite               │              │
│    │      • Draw effects/projectiles         │              │
│    │      • Draw HUD overlay                 │              │
│    │      • Flip buffers (via GM*.BIN)       │              │
│    │                                         │              │
│    │   4. Timing / Wait for VSync            │              │
│    │      • Check timer                      │              │
│    │      • Wait for next frame              │              │
│    │      • Maintain ~18 FPS                 │              │
│    │                                         │              │
│    │   5. Dynamic Chunk Loading              │              │
│    │      • Unload unused chunks             │              │
│    │      • Load needed chunks               │              │
│    │      • Manage memory                    │              │
│    │ }                                       │              │
│    └────────────────────────────────────────┘              │
│                                                              │
│    Assembly: zelres2_chunks/chunk_00.asm (266KB)            │
│    C Reference: zelres2_chunk_00_decompiled.c (6,072 lines) │
└─────────────────────┬───────────────────────────────────────┘
                      │
                      │ [Game loop continues...]
                      │
                      ↓
┌─────────────────────────────────────────────────────────────┐
│ 10. Key Subsystems Called During Game Loop                  │
│                                                              │
│    ┌─────────────────────────────────────────────┐         │
│    │ Player Movement System (ZELRES1/00)         │         │
│    │ • Process input (left/right/jump)            │         │
│    │ • Apply velocity                             │         │
│    │ • Apply gravity                              │         │
│    │ • Check ground collision                     │         │
│    │ • Update animation state                     │         │
│    │ • Handle special moves (dash, etc.)          │         │
│    └─────────────────────────────────────────────┘         │
│                                                              │
│    ┌─────────────────────────────────────────────┐         │
│    │ Combat System (ZELRES2/01-02)               │         │
│    │ • Detect attack input                        │         │
│    │ • Calculate damage (base + level + weapon)   │         │
│    │ • Check hit detection (AABB collision)       │         │
│    │ • Apply damage to enemy                      │         │
│    │ • Update enemy HP                            │         │
│    │ • Trigger death if HP <= 0                   │         │
│    └─────────────────────────────────────────────┘         │
│                                                              │
│    ┌─────────────────────────────────────────────┐         │
│    │ Physics Engine (ZELRES2/03-04)              │         │
│    │ • Update all entity velocities               │         │
│    │ • Apply gravity to all entities              │         │
│    │ • Check tile collisions (8x8 tiles)          │         │
│    │ • Check entity-entity collisions             │         │
│    │ • Resolve penetrations                       │         │
│    │ • Apply friction                             │         │
│    └─────────────────────────────────────────────┘         │
│                                                              │
│    ┌─────────────────────────────────────────────┐         │
│    │ Enemy AI System (ZELRES2/05-17)             │         │
│    │ For each enemy:                              │         │
│    │   • Load enemy type behavior chunk           │         │
│    │   • Update AI state machine                  │         │
│    │     - Idle → Patrol → Chase → Attack         │         │
│    │   • Calculate movement vector                │         │
│    │   • Apply enemy physics                      │         │
│    │   • Check attack range                       │         │
│    │   • Execute attack if in range               │         │
│    │   • Update enemy animation                   │         │
│    └─────────────────────────────────────────────┘         │
│                                                              │
│    ┌─────────────────────────────────────────────┐         │
│    │ Level/Map System (ZELRES3/00,14)            │         │
│    │ • Load level tilemap data                    │         │
│    │ • Load enemy spawn table                     │         │
│    │ • Load item placements                       │         │
│    │ • Render visible tiles (camera viewport)     │         │
│    │ • Handle screen scrolling                    │         │
│    │ • Trigger level transitions                  │         │
│    └─────────────────────────────────────────────┘         │
└─────────────────────────────────────────────────────────────┘

## Memory Map (DOS Real Mode)

```
┌─────────────────────────────────────────────────────────────┐
│ DOS Memory Layout (Segment:Offset addressing)               │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│ 0000:0000                                                    │
│   ├─ DOS Interrupt Vectors                                  │
│   ├─ BIOS Data Area                                         │
│   └─ DOS Kernel                                             │
│                                                              │
│ [Variable]                                                   │
│   ├─ ZELIAD.EXE (3KB)                                       │
│   │    - Loader code                                        │
│   │    - DOS environment                                    │
│   └─ Command line params                                    │
│                                                              │
│ [CS] (Code Segment - set by ZELIAD)                         │
│   ├─ 0x0000: GAME.BIN (1.2KB)                               │
│   │    - Main loader                                        │
│   │    - Chunk dispatcher                                   │
│   │                                                          │
│   ├─ 0x3000: Graphics Driver Area                           │
│   │    - GM*.BIN (60KB+)                                    │
│   │    - Graphics functions                                 │
│   │                                                          │
│   ├─ 0x6000: Dynamic Chunk Area 1                           │
│   │    - Loaded ZELRES1 chunks                              │
│   │    - Player code (14KB)                                 │
│   │                                                          │
│   ├─ 0x9000: Dynamic Chunk Area 2                           │
│   │    - Loaded ZELRES2 chunks                              │
│   │    - Combat/AI code                                     │
│   │                                                          │
│   ├─ 0xC000: Dynamic Chunk Area 3                           │
│   │    - Level data                                         │
│   │    - Map tiles                                          │
│   │                                                          │
│   ├─ 0xE200: Dynamic Chunk Area 4                           │
│   │    - Additional loaded chunks                           │
│   │                                                          │
│   └─ 0xFF00-0xFFFF: Global Variables                        │
│       - Player stats                                        │
│       - Game state flags                                    │
│       - System variables                                    │
│                                                              │
│ A000:0000                                                    │
│   └─ Video RAM (graphics mode dependent)                    │
│       - CGA: 0xB800                                         │
│       - EGA/VGA: 0xA000                                     │
│                                                              │
│ [High Memory]                                                │
│   └─ DOS, BIOS, TSRs                                        │
└─────────────────────────────────────────────────────────────┘
```

## Chunk Loading Strategy

### Static Chunks (Always Loaded)
- **ZELRES1/Chunk 00** - Core player code (240KB disassembly)
- **ZELRES2/Chunk 00** - Main systems (266KB disassembly)
- **Graphics Driver** - Active GM*.BIN

### Dynamic Chunks (Loaded on Demand)
- **Level Chunks** - ZELRES3 chunks for current area
- **Enemy Chunks** - ZELRES2/07-17 for active enemy types
- **Combat Chunks** - ZELRES2/01-02 during combat
- **Physics Chunks** - ZELRES2/03-04 for complex physics

### Chunk Swap Triggers
1. **Level transition** - Unload old level, load new
2. **New enemy type** - Load enemy behavior chunk
3. **Special ability** - Load magic/special code
4. **Menu access** - Load UI chunks

## Call Chain Example: Player Jump

```
User presses JUMP key
    ↓
DOS Keyboard Interrupt (INT 0x16)
    ↓
ZELIAD Input Handler
    ↓
GAME.BIN Main Loop (game.asm:0x0097)
    ↓
ZELRES1/Chunk 00: ProcessInput() (chunk_00.asm:????)
    ↓
ZELRES1/Chunk 00: PlayerJump() (chunk_00.asm:????)
    ├─ Check if on ground
    ├─ Apply jump velocity (e.g., 0xFC00 = -4.0 in fixed-point)
    └─ Set player state to JUMPING
    ↓
ZELRES2/Chunk 04: UpdatePhysics() (chunk_04.asm:????)
    ├─ Apply gravity (e.g., 0x0020 = 0.125)
    ├─ Update Y position
    └─ Check collisions
    ↓
Graphics Driver: DrawPlayer() (gm*.asm)
    ├─ Blit player sprite
    └─ Flip buffer
```

## File Reference Table

| Component | Binary | Assembly | C Decompilation | Size |
|-----------|--------|----------|-----------------|------|
| Loader | 1_ORIGINAL_DOS/zeliad.exe | zeliad.asm | zeliad_decompiled.c | 3KB |
| Main Loader | 1_ORIGINAL_DOS/game.bin | game.asm | game_decompiled.c | 1.2KB |
| CGA Driver | 1_ORIGINAL_DOS/gmcga.bin | gmcga.asm | N/A | 62KB |
| EGA Driver | 1_ORIGINAL_DOS/gmega.bin | gmega.asm | N/A | 69KB |
| Player Core | zelres1/chunk_00.bin | zelres1_chunks/chunk_00.asm | zelres1_chunk_00_decompiled.c | 14KB |
| Main Systems | zelres2/chunk_00.bin | zelres2_chunks/chunk_00.asm | zelres2_chunk_00_decompiled.c | 16KB |
| Combat | zelres2/chunk_02.bin | zelres2_chunks/chunk_02.asm | zelres2_chunk_02_decompiled.c | 24KB |
| Physics | zelres2/chunk_04.bin | zelres2_chunks/chunk_04.asm | zelres2_chunk_04_decompiled.c | 20KB |
| Enemy AI | zelres2/chunk_05-06.bin | zelres2_chunks/chunk_05-06.asm | zelres2_chunk_05-06_decompiled.c | 46KB |

## For MonoGame Port

### What to Port from Each Component

**From ZELIAD.EXE:**
- ❌ Don't port: DOS-specific loader
- ✅ Extract: Graphics mode detection logic (for settings)
- ✅ Extract: Command-line argument handling (for debugging)

**From GAME.BIN:**
- ❌ Don't port: Chunk loading system (use C# asset loading)
- ❌ Don't port: Memory management (C# handles this)
- ✅ Extract: Initialization sequence
- ✅ Extract: Global variable layout

**From GM*.BIN:**
- ❌ Don't port: Low-level graphics (use MonoGame API)
- ✅ Extract: Sprite dimensions, palette values
- ✅ Extract: Rendering order, layering

**From ZELRES1 Chunks:**
- ✅ Port: ALL player mechanics (movement, jumping, combat)
- ✅ Port: Input handling logic
- ✅ Port: Animation state machines
- ✅ Port: All constants (speeds, timings, etc.)

**From ZELRES2 Chunks:**
- ✅ Port: ALL combat formulas (damage, XP, leveling)
- ✅ Port: ALL physics (gravity, collision, velocity)
- ✅ Port: ALL enemy AI (state machines, behaviors)
- ✅ Port: All game constants

**From ZELRES3 Chunks:**
- ❌ Don't port: Binary level format (convert to modern format)
- ✅ Extract: Level layouts, enemy placements
- ✅ Extract: Item positions, spawn points

## Summary Workflow for Porting

```
1. Read assembly for mechanic in:
   4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres*_chunks/*.asm

2. Cross-reference with C in:
   3_DECOMPILED_C/zelres*_chunk_*_decompiled.c

3. Extract constants, formulas, and logic

4. Port to MonoGame C# in:
   MONOGAME_CS/Systems/*.cs

5. Verify behavior matches original
```

This execution map shows you exactly where every piece of game logic lives and how it all flows together! 🎮

---

*Created: 2026-02-04*
*Status: Complete execution flow mapped*
*Use this as your master reference for understanding game architecture*
