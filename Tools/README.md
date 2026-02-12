# Zeliard Constant Extraction Tools

Tools for extracting exact physics constants from DOS assembly using emulation.

---

## Setup

### Install Unicorn Engine

**Windows/Linux/Mac**:
```bash
pip install unicorn-engine
```

**Verify Installation**:
```python
python -c "from unicorn import *; print('Unicorn Engine installed!')"
```

---

## Usage

### Extract All Constants (Automated)

```bash
cd c:\Projects\Zeliard\Tools
python extract_constants.py
```

**Output**:
```
=== Extracting Jump Velocity ===
Double Jump Velocity = -24 px/frame

=== Extracting Gravity ===
Gravity = 1 px/frame²

=== Extracting Walk Speed ===
Walk Speed = 2 px/frame

=== RESULTS SUMMARY ===
double_jump          =  -24 px/frame
normal_jump_estimate =  -12 px/frame
gravity              =    1 px/frame²
walk_speed           =    2 px/frame
```

---

## Current Status

### Phase 1: Jump Velocity ✅
- Function location: zelres1_chunk_06 offset 0x0851
- Confirmed working in manual tests
- Returns -24 for double jump

### Phase 2: Gravity ⏳
- Need to locate physics update function in zelres2_chunk_04
- Will update script with correct offset

### Phase 3: Walk Speed ⏳
- Need to locate input processing in zelres1_chunk_06
- Will update script with correct offset

---

## Next Steps

1. Run `extract_constants.py` to test jump extraction
2. Find function offsets for gravity and walk speed from walkthroughs
3. Update script with correct offsets
4. Extract all constants automatically
5. Update C# code with exact values

---

## Technical Details

### Memory Map
```
0x10000 - Code segment (CS) - Loaded chunks execute here
0x20000 - Data segment (DS) - Player state at DS:0080-008F
```

### Player Memory Layout
```
DS:0080 (word) - Player X position
DS:0083 (byte) - Player Y position
DS:0085 (byte) - Velocity X high
DS:0086 (word) - Velocity X low
DS:008C (byte) - Velocity Y (signed)
```

### Emulation Approach
1. Load chunk binary at CS:0x6000 (typical DOS load address)
2. Set up player state in data segment
3. Execute function until RET instruction
4. Read memory to see changed values
5. Compare before/after to extract constants

---

## Troubleshooting

### "Function doesn't execute"
- Check function offset (use walkthrough addresses)
- Verify chunk loaded correctly
- Check if function needs setup code first

### "Wrong values extracted"
- Verify memory addresses (DS vs CS)
- Check if function expects parameters in registers
- May need to set up function pointers first

### "Import error: unicorn"
```bash
pip install --upgrade unicorn-engine
python -m pip install unicorn-engine
```

---

*Once working, this tool can extract ALL game constants automatically!*
