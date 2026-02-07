# Assembly Disassembly Plan - Final Summary

## Decision: Working from Assembly Instead of C Decompilation

**Reason:** Maximum authenticity - eliminate any potential decompilation interpretation errors.

## What We Have

### 1. Decompilation Analysis (Already Complete)
**Source:** `DECOMPILATION_REPORT.md`

Identified which chunks contain executable code:
- **ZELRES1:** 5 code chunks (240KB total), 35 data chunks
- **ZELRES2:** 9 code chunks (13KB total), 31 data chunks
- **ZELRES3:** 2 code chunks (440B total), 38 data chunks

**Key finding:** Only 29 of 120 chunks contain executable code.

### 2. C Decompilation (Reference/Comparison)
**Location:** `zeliard2026/src/`

- Core: `core/zelres1_chunk_*_decompiled.c`
- Systems: `systems/zelres2_chunk_*_decompiled.c`
- Levels: `levels/zelres3_chunk_*_decompiled.c`

**Status:** ✅ Compiles successfully (0 errors)
**Use:** Cross-reference and comparison with assembly

### 3. Assembly Disassembly (Ground Truth - NEW)
**Location:** `assembly_output/` (created after running scripts)

Generated from original DOS binaries using ndisasm:
- Main game code
- Graphics drivers
- All executable chunks (29 files)

**Status:** ⏳ Waiting for VS Code restart + script execution
**Use:** Primary source for porting to MonoGame

### 4. MonoGame Implementation (75% Complete)
**Location:** `ZeliardModern/`

Modern C# game engine with:
- ✅ Complete architecture
- ✅ Graphics and rendering
- ✅ Physics and collision
- ⚠️ Guessed mechanics (needs replacement with authentic logic)

**Status:** Ready for authentic logic integration
**Use:** Target for porting authentic assembly mechanics

## Three-Way Cross-Reference Strategy

For each mechanic, you'll have **three sources** to ensure accuracy:

```
┌─────────────────────┐
│ Original Assembly   │ ← GROUND TRUTH (highest priority)
│ (game.asm, chunks)  │
└──────────┬──────────┘
           │
           ├→ Extract constants and formulas
           │
           ↓
    ┌─────────────┐
    │  C Source   │ ← REFERENCE (cross-check)
    │ (decompiled)│
    └──────┬──────┘
           │
           ├→ Understand high-level logic
           │
           ↓
    ┌─────────────┐
    │  MonoGame   │ ← TARGET (port authentic logic here)
    │   (C#)      │
    └─────────────┘
```

## Updated Workflow

### Step 1: Find Mechanic

**Priority 1 - Check Assembly:**
```bash
grep -i "walk\|0x0200" assembly_output/zelres1_chunks/chunk_00.asm
```

**Priority 2 - Cross-reference C:**
```bash
grep -i "walk\|0x0200" zeliard2026/src/core/zelres1_chunk_00_decompiled.c
```

**Compare:** Does C decompilation match assembly?

### Step 2: Extract Constants

From assembly:
```assembly
mov ax,0x0200    ; Walk speed constant
```

Fixed-point conversion:
```
0x0200 = 512 decimal = 2.0 pixels/frame (8.8 fixed-point)
```

### Step 3: Port to MonoGame

```csharp
// AUTHENTIC from assembly (zelres1/chunk_00.asm:0x1234)
// Cross-verified with C (zelres1_chunk_00_decompiled.c:456)
public const float WALK_SPEED = 2.0f;  // 0x0200
```

### Step 4: Verify

Compare:
1. Assembly (ground truth)
2. C decompilation (should match)
3. MonoGame implementation (verify behavior)
4. DOS version (ultimate test)

## Executable Code Inventory

Based on DECOMPILATION_REPORT.md analysis:

### ZELRES1 - Core Engine (6 executable chunks)

