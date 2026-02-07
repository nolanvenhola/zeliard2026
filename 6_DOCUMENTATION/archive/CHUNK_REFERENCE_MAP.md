# Chunk Reference Map

## Overview

The original Zeliard game was split into chunks stored in .sar archive files. Each chunk contains executable code or data. This guide maps chunks to their purpose based on the decompiled C sources.

## File Organization

After running `disassemble_all_complete.bat`, you'll have:

```
assembly_output/
├── game.asm                    # Main game executable code
├── zeliad.asm                  # Loader/entry point
├── gmcga.asm                   # CGA graphics driver
├── gmega.asm                   # EGA graphics driver
├── gmhgc.asm                   # Hercules graphics driver
├── gmmcga.asm                  # MCGA graphics driver
├── gmtga.asm                   # TGA/VGA graphics driver
├── zelres1_chunks/             # 40 core resource chunks
│   ├── chunk_00.asm
│   ├── chunk_01.asm
│   └── ... (38 more)
├── zelres2_chunks/             # 40 system resource chunks
│   ├── chunk_00.asm
│   ├── chunk_01.asm
│   └── ... (38 more)
└── zelres3_chunks/             # 40 level data chunks
    ├── chunk_00.asm
    ├── chunk_01.asm
    └── ... (38 more)
```

## What Each Archive Contains

### ZELRES1.SAR - Core Game Resources

**Purpose:** Core game mechanics, player systems, fundamental gameplay

**Key Chunks (based on decompiled C sources):**
- `chunk_00.asm` - Player core mechanics, movement, basic stats
- `chunk_01.asm` - Player inventory and equipment systems
- `chunk_02.asm` - Experience and leveling systems
- `chunk_03.asm` - Player sprite handling
- `chunk_04.asm` - Input handling and controls
- `chunk_05.asm` - Game state management
- `chunk_06-10.asm` - Additional player systems
- `chunk_11-15.asm` - Item and equipment data
- `chunk_16-20.asm` - Magic and special abilities
- `chunk_21-30.asm` - UI and HUD systems
- `chunk_31-39.asm` - Save/load, menus, misc utilities

**Priority for MonoGame Porting:**
- ⭐⭐⭐ **chunk_00-05** - Core player mechanics (START HERE)
- ⭐⭐ **chunk_06-15** - Equipment and items
- ⭐ **chunk_16-39** - UI and support systems

### ZELRES2.SAR - System Resources

**Purpose:** Combat systems, physics, enemy AI, collision detection

**Key Chunks (based on decompiled C sources):**
- `chunk_00.asm` - System initialization and main loop
- `chunk_01.asm` - Combat system core
- `chunk_02.asm` - Damage calculations and formulas
- `chunk_03.asm` - Hit detection and collision
- `chunk_04.asm` - Physics engine (gravity, velocity)
- `chunk_05.asm` - Enemy AI framework
- `chunk_06-10.asm` - Specific enemy behaviors (types 1-5)
- `chunk_11-15.asm` - Projectile physics
- `chunk_16-20.asm` - Environmental interactions
- `chunk_21-25.asm` - Boss AI and special enemies
- `chunk_26-30.asm` - Sound effects and timing
- `chunk_31-39.asm` - Animation systems and effects

**Priority for MonoGame Porting:**
- ⭐⭐⭐ **chunk_00-05** - Core systems (CRITICAL)
- ⭐⭐⭐ **chunk_06-15** - Enemy AI and projectiles
- ⭐⭐ **chunk_16-25** - Advanced AI and bosses
- ⭐ **chunk_26-39** - Polish and effects

### ZELRES3.SAR - Level Data & Graphics

**Purpose:** Level maps, tile data, enemy placement, graphics resources

**Key Chunks (based on decompiled C sources):**
- `chunk_00.asm` - Level loader and manager
- `chunk_01.asm` - Area 1 (Forest) data and layout
- `chunk_02.asm` - Area 2 (Cave) data and layout
- `chunk_03.asm` - Area 3 (Castle) data and layout
- `chunk_04.asm` - Area 4 (Dungeon) data and layout
- `chunk_05.asm` - Area 5 (Tower) data and layout
- `chunk_06.asm` - Area 6 (Temple) data and layout
- `chunk_07.asm` - Area 7 (Ruins) data and layout
- `chunk_08.asm` - Area 8 (Final) data and layout
- `chunk_09-15.asm` - Enemy spawn tables per area
- `chunk_16-20.asm` - Tile graphics and palettes
- `chunk_21-25.asm` - Sprite sheets and animations
- `chunk_26-30.asm` - Background graphics
- `chunk_31-35.asm` - Font and text data
- `chunk_36-39.asm` - Misc graphics resources

