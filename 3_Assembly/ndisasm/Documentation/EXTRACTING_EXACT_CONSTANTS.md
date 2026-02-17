# Extracting Exact Physics Constants from DOS Assembly

**Goal**: Get exact jump, gravity, and walk speed values by running the actual DOS code

---

## Method 1: DOSBox-X Debugger (FASTEST) ⚡

### Setup
1. Launch DOSBox-X with debugger enabled
2. Run `ZELIARD.EXE`
3. Load a game level

### Extract Jump Velocity
```
1. Set write breakpoint on velocity Y:
   BPINT [DS:008C] W

2. Press Space to jump

3. Debugger breaks, check register:
   R AL

4. Note the value (e.g., AL = F4 = -12 signed)
```

### Extract Gravity
```
1. Set breakpoint on velocity increment:
   BP zelres2:XXXX   (find gravity apply function)

2. Jump and let player fall

3. Step through code frame-by-frame:
   - Count frames between velocity increments
   - Check increment amount (inc byte = +1, add byte,2 = +2)

4. Note: gravity value and frequency
```

### Extract Walk Speed
```
1. Set write breakpoint on velocity X:
   BPINT [DS:0080] W

2. Press arrow key

3. Check velocity value in memory or AL register
```

**Advantages**:
- ✅ Uses actual game code
- ✅ Runtime values (accurate)
- ✅ Can test all scenarios

---

## Method 2: Memory Dump Analysis (EASIEST) 🔍

We already have DOSBox dumps! Check: `c:\Projects\Zeliard\DOSBOX DUMPS\`

### Process
```bash
# Dump memory during gameplay
MEMDUMPBIN DS:0080 10    # Dump player X, Y, velocities

# Analyze dump
hexdump -C MEMDUMP.BIN

# Bytes at offsets:
# 0x00-0x01: Player X (word)
# 0x03: Player Y (byte)
# 0x0C: Velocity Y (byte, signed)
```

### Compare States
1. Dump when standing still
2. Dump when walking right
3. Dump when jumping
4. Dump when falling

Compare bytes to see:
- Walk: Velocity X difference
- Jump: Velocity Y at jump start
- Gravity: Velocity Y increment per frame

**Advantages**:
- ✅ Quick (dumps already exist)
- ✅ No debugger needed
- ✅ Can script analysis

---

## Method 3: Reassemble & Test (MOST ACCURATE) 🔧

### Extract Physics Function
```assembly
; Create standalone test program:
.org 0x6000

player_x: dw 160
player_y: db 100
velocity_y: db 0

test_jump:
    mov byte [velocity_y], -12  ; Or whatever the code says
    ret

test_gravity:
    inc byte [velocity_y]       ; Or actual gravity code
    ret

; Add test harness that calls these and prints values
```

### Assemble with NASM/TASM
```bash
nasm -f bin physics_test.asm -o physics_test.com
dosbox physics_test.com
# Observe output
```

**Advantages**:
- ✅ Isolated testing
- ✅ Can modify and experiment
- ✅ Verifies understanding

---

## Method 4: Trace Actual Binary (COMPREHENSIVE) 📊

### Use Binary Analysis
```bash
# Search for velocity write patterns in binary
hexdump -C zelres1_chunk_00.bin | grep "c6 06 8c 00"  # mov byte [0x8c],...

# Find the byte after the pattern (the constant)
# Example: C6 06 8C 00 F4 = mov byte [0x8c], 0xF4 (-12 signed)
```

### Pattern Recognition
Common patterns to search:
- `C6 06 8C 00 XX` - mov byte [0x8c], XX (jump velocity)
- `FE 06 8C 00` - inc byte [0x8c] (gravity +1)
- `80 06 8C 00 XX` - add byte [0x8c], XX (gravity +XX)

**Advantages**:
- ✅ Exact values from binary
- ✅ No runtime needed
- ✅ Scriptable

---

## Method 5: Reverse Calculate from Video (EMPIRICAL) 📹

### Record DOS Game
1. Record DOSBox gameplay at 60fps
2. Slow down to count pixels per frame
3. Measure:
   - Jump height (pixels)
   - Frames to peak
   - Walk speed (pixels per frame)

### Calculate
```
Jump velocity = -height / frames_to_peak
Gravity = jump_velocity / frames_to_peak
Walk speed = pixels_moved / frame
```

**Advantages**:
- ✅ No technical knowledge needed
- ✅ Matches visual feel
- ✅ Player-accurate

---

## Recommended Approach

### QUICKEST: Method 2 (Memory Dumps)
Check existing dumps in `DOSBOX DUMPS/` folder:
```bash
ls -la "c:/Projects/Zeliard/DOSBOX DUMPS/"
```

If they contain player data, we can extract velocities directly!

### MOST ACCURATE: Method 1 (DOSBox-X Debugger)
15 minutes to set up and extract all values:
1. Set breakpoints on 0x008C writes
2. Play for 30 seconds
3. Note all values seen
4. Done!

### EASIEST: Method 4 (Binary Hex Search)
```bash
# Search chunk_00.bin for mov byte [0x8c], XX
hexdump -C chunk_00.bin | grep -A1 "c6 06 8c 00"
```

---

## Next Steps

Want me to:
1. ✅ Analyze existing DOSBox dumps (if they have player data)?
2. ✅ Create binary hex search script?
3. ✅ Write DOSBox-X debugger procedure?

We could get **exact values in 15-30 minutes** using these methods!
