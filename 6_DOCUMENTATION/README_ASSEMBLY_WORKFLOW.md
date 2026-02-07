# Assembly-to-MonoGame Workflow Guide

## Quick Start

You've decided to work from assembly disassembly instead of C decompilation for maximum authenticity. Here's your complete workflow.

## Setup (One-Time)

### 1. Install Tools ✅ DONE
- [x] NASM/ndisasm installed via winget

### 2. Restart VS Code
**Required to pick up ndisasm in PATH**

```bash
# Close and reopen VS Code
# Or reload window: Ctrl+Shift+P → "Reload Window"
```

### 3. Run Disassembly

**Option A: Code Only (Recommended)**
```bash
cd c:\Projects\Zeliard
disassemble_code_only.bat
```

Creates 36 assembly files (executable code only)

**Option B: Everything**
```bash
cd c:\Projects\Zeliard
disassemble_all_complete.bat
```

Creates 127 assembly files (code + data resources)

## What You Have Now

```
c:\Projects\Zeliard\
│
├── zeliard2026\                    ← Decompiled C (reference/comparison)
│   ├── src\
│   └── cmake-build-debug-fullgame\*.exe
│
├── ZeliardModern\                  ← MonoGame C# (75% complete, needs authentic logic)
│   ├── Systems\
│   ├── Models\
│   └── Content\
│
├── assembly_output\                ← NEW! Authentic assembly (ground truth)
│   ├── game.asm                    ← Main game code
│   ├── zelres1_chunks\*.asm        ← Player mechanics
│   ├── zelres2_chunks\*.asm        ← Combat/AI/physics
│   └── zelres3_chunks\*.asm        ← Level code
│
├── disassemble_code_only.bat      ← Run this (after VS Code restart)
├── disassemble_all_complete.bat   ← Alternative (includes data)
│
└── Documentation:
    ├── ASSEMBLY_REFERENCE_GUIDE.md         ← How to read assembly
    ├── EXECUTABLE_VS_DATA_CHUNKS.md        ← Code vs data explanation
    ├── CHUNK_REFERENCE_MAP.md              ← What each chunk contains
    ├── AUTHENTIC_INTEGRATION_PLAN.md       ← Integration strategy
    ├── PROJECT_OVERVIEW.md                 ← Project status
    └── README_ASSEMBLY_WORKFLOW.md         ← This file
```

## Workflow: Assembly → MonoGame

### Phase 1: Understand (1 hour)

Read these documents in order:

1. **EXECUTABLE_VS_DATA_CHUNKS.md** (5 min)
   - Understand which chunks are code vs data
   - See the 29 executable chunks to disassemble

2. **ASSEMBLY_REFERENCE_GUIDE.md** (30 min)
   - Learn how to read x86 assembly
   - Understand fixed-point math
   - See example patterns

3. **CHUNK_REFERENCE_MAP.md** (15 min)
   - Map chunks to game mechanics
   - Identify priority chunks
   - Cross-reference with C code

4. **AUTHENTIC_INTEGRATION_PLAN.md** (10 min)
   - Understand the integration strategy
   - See the verification workflow
   - Review priority mechanics

### Phase 2: First Mechanic - Player Movement (2-3 hours)

**Goal:** Port authentic player walk speed from assembly to MonoGame

#### Step 1: Find in Assembly (30 min)

```bash
cd c:\Projects\Zeliard\assembly_output

# Search for walk speed constant
grep -i "0x0200\|0x200" zelres1_chunks/chunk_00.asm | less

# Look for player position updates
grep -i "player.*pos\|mov.*\[" zelres1_chunks/chunk_00.asm | less
```

#### Step 2: Analyze the Code (30 min)

Open `zelres1_chunks/chunk_00.asm` and look for:

```assembly
; Find patterns like:
mov ax,[player_x]        ; Load position
add ax,0x0200            ; Add velocity (2.0 in fixed-point)
mov [player_x],ax        ; Store position
```

**Extract:**
- Walk speed constant: `0x0200` = 2.0 pixels/frame
- Position variable location
- Input checking logic
- Boundary conditions

#### Step 3: Compare with C Decompilation (15 min)

```bash
# Open corresponding C file
code zeliard2026/src/core/zelres1_chunk_00_decompiled.c

# Search for same constant
grep -n "0x0200\|0x200" zeliard2026/src/core/zelres1_chunk_00_decompiled.c
```

**Verify:** Does C decompilation match assembly?
- ✅ Matches → Can use C as reference too
- ❌ Differs → Trust assembly as ground truth

#### Step 4: Port to MonoGame (45 min)

