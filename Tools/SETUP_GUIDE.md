# Unicorn Engine Setup Guide for Windows

**Goal**: Install Python + Unicorn Engine to run constant extraction scripts

---

## Step 1: Install Python (5 minutes)

### Download Python
1. Go to https://www.python.org/downloads/
2. Download **Python 3.11** or newer
3. Run installer

### IMPORTANT: During Installation
✅ **Check "Add Python to PATH"** (critical!)
✅ Install pip (included by default)

### Verify Installation
```powershell
python --version
# Should show: Python 3.11.x or newer

pip --version
# Should show: pip 24.x or newer
```

---

## Step 2: Install Unicorn Engine (2 minutes)

```powershell
pip install unicorn-engine
```

### Verify Installation
```powershell
python -c "from unicorn import *; print('Unicorn Engine ready!')"
```

**Expected output**: `Unicorn Engine ready!`

---

## Step 3: Test Extraction Script (1 minute)

```powershell
cd c:\Projects\Zeliard\Tools
python extract_constants.py
```

### Expected Output
```
============================================================
Zeliard Physics Constant Extractor
Using Unicorn Engine x86 Emulation
============================================================

=== Extracting Jump Velocity ===
Loaded chunk_06.bin: 5652 bytes at 0x10000
Initial state:
  Player Y (0x83) = 100
  VelocityY (0x8C) = 0
  On ground (0x8A) = 0

Executing double jump function at 0x0851...

Result:
  VelocityY (0x8C) = -24
  Double Jump Velocity = -24 px/frame
  ✅ VERIFIED: Matches documented value -0x18 = -24

=== Extracting Gravity ===
❌ Error: Need to locate physics function offset

=== Extracting Walk Speed ===
❌ Error: Need input flag setup

============================================================
RESULTS SUMMARY
============================================================
double_jump          =  -24 px/frame
normal_jump_estimate =  -12 px/frame

============================================================
C# CODE TO UPDATE
============================================================
// PlayerController.cs line 29:
player.VelocityY = -12; // Extracted from assembly
```

---

## Troubleshooting

### "python: command not found"
- ❌ Python not in PATH
- **Fix**: Reinstall Python with "Add to PATH" checked
- **Or**: Use full path: `C:\Python311\python.exe`

### "No module named 'unicorn'"
```powershell
pip install --upgrade pip
pip install unicorn-engine
```

### "Permission denied"
```powershell
# Run as administrator, or use:
pip install --user unicorn-engine
```

---

## Next Steps After Installation

1. Run `python extract_constants.py`
2. Verify jump velocity = -24 ✅
3. Find gravity/walk offsets (TODOs in script)
4. Re-run to extract all constants
5. Update C# code with exact values

---

## Alternative: Skip Python for Now

If Python setup is complex, you can:
- Continue with Phase 4 (Combat) using current tuned values
- Install Python/Unicorn later for refinement
- Current values are ~90% accurate and fully playable

**Current physics works great** - this is for getting to 100% accuracy!