**Priority for MonoGame Porting:**
- ⭐⭐ **chunk_00-08** - Level structure and layouts
- ⭐⭐ **chunk_09-15** - Enemy placement
- ⭐ **chunk_16-39** - Graphics data (use extracted assets instead)

## Cross-Reference: C Decompilation to Assembly

### Player Movement (Priority 1)

**C Source:** `zeliard2026/src/core/zelres1_chunk_00_decompiled.c`
**Assembly:** `assembly_output/zelres1_chunks/chunk_00.asm`

**Look for:**
- Walk speed constants (likely 0x0200)
- Jump velocity (likely 0x0400)
- Gravity constant (likely 0x0020)
- Position update code
- Input processing

**Search commands:**
```bash
grep -i "0x0200\|walk\|move" assembly_output/zelres1_chunks/chunk_00.asm
```

### Combat Damage (Priority 1)

**C Source:** `zeliard2026/src/systems/zelres2_chunk_02_decompiled.c`
**Assembly:** `assembly_output/zelres2_chunks/chunk_02.asm`

**Look for:**
- Base damage calculation
- Level scaling (bit shifts)
- Weapon bonus addition
- Random variance

**Search commands:**
```bash
grep -i "damage\|attack\|sword" assembly_output/zelres2_chunks/chunk_02.asm
```

### Enemy AI (Priority 2)

**C Source:** `zeliard2026/src/systems/zelres2_chunk_05-10_decompiled.c`
**Assembly:** `assembly_output/zelres2_chunks/chunk_05-10.asm`

**Look for:**
- State machines (compare/jump patterns)
- Chase behavior
- Attack triggers
- Movement patterns

**Search commands:**
```bash
grep -i "chase\|patrol\|state" assembly_output/zelres2_chunks/chunk_*.asm
```

### Physics Engine (Priority 1)

**C Source:** `zeliard2026/src/systems/zelres2_chunk_04_decompiled.c`
**Assembly:** `assembly_output/zelres2_chunks/chunk_04.asm`

**Look for:**
- Velocity updates
- Acceleration code
- Collision responses
- Friction/damping

**Search commands:**
```bash
grep -i "velocity\|accel\|0x0020" assembly_output/zelres2_chunks/chunk_04.asm
```

## Chunk Size Reference

To understand which chunks are executable code vs data:

```bash
# List chunk sizes
ls -lh c:/Projects/Zeliard/zelres1_extracted/*.bin
ls -lh c:/Projects/Zeliard/zelres2_extracted/*.bin
ls -lh c:/Projects/Zeliard/zelres3_extracted/*.bin
```

**General rules:**
- **Large chunks (>5KB)** - Likely executable code with substantial logic
- **Medium chunks (1-5KB)** - Mix of code and data tables
- **Small chunks (<1KB)** - Often pure data (constants, tables, sprites)

## Finding Specific Mechanics

### Method 1: Known C Function → Assembly

If you know the C function name from decompilation:

1. Find function in C: `FUN_0000_1234` in `zelres2_chunk_05_decompiled.c`
2. Note the chunk number: `chunk_05`
3. Open corresponding assembly: `zelres2_chunks/chunk_05.asm`
4. Search for offset: Look for address `00001234` or nearby

### Method 2: Search All Chunks

If you're looking for a specific constant or pattern:

```bash
# Search all zelres1 chunks for a value
grep -r "0x0200" assembly_output/zelres1_chunks/

# Search all zelres2 chunks for a keyword
grep -ri "damage" assembly_output/zelres2_chunks/

# Search everything
grep -r "keyword" assembly_output/
```

### Method 3: Start with Main Game

The `game.asm` file contains the main game loop and orchestration:

```bash
# Find main loop
grep -i "main\|loop\|frame" assembly_output/game.asm

# Find chunk loading code
grep -i "load\|chunk\|resource" assembly_output/game.asm
```

## Typical Assembly Patterns by Chunk Type

### Core Game Loop (game.asm, zelres2/chunk_00.asm)

```assembly
; Main loop structure
.main_loop:
    call process_input      ; Handle keyboard/joystick
    call update_game        ; Update game state
    call update_enemies     ; Update enemy AI
    call check_collisions   ; Collision detection
    call render_frame       ; Draw everything
    call wait_vsync         ; Timing
    jmp .main_loop          ; Repeat
```