| Chunk | Size | Lines | Priority | Content |
|-------|------|-------|----------|---------|
| **00** | 240KB | 5,913 | ⭐⭐⭐ | **Main game engine** - Core loop, rendering, input |
| **06** | 66KB | 2,927 | ⭐⭐⭐ | **Extended systems** - Advanced player mechanics |
| 04 | 3.3KB | 122 | ⭐ | Game logic |
| 02 | 3KB | 106 | ⭐ | Player/enemy code |
| 24 | 3.8KB | 104 | ⭐ | Additional logic |
| 30 | 413B | -- | ⭐ | Small utility |

**Disassemble:** ✅ All 6 (included in `disassemble_code_only.bat`)

### ZELRES2 - Extended Systems (19 executable chunks)

| Chunk | Size | Lines | Priority | Content |
|-------|------|-------|----------|---------|
| **00** | 135KB | 6,072 | ⭐⭐⭐ | **Advanced systems** - UI, menus, inventory |
| **02** | 24KB | 1,116 | ⭐⭐⭐ | **Damage/combat** mechanics |
| **04** | 20KB | 976 | ⭐⭐⭐ | **Physics engine** |
| **05** | 25KB | 1,165 | ⭐⭐⭐ | **Enemy AI** framework |
| **06** | 21KB | 1,054 | ⭐⭐⭐ | **Enemy AI** behaviors |
| 03 | 23KB | 1,090 | ⭐⭐ | Additional systems |
| 01 | 11KB | 504 | ⭐⭐ | Support code |
| 07-17 | 1-3KB | 100-300 | ⭐ | Individual enemy types |
| 38-39 | 440B | -- | ⭐ | Utilities |

**Disassemble:** ✅ All 19 (included in `disassemble_code_only.bat`)

### ZELRES3 - Level Data (4 executable chunks)

| Chunk | Size | Lines | Priority | Content |
|-------|------|-------|----------|---------|
| 00 | 3KB | 139 | ⭐ | Level loader |
| 14 | 7.3KB | 301 | ⭐ | Level renderer |
| 16 | 352B | -- | ⭐ | Level utility |
| 31 | 375B | -- | ⭐ | Level utility |

**Disassemble:** ✅ All 4 (included in `disassemble_code_only.bat`)

**Remaining 36 chunks:** Pure data (maps, graphics, spawn tables)

## Disassembly Scripts Created

### 1. `disassemble_code_only.bat` ⭐ RECOMMENDED
- Disassembles **29 executable code chunks only**
- Skips 91 data/resource chunks
- Fast, focused output
- Creates 36 .asm files (7 main + 29 chunks)

### 2. `disassemble_all_complete.bat`
- Disassembles **all 120 chunks**
- Includes data/resources (will look like gibberish)
- Slower, verbose output
- Creates 127 .asm files

### 3. `disassemble_all.bat`
- Original simple version
- Disassembles main files + graphics modes
- Use if you only need game.bin and drivers

## Documentation Created

| File | Purpose |
|------|---------|
| `README_ASSEMBLY_WORKFLOW.md` | **START HERE** - Complete workflow guide |
| `ASSEMBLY_REFERENCE_GUIDE.md` | How to read x86 assembly |
| `EXECUTABLE_VS_DATA_CHUNKS.md` | Code vs data explanation |
| `CHUNK_REFERENCE_MAP.md` | What each chunk contains |
| `DECOMPILATION_REPORT.md` | Original C decompilation analysis |
| `ASSEMBLY_DISASSEMBLY_PLAN.md` | This file - brings it all together |

## Quick Start (After VS Code Restart)

### 1. Run Disassembly
```bash
cd c:\Projects\Zeliard
disassemble_code_only.bat
```

### 2. Verify Output
```bash
ls assembly_output/*.asm
ls assembly_output/zelres1_chunks/*.asm
ls assembly_output/zelres2_chunks/*.asm
ls assembly_output/zelres3_chunks/*.asm
```

Should see 36 .asm files total.

### 3. Start with Priority 1
```bash
# Open the three critical files
code assembly_output/game.asm
code assembly_output/zelres1_chunks/chunk_00.asm
code assembly_output/zelres2_chunks/chunk_00.asm
```

