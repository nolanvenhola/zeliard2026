# Assembly-Only Porting Guide

## Why Skip the C Decompilation?

The C decompilation is too obfuscated with generic variable names (var1, var2, etc.). Working **directly from assembly** gives us:
- ✅ Clear instructions and constants
- ✅ Exact behavior
- ✅ No interpretation errors
- ✅ Ground truth

## How to Read DOS Assembly Without Variables

### Pattern Recognition Strategy

Since assembly uses memory addresses instead of names, we identify code by **patterns** and **context**.

---

## Common Patterns to Look For

### Pattern 1: Position Update (Movement)

```assembly
; Load current position
mov ax,[memory_addr]      ; Load from RAM

; Add velocity/speed
add ax,0x0200             ; ← CONSTANT! (2.0 in fixed-point)

; Store new position
mov [memory_addr],ax      ; Store back to RAM
```

**What we extract:** `0x0200` = Walk speed

### Pattern 2: Boundary Check

```assembly
; Check left boundary
cmp ax,0x0000             ; Compare with 0
jge .ok                   ; Jump if >= 0
mov ax,0x0000             ; Clamp to 0
.ok:

; Check right boundary
cmp ax,0x1400             ; Compare with limit
jle .ok2                  ; Jump if <= limit
mov ax,0x1400             ; Clamp to limit
.ok2:
```

**What we extract:** `0x1400` = Screen width (320 decimal)

### Pattern 3: Apply Gravity

```assembly
; Load vertical velocity
mov ax,[y_velocity_addr]

; Add gravity
add ax,0x0020             ; ← CONSTANT! (0.125 in fixed-point)

; Store new velocity
mov [y_velocity_addr],ax

; Apply to position
mov bx,[y_position_addr]
add bx,ax
mov [y_position_addr],bx
```

**What we extract:** `0x0020` = Gravity (0.125)

### Pattern 4: Jump Detection

```assembly
; Check if jump button pressed
test byte [input_flags],0x01
jz .no_jump

; Check if on ground
cmp byte [on_ground],0x01
jnz .no_jump

; Apply jump velocity (negative = up)
mov ax,0xFC00             ; ← CONSTANT! (-4.0 in signed fixed-point)
mov [y_velocity],ax

.no_jump:
```

**What we extract:** `0xFC00` = Jump velocity (-4.0)

### Pattern 5: Damage Calculation

```assembly
; Load base damage
mov ax,[base_damage]

; Load player level
mov bx,[player_level]

; Divide level by 2 (bit shift)
shr bx,1

; Add to damage
add ax,bx

; Load weapon bonus
mov cx,[weapon_bonus]

; Add to total
add ax,cx

; Result in ax
```

**What we extract:** Formula: damage = base + (level/2) + weapon

---

## Fixed-Point Math Reference

DOS uses **8.8 fixed-point**: 8 bits integer, 8 bits fractional

| Hex | Decimal | Float | Usage |
|-----|---------|-------|-------|
| `0x0100` | 256 | 1.0 | Unit speed |
| `0x0200` | 512 | 2.0 | Walk speed |
| `0x0300` | 768 | 3.0 | Run speed |
| `0x0400` | 1024 | 4.0 | Fast/Jump |
| `0x0020` | 32 | 0.125 | Gravity |
| `0x0010` | 16 | 0.0625 | Friction |
| `0xFC00` | -1024 | -4.0 | Jump (signed) |

**Conversion:** `hex_value / 256.0f = float_value`

---

## Practical Workflow

### Step 1: Find Code Section by Context

Since we can't search by variable names, we find code by **what it does**:

**For player movement:**
1. Look near the beginning of `chunk_00.asm` (initialization)
2. Look for patterns with small constants (0x0100-0x0400)
3. Look for repeated `add`/`sub` operations
4. Look for `cmp` with screen bounds (0x0140, 0x00C8)

**For combat:**
1. Look in `zelres2/chunk_02.asm` (identified as damage calc)
2. Look for `mul`, `shr` (multiply, bit shift)
3. Look for sequences: load → calculate → store

**For physics:**
1. Look in `zelres2/chunk_04.asm` (identified as physics)
2. Look for small adds with 0x0020 (gravity)
3. Look for collision checks (`cmp`, `jl`, `jg`)

### Step 2: Identify Constants by Value Range

