# Assembly Reference Guide for Zeliard

## Overview

This guide explains how to use the disassembled assembly files as the ground truth for porting Zeliard to MonoGame.

## Why Use Assembly Instead of C Decompilation?

**Advantages:**
- **100% Accurate** - No decompilation interpretation errors
- **Original Intent** - See exactly what the DOS code does
- **Authentic Behavior** - Every instruction, every flag, every quirk
- **Verification** - Can verify C decompilation accuracy

**Trade-offs:**
- Harder to read than C code
- Requires x86 assembly knowledge
- More work to understand high-level logic

## Disassembled Files

After running `disassemble_all.bat`, you'll have these files:

### Core Game Files

**game.asm** - Main game code (largest file)
- Player movement and physics
- Combat system
- Level logic
- Game state management
- Most important file for porting

**zeliad.asm** - Loader/entry point
- DOS executable loader
- Initializes graphics mode
- Loads game.bin into memory
- Less relevant for MonoGame (we'll handle loading differently)

### Graphics Mode Files

**gmcga.asm** - CGA (320x200, 4-color) graphics driver
**gmega.asm** - EGA (640x350, 16-color) graphics driver
**gmhgc.asm** - Hercules (720x348, monochrome) graphics driver
**gmmcga.asm** - MCGA (320x200, 256-color) graphics driver
**gmtga.asm** - TGA/VGA (640x480, 16-color) graphics driver

These contain low-level graphics routines:
- Pixel plotting
- Sprite drawing
- Screen scrolling
- Palette management

For MonoGame, you'll extract the **logic** (sprite sizes, positions, timing) but use MonoGame's rendering API instead of replicating the pixel-level code.

## How to Read the Assembly

### Basic Format

```assembly
00000000  B80000        mov ax,0x0          ; address | bytes | instruction
00000003  8ED8          mov ds,ax
00000005  BB1000        mov bx,0x10
```

- **Address**: Memory offset (hexadecimal)
- **Bytes**: Raw machine code
- **Instruction**: Human-readable assembly
- **Comment**: Explanations (if added by you)

### Key Instructions to Look For

#### Player Movement
```assembly
; Look for patterns like:
mov [player_x],ax        ; Store player X position
add ax,0x0200            ; Add velocity (0x0200 = 2.0 in fixed-point)
cmp ax,0x1400            ; Check bounds (screen width)
jl .ok                   ; Jump if less than
```

#### Damage Calculation
```assembly
; Look for patterns like:
mov ax,[base_damage]     ; Load base damage
mov bx,[player_level]    ; Load player level
shr bx,1                 ; Divide level by 2 (bit shift right)
add ax,bx                ; Add to damage
add ax,[weapon_bonus]    ; Add weapon bonus
```

#### Jump Physics
```assembly
; Look for patterns like:
mov ax,[player_vel_y]    ; Load Y velocity
add ax,0x0020            ; Add gravity (0x0020 per frame)
mov [player_vel_y],ax    ; Store new velocity
```

### Fixed-Point Math

DOS used integer math with implied decimal points:

```assembly
mov ax,0x0100      ; Represents 1.0 (256 in decimal, 8.8 fixed-point)
mov bx,0x0200      ; Represents 2.0
add ax,bx          ; Result: 0x0300 (3.0)
sar ax,8           ; Convert to integer: 0x03 (3)
```

**In MonoGame C#:**
```csharp
const float FIXED_SCALE = 256.0f;
float value = 0x0100 / FIXED_SCALE;  // 1.0
float value2 = 0x0200 / FIXED_SCALE; // 2.0
float result = value + value2;        // 3.0
```

## Workflow: Assembly → MonoGame

### Step 1: Find Mechanic in Assembly

**Example: Find player walk speed**

```bash
cd c:\Projects\Zeliard\assembly_output
grep -i "walk\|move\|velocity" game.asm | head -20
```

### Step 2: Identify Constants

Look for immediate values being loaded:

```assembly
mov ax,0x0200    ; ← This is likely a constant
```

### Step 3: Trace the Logic

Follow the code flow:
1. What loads the constant?
2. What operations use it?
3. What stores the result?
4. What are the conditions/limits?

### Step 4: Port to C#

Translate the assembly logic:

**Assembly:**
```assembly
mov ax,[player_x]        ; Load position
add ax,0x0200            ; Add walk speed
cmp ax,0x5000            ; Check right edge
jle .ok                  ; Jump if <=
mov ax,0x5000            ; Clamp to edge
.ok:
mov [player_x],ax        ; Store position
```

**MonoGame C#:**
```csharp
// Constants from assembly
const float WALK_SPEED = 0x0200 / 256.0f;  // 2.0
const float SCREEN_RIGHT = 0x5000 / 256.0f; // 80.0

// Port the logic
float playerX = player.Position.X;
playerX += WALK_SPEED;
if (playerX > SCREEN_RIGHT) {
    playerX = SCREEN_RIGHT;
}
player.Position.X = playerX;
```

### Step 5: Verify

Compare behavior:
1. Run DOS version in DOSBox (record values)
2. Run MonoGame version (log same values)
3. Compare frame-by-frame

## Common Patterns

### Memory Access

```assembly
mov ax,[0x1234]       ; Load from address 0x1234
mov [0x1234],ax       ; Store to address 0x1234
```

These are **global variables**. Find them in the C decompilation or map them yourself.

### Function Calls

```assembly
call 0x5678           ; Call function at offset 0x5678
```

Functions in DOS are just addresses. Ghidra likely labeled these as `FUN_0000_5678`.

### Loops

```assembly
.loop:
    ; loop body
    dec cx            ; Decrement counter
    jnz .loop         ; Jump if not zero
```

### Conditionals

```assembly
cmp ax,bx             ; Compare ax and bx
je .equal             ; Jump if equal
jg .greater           ; Jump if greater
jl .less              ; Jump if less
```

## Key Areas to Focus On

### Priority 1: Player Mechanics (game.asm)

Search for:
- `0x0200` - Common walk speed value
- `0x0400` - Common jump velocity
- `0x0020` - Common gravity value
- Sprite offsets and sizes
- Collision detection code

### Priority 2: Combat System (game.asm)

Search for:
- Damage calculation routines
- Hit detection
- Weapon bonuses
- Enemy health updates

### Priority 3: Enemy AI (game.asm)

Search for:
- Enemy movement patterns
- Chase/patrol logic
- Attack triggers
- State machines

### Priority 4: Physics (game.asm)

Search for:
- Velocity updates
- Collision responses
- Platform detection
- Slope handling

## Tips for Assembly Analysis

### 1. Start with Known Values

If you know player starts at X=160, search for:
```bash
grep "00A0\|0x00A0\|160" game.asm
```

### 2. Look for Patterns

Repeated code structures often indicate:
- Array access (sprite tables, enemy lists)
- Switch statements (game states)
- Function tables

### 3. Use Hex Calculator

Convert values as you go:
- 0x0100 = 256 decimal = 1.0 fixed-point
- 0x0140 = 320 decimal = screen width
- 0x00C8 = 200 decimal = screen height

### 4. Compare with C Decompilation

Cross-reference assembly with the C code:
- `zeliard2026/src/core/` - Core mechanics
- `zeliard2026/src/systems/` - Game systems

Verify the C matches the assembly, or use assembly as truth.

## Creating Reference Documents

### Document Format

For each mechanic ported, create an entry:

```markdown
## Player Walk Speed

### Assembly Source (game.asm:1234)
```assembly
00001234  B80002    mov ax,0x200     ; Walk speed constant
00001237  0106XXXX  add [player_x],ax
```

### Constants
- WALK_SPEED = 0x0200 = 2.0 pixels/frame

### MonoGame Implementation (PlayerSystem.cs)
```csharp
public const float WALK_SPEED = 2.0f;  // From 0x0200
player.Position.X += WALK_SPEED * (input.Right ? 1 : input.Left ? -1 : 0);
```

### Verification
- Tested: Player moves 120 pixels in 60 frames (2.0 * 60 = 120) ✓
- Matches DOS version output ✓
```

## Tools for Analysis

### Text Search
```bash
grep -i "keyword" game.asm | less
grep -A5 -B5 "0x0200" game.asm    # Show context
```

### Hex to Decimal
```bash
python -c "print(0x0200)"         # 512
python -c "print(0x0200 / 256.0)" # 2.0
```

### Assembly Viewer
- Use a text editor with syntax highlighting
- VS Code with x86/ASM extension
- Vim with asm syntax

## Next Steps

1. **Run disassemble_all.bat** - Generate all .asm files
2. **Read game.asm** - Start with player movement section
3. **Extract constants** - Find fixed-point values
4. **Port to C#** - Implement in MonoGame
5. **Verify behavior** - Compare with DOS version
6. **Document sources** - Track what came from where

## Example: Complete Workflow

### Goal: Port Player Jump Physics

**1. Find in Assembly (game.asm)**
```bash
grep -i "jump\|0x0400" game.asm > jump_references.txt
```

**2. Analyze Code**
```assembly
; Found at offset 0x1500
00001500  813E[Y_VEL]0000    cmp word [player_vel_y],0x0
00001506  7D0A               jge .falling
00001508  813E[Y_VEL]FC00    cmp word [player_vel_y],0xfc00
0000150E  7C02               jl .cap
; ... continue tracing ...
```

**3. Extract Constants**
- Jump initial velocity: 0xFC00 (-4.0 in signed fixed-point)
- Gravity: 0x0020 (0.125)
- Max fall speed: 0x0800 (8.0)

**4. Port to MonoGame**
```csharp
public class PlayerPhysics
{
    // Constants from assembly (game.asm:1500-1600)
    public const float JUMP_VELOCITY = -4.0f;  // 0xFC00 signed
    public const float GRAVITY = 0.125f;        // 0x0020
    public const float MAX_FALL_SPEED = 8.0f;   // 0x0800

    public void Update(float deltaTime)
    {
        // Apply gravity
        velocityY += GRAVITY;

        // Cap fall speed
        if (velocityY > MAX_FALL_SPEED) {
            velocityY = MAX_FALL_SPEED;
        }

        // Update position
        positionY += velocityY;
    }
}
```

**5. Verify**
- Record jump arc in DOS version (positions at frames 0, 10, 20, 30, 40, 50, 60)
- Record jump arc in MonoGame version
- Compare - should match within rounding error

**6. Document**
- Add to `AUTHENTIC_SOURCES.md`
- Note assembly offsets
- Mark as verified ✓

---

## Summary

With the authentic assembly as your reference:

- **Extract** exact constants and formulas
- **Port** logic faithfully to C#
- **Verify** against DOS version
- **Document** sources for future reference

This ensures your MonoGame port is **arcade-perfect** - not a recreation, but a true translation of the original 1990 game logic!

---

**Ready to disassemble?** Run `disassemble_all.bat` after VS Code restart to begin!