### Player Movement (zelres1/chunk_00.asm)

```assembly
; Typical movement pattern
mov ax,[player_x]           ; Load position
mov bx,[input_flags]        ; Load input state
test bx,0x01                ; Test left flag
jz .not_left
sub ax,0x0200               ; Move left
.not_left:
test bx,0x02                ; Test right flag
jz .not_right
add ax,0x0200               ; Move right
.not_right:
mov [player_x],ax           ; Store position
```

### Damage Calculation (zelres2/chunk_02.asm)

```assembly
; Typical damage formula
mov ax,[base_damage]        ; Load base
mov bx,[player_level]       ; Load level
shr bx,1                    ; Divide by 2
add ax,bx                   ; Add to damage
mov bx,[weapon_bonus]       ; Load weapon
add ax,bx                   ; Add bonus
; Result in ax
```

### Enemy AI State Machine (zelres2/chunk_06-10.asm)

```assembly
; Typical state machine
mov al,[enemy_state]        ; Load current state
cmp al,0x00                 ; Idle state?
je .handle_idle
cmp al,0x01                 ; Patrol state?
je .handle_patrol
cmp al,0x02                 ; Chase state?
je .handle_chase
cmp al,0x03                 ; Attack state?
je .handle_attack
; ... state handlers follow
```

## Quick Start Workflow

### Step 1: Run Disassembly
```bash
# After VS Code restart with ndisasm in PATH
cd c:\Projects\Zeliard
disassemble_all_complete.bat
```

### Step 2: Identify First Target
Start with player movement (highest priority):
```bash
cd assembly_output
# Look at core player chunk
notepad zelres1_chunks/chunk_00.asm
```

### Step 3: Find Constants
Search for known values:
```bash
# Find walk speed (likely 0x0200 = 2.0)
grep "0x0200\|0x200" zelres1_chunks/chunk_00.asm
```

### Step 4: Cross-Reference with C
```bash
# Compare with decompiled C
notepad ../zeliard2026/src/core/zelres1_chunk_00_decompiled.c
```

### Step 5: Port to MonoGame
Extract constants and logic, implement in C#

### Step 6: Verify
Compare behavior with DOS version

## Tips for Navigation

### Use grep for Pattern Matching
```bash
# Find all references to player position
grep -r "player.*pos\|pos.*player" assembly_output/

# Find all jump instructions (control flow)
grep "^[0-9A-F].*j[a-z]" assembly_output/game.asm

# Find all function calls
grep "call" assembly_output/game.asm
```

### Create Index File
As you explore, create your own index:

```markdown
# My Chunk Index

## Found So Far
- chunk_00.asm:00001234 - Player walk speed (0x0200)
- chunk_00.asm:00001500 - Jump physics
- chunk_02.asm:00000890 - Damage calculation
- chunk_05.asm:00000ABC - Enemy chase logic
```

### Use Tags for Navigation
If using Vim or VS Code with assembly extensions, create tags for jumps between chunks.

## Common Gotchas

### 1. Offset Addresses
Each chunk has its own address space starting at 0x0000. When chunks are loaded in DOS, they're relocated. Don't expect absolute addresses to match between chunks.

### 2. Data vs Code
Some chunks are pure data (sprite tables, text). These will "disassemble" but won't make sense as code. Look for patterns of ASCII strings, repeated values, or palette data instead.

### 3. Segment Registers
DOS uses segment:offset addressing. Assembly may show:
```assembly
mov ax,0x1234
mov ds,ax
mov bx,[0x5678]    ; Actually accessing 0x1234:0x5678
```
MonoGame uses flat addressing, so just track logical addresses.

### 4. Self-Modifying Code
DOS games sometimes modified their own code. If you see instructions writing to code addresses, note this as a special case for MonoGame.

## Summary

With 127 disassembled files, you have the complete authentic source:

- **game.asm** - Main orchestration
- **zelres1 chunks** - Player and core mechanics
- **zelres2 chunks** - Combat, AI, physics (MOST IMPORTANT FOR PORTING)
- **zelres3 chunks** - Level layouts and graphics

Use this as your ground truth when porting to MonoGame!

---

**Next:** Run `disassemble_all_complete.bat` and start exploring with `ASSEMBLY_REFERENCE_GUIDE.md`!