### 4. Follow Workflow
See `README_ASSEMBLY_WORKFLOW.md` for detailed porting steps.

## Success Metrics

### You'll know you're on track when:

✅ **Assembly extracted** - 36 .asm files created
✅ **Constants found** - Identified walk speed, jump velocity, gravity
✅ **First port complete** - Player movement ported to MonoGame
✅ **Verification passed** - MonoGame matches DOS behavior
✅ **Documentation updated** - AUTHENTIC_SOURCES.md populated

## Why This Approach Works

### Traditional Reverse Engineering
```
DOS Binary → Guess mechanics → Implement → Hope it's right
```
❌ No way to verify accuracy
❌ Bugs from wrong assumptions
❌ Can't prove authenticity

### Your Approach
```
DOS Binary → Disassemble → Assembly (ground truth)
                              ↓
                         C Decompilation (reference)
                              ↓
                         MonoGame (port authentic logic)
                              ↓
                         Verify (compare all sources)
```
✅ Verifiable at every step
✅ Assembly is ground truth
✅ C provides high-level understanding
✅ Three-way cross-reference catches errors
✅ Can prove 100% authenticity

## The Complete Picture

```
Original Game (1990)
      ↓
┌─────────────────────────────┐
│  DOS Binaries (Original)    │
│  - game.bin                 │
│  - zeliad.exe               │
│  - zelres1.sar (40 chunks)  │
│  - zelres2.sar (40 chunks)  │
│  - zelres3.sar (40 chunks)  │
└─────────────┬───────────────┘
              │
              ├→ [Ghidra Analysis]
              │
    ┌─────────┴─────────┐
    ↓                   ↓
[C Decompilation]   [Assembly Disassembly]
    │                   │
    │ (Reference)       │ (Ground Truth)
    │                   │
    └─────────┬─────────┘
              ↓
      [Three-Way Verification]
              ↓
       ┌─────────────┐
       │  MonoGame   │ ← Port authentic mechanics here
       │    (C#)     │
       └─────────────┘
              ↓
    [Modern Zeliard 2026]
    ✅ Authentic behavior
    ✅ Verifiable accuracy
    ✅ Cross-platform
    ✅ Maintainable
```

## Files & Status Summary

| Component | Status | Location | Purpose |
|-----------|--------|----------|---------|
| Original DOS binaries | ✅ Have | `c:\Projects\Zeliard\` | Ground truth |
| Extracted chunks | ✅ Have | `zelres*_extracted\` | Raw binary data |
| C decompilation | ✅ Complete | `zeliard2026\src\` | Reference/comparison |
| C compilation | ✅ Builds | `cmake-build-debug-fullgame\` | Verification |
| Assembly scripts | ✅ Ready | `disassemble_*.bat` | Run after restart |
| Assembly output | ⏳ Pending | `assembly_output\` | After script run |
| MonoGame | ✅ 75% done | `ZeliardModern\` | Integration target |
| Documentation | ✅ Complete | `*.md files` | Guides & references |

## Next Actions

**YOU ARE HERE:** ⏳ Restart VS Code to pick up ndisasm in PATH

**Then:**
1. ✅ Run `disassemble_code_only.bat`
2. ✅ Read `README_ASSEMBLY_WORKFLOW.md`
3. ✅ Port first mechanic (player movement)
4. ✅ Verify against DOS
5. ✅ Continue with remaining mechanics

## Final Notes

This is a **preservation AND modernization** project:

- **Preservation:** Assembly ensures 100% authentic behavior
- **Modernization:** MonoGame enables cross-platform, maintainable code

You now have:
- ✅ Original DOS binaries (ground truth)
- ✅ C decompilation (reference)
- ✅ Assembly disassembly (ready to create)
- ✅ MonoGame framework (ready for integration)
- ✅ Complete documentation
- ✅ Verification workflow

**Everything is ready. Time to create the definitive version of Zeliard (1990)!** 🎮

---

*Summary created: 2026-02-04*
*Target: Zeliard authentic modernization*
*Status: Ready for assembly disassembly and integration*