**Position coordinates:**
- X: 0x0000 to 0x0140 (0-320)
- Y: 0x0000 to 0x00C8 (0-200)

**Velocities:**
- Typical: 0x0100 to 0x0400 (1-4 pixels/frame)
- Gravity: 0x0020 (0.125)

**Large values:**
- Memory addresses: 0x6000+, 0xFF00+
- Pointers/offsets: 0x1000+

**Small values:**
- Counts/indices: 0x01-0x10
- Flags: 0x00, 0x01, 0xFF

### Step 3: Verify by Context

```assembly
; This looks like movement:
mov ax,[0x1234]      ; Load position
add ax,0x0200        ; Add velocity (2.0)
mov [0x1234],ax      ; Store position
cmp ax,0x0140        ; Check boundary (320)
jl .ok               ; Jump if less
mov ax,0x0140        ; Clamp to boundary
.ok:
```

**Confidence: HIGH**
- Small constant (0x0200)
- Boundary check (0x0140 = 320)
- Simple add operation
- **This is walk speed!**

### Step 4: Extract and Document

```csharp
// AUTHENTIC from assembly
// Source: zelres1_chunks/chunk_00.asm:line XXXX
// Pattern: mov ax,[addr]; add ax,0x0200; mov [addr],ax
public const float WALK_SPEED = 2.0f;  // 0x0200 / 256 = 2.0
```

---

## Working Example: Find Walk Speed

Let me walk through finding walk speed in `chunk_00.asm`:

### Step 1: Scan for Small Constants

```bash
cd 4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres1_chunks
grep -n "add.*,0x0[1-4]" chunk_00.asm | head -20
```

Look for constants in movement range (0x0100-0x0400).

### Step 2: Examine Context

When you find a match, read the surrounding lines:

```assembly
; Line 1234
mov ax,[0xFF40]          ; Load something from RAM
add ax,0x0200            ; ← Found our constant!
mov [0xFF40],ax          ; Store back
```

### Step 3: Confirm It's Position

Look for boundary checks nearby:

```assembly
; A few lines later...
cmp ax,0x0140            ; Compare with 320
jle .within_bounds       ; Jump if <=
mov ax,0x0140            ; Clamp to 320
.within_bounds:
```

**Confirmed!** This is horizontal position update.

### Step 4: Port to MonoGame

```csharp
public const float WALK_SPEED = 2.0f;  // From 0x0200

player.Position.X += velocityX * WALK_SPEED;

// Boundary check (from assembly)
if (player.Position.X > 320)
    player.Position.X = 320;
```

---

## Common Assembly Idioms

### Load-Modify-Store Pattern

```assembly
mov ax,[addr]    ; Load
add ax,value     ; Modify
mov [addr],ax    ; Store
```

**Means:** `variable += value;`

### Compare-Jump-Clamp Pattern

```assembly
cmp ax,limit     ; Compare
jle .ok          ; Jump if <=
mov ax,limit     ; Clamp
.ok:
```

**Means:** `if (value > limit) value = limit;`

### Bit Shift for Division

```assembly
mov ax,[value]   ; Load
shr ax,1         ; Shift right = divide by 2
```

**Means:** `result = value / 2;`

### Test for Flag

```assembly
test byte [flags],0x01    ; Test bit 0
jz .flag_not_set          ; Jump if zero
```

**Means:** `if (flags & 0x01) { ... }`

---

## Constants Cheat Sheet

Based on typical DOS game values:

| Constant | Likely Usage |
|----------|-------------|
| `0x0140` | Screen width (320) |
| `0x00C8` | Screen height (200) |
| `0x0200` | Walk speed (2.0) |
| `0x0400` | Run/jump speed (4.0) |
| `0x0020` | Gravity (0.125) |
| `0x0010` | Friction (0.0625) |
| `0xFC00` | Jump velocity (-4.0 signed) |
| `0x0001` | Boolean true/flag |
| `0x0000` | Boolean false/zero |
| `0xFF00+` | Global variables area |

---

## Next Steps

1. Open `4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres1_chunks/chunk_00.asm`
2. Scan for patterns matching the examples above
3. Extract constants you find
4. Port to MonoGame
5. Test and verify

**You don't need variable names - patterns tell you everything!** 🎯

---

*Working purely from assembly - the ground truth approach*