Edit `ZeliardModern/Systems/PlayerSystem.cs`:

```csharp
public class PlayerSystem
{
    // AUTHENTIC CONSTANTS from assembly
    // Source: zelres1_chunks/chunk_00.asm:0x1234
    public const float WALK_SPEED = 2.0f;  // 0x0200 in fixed-point

    public void UpdateMovement(Player player, InputState input, float deltaTime)
    {
        // Port the authentic logic
        float velocityX = 0;

        if (input.Left)
            velocityX = -WALK_SPEED;
        else if (input.Right)
            velocityX = WALK_SPEED;

        player.Position.X += velocityX;

        // Boundary check (from assembly)
        if (player.Position.X < 0)
            player.Position.X = 0;
        else if (player.Position.X > 320) // Screen width from assembly
            player.Position.X = 320;
    }
}
```

#### Step 5: Verify (30 min)

**Test in DOS version:**
1. Boot DOSBox
2. Run original Zeliard
3. Press RIGHT for 60 frames
4. Record final position

**Test in MonoGame:**
1. Run ZeliardModern
2. Press RIGHT for 60 frames
3. Compare position

**Expected:** Both should be at X=120 (2.0 * 60 frames)

#### Step 6: Document (15 min)

Create `ZeliardModern/AUTHENTIC_SOURCES.md`:

```markdown
# Authentic Mechanics Sources

## Player Walk Speed
- **Assembly Source:** zelres1_chunks/chunk_00.asm:0x1234
- **Constant:** 0x0200 = 2.0 pixels/frame
- **C Source:** zelres1_chunk_00_decompiled.c:456 (matches ✓)
- **MonoGame:** Systems/PlayerSystem.cs:WALK_SPEED
- **Verified:** 2024-02-04 - Positions match after 60 frames ✓

## Verification Test Results
- DOS version: X=120 after 60 frames
- MonoGame: X=120 after 60 frames
- Status: ✅ AUTHENTIC MATCH
```

### Phase 3: Core Mechanics (1-2 weeks)

Repeat the process for each mechanic:

**Week 1:**
- [ ] Player walk speed (done above)
- [ ] Player jump velocity and arc
- [ ] Gravity constant
- [ ] Collision detection
- [ ] Attack damage calculation

**Week 2:**
- [ ] Enemy AI states
- [ ] Enemy movement patterns
- [ ] Projectile physics
- [ ] XP/leveling formulas
- [ ] Item effects

### Phase 4: Integration Testing (3-5 days)

Run side-by-side comparison:
- DOS version (DOSBox)
- MonoGame version
- Record and compare gameplay frame-by-frame

### Phase 5: Complete Port (2-3 weeks)

Continue with all remaining mechanics using the same workflow.

## Priority Mechanics to Port

### 🔴 Critical (Port First)

1. **Player Movement** - `zelres1_chunks/chunk_00.asm`
   - Walk speed
   - Jump velocity
   - Gravity
   - Air control

2. **Physics Engine** - `zelres2_chunks/chunk_04.asm`
   - Collision detection
   - Velocity updates
   - Friction/damping

3. **Combat Damage** - `zelres2_chunks/chunk_02.asm`
   - Base damage formula
   - Level scaling
   - Weapon bonuses
   - Critical hits

### 🟡 High Priority (Port Next)

4. **Enemy AI Framework** - `zelres2_chunks/chunk_05-06.asm`
   - State machines
   - Chase behavior
   - Attack triggers

5. **Player Systems** - `zelres1_chunks/chunk_06.asm`
   - Equipment handling
   - Inventory
   - Stats

### 🟢 Medium Priority

6. **Specific Enemy Types** - `zelres2_chunks/chunk_07-17.asm`
   - Individual enemy behaviors
   - Boss patterns

7. **Level Systems** - `zelres3_chunks/chunk_00,14.asm`
   - Level loading
   - Area transitions

## Tools & Commands Reference

### Search Assembly
```bash
# Find constant
grep "0x0200" assembly_output/**/*.asm

# Find keywords
grep -i "damage\|attack" assembly_output/zelres2_chunks/*.asm

# Find function calls
grep "call" assembly_output/game.asm
```

### Convert Fixed-Point
```bash
# Hex to decimal
python -c "print(0x0200)"  # 512

# Fixed-point to float (8.8 format)
python -c "print(0x0200 / 256.0)"  # 2.0
```

### Compare DOS vs MonoGame
```bash
# Run DOS version
dosbox c:\Projects\Zeliard\zeliad.exe

# Run MonoGame version
cd ZeliardModern
dotnet run
```

### Disassemble Additional Files
```bash
# If you need to disassemble a specific file
ndisasm -b 16 -o 0 <file.bin> > output.asm
```

## File Reference Quick Links

### Assembly Files (Priority Order)

1. `assembly_output/game.asm` - Main game loop
2. `assembly_output/zelres1_chunks/chunk_00.asm` - Player core (240KB) ⭐
3. `assembly_output/zelres2_chunks/chunk_00.asm` - Systems (135KB) ⭐
4. `assembly_output/zelres1_chunks/chunk_06.asm` - Player systems (66KB) ⭐
5. `assembly_output/zelres2_chunks/chunk_02.asm` - Damage (24KB)
6. `assembly_output/zelres2_chunks/chunk_04.asm` - Physics (20KB)
7. `assembly_output/zelres2_chunks/chunk_05.asm` - AI (25KB)
8. `assembly_output/zelres2_chunks/chunk_06.asm` - AI (21KB)

### C Decompilation (For Comparison)

1. `zeliard2026/src/core/zelres1_chunk_00_decompiled.c`
2. `zeliard2026/src/systems/zelres2_chunk_00_decompiled.c`
3. `zeliard2026/src/systems/zelres2_chunk_02_decompiled.c`
4. `zeliard2026/src/systems/zelres2_chunk_04_decompiled.c`

### MonoGame Target Files

1. `ZeliardModern/Systems/PlayerSystem.cs`
2. `ZeliardModern/Systems/CombatSystem.cs`
3. `ZeliardModern/Physics/PhysicsEngine.cs`
4. `ZeliardModern/Systems/EnemyAI.cs`
5. `ZeliardModern/Models/Player.cs`

## Common Assembly Patterns

### Movement
```assembly
mov ax,[pos]      ; Load position
add ax,0x0200     ; Add velocity
mov [pos],ax      ; Store position
```

### Damage Calculation
```assembly
mov ax,[base]     ; Load base damage
mov bx,[level]    ; Load level
shr bx,1          ; Divide by 2
add ax,bx         ; Add to damage
```

### Collision Check
```assembly
mov ax,[x1]       ; Load position 1
cmp ax,[x2]       ; Compare with position 2
jl .no_collision  ; Jump if less
```

### State Machine
```assembly
mov al,[state]    ; Load current state
cmp al,0x00       ; Compare with idle
je .handle_idle   ; Jump to handler
```

## Tips for Success

### 1. Start Small
Port one mechanic at a time. Don't try to do everything at once.

### 2. Trust the Assembly
If assembly and C decompilation differ, trust the assembly.

### 3. Document Everything
Record sources, constants, and verification results.

### 4. Test Frequently
Verify each mechanic against DOS version before moving on.

### 5. Use Both References
Assembly for accuracy, C decompilation for context/understanding.

### 6. Fixed-Point is Key
Remember DOS used integer math with implied decimals.

### 7. Frame-by-Frame
DOS ran at 60 FPS. Match this timing in MonoGame.

## Troubleshooting

### "ndisasm not found"
- Restart VS Code to pick up PATH changes
- Or manually add NASM to PATH

### "Assembly looks wrong"
- Verify it's executable code, not data
- Check if chunk is in the "code only" list

### "Behavior doesn't match DOS"
- Double-check constants (fixed-point conversion)
- Verify frame timing (60 FPS)
- Check for signed vs unsigned values

### "Can't find mechanic in assembly"
- Search multiple chunks (code may span chunks)
- Try different keywords
- Reference C decompilation for hints

## Success Criteria

Your MonoGame port is authentic when:

✅ **Constants Match**
- Walk speed, jump velocity, gravity, etc.

✅ **Formulas Match**
- Damage, XP, leveling use exact same calculations

✅ **Behavior Matches**
- Frame-by-frame comparison with DOS version

✅ **Feel Matches**
- Gameplay "feels" identical to 1990 version

## Next Steps

1. ✅ Install ndisasm (DONE)
2. ⏳ Restart VS Code (YOU ARE HERE)
3. ⏳ Run `disassemble_code_only.bat`
4. ⏳ Read documentation (guides above)
5. ⏳ Port first mechanic (player movement)
6. ⏳ Verify against DOS version
7. ⏳ Document and continue

---

## Summary

You now have:
- ✅ Three disassembly scripts ready
- ✅ Complete documentation set
- ✅ Clear workflow defined
- ✅ Priority mechanics identified
- ✅ Verification strategy
- ✅ Success criteria

**After VS Code restart, run `disassemble_code_only.bat` to begin!**

Good luck porting Zeliard with **100% authentic** game mechanics! 🎮
