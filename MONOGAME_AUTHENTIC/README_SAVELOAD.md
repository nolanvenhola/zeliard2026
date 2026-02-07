# Save/Load System Implementation

## Overview

Authentic DOS-compatible save/load system for Zeliard, based on reverse-engineered assembly code from `zelres2/chunk_17.asm`.

## Files

- **SaveFile.cs** - Data structure (256 bytes, matches DOS format exactly)
- **SaveManager.cs** - Load/save operations (mimics DOS INT 21h file I/O)
- **Tests/SaveLoadTest.cs** - Test program to verify against DOS saves

## Save File Format (.USR)

### Structure (256 bytes fixed)

| Offset | Size | Section | Description |
|--------|------|---------|-------------|
| 0x00-0x7F | 128 | Progression Flags | Bitflags for unlocks, defeated bosses, etc. |
| 0x80-0x9F | 32 | Player State | Position, stats, gold, level, etc. |
| 0xA0-0xBF | 32 | Inventory | Items, weapons, armor, equipment |
| 0xC0-0xCF | 16 | Magic Marker | File format validation (constant pattern) |
| 0xD0-0xFF | 48 | Extended Data | Additional state, cached data |

### Magic Marker (File Validation)

Bytes 0xC9-0xCF contain a constant pattern in all valid save files:
```
8A A6 6B 75 42 4C 4B
```

This is used to validate save file integrity.

## Usage

### Load a Save File

```csharp
SaveManager manager = new SaveManager("path/to/saves");

SaveFile? save = manager.LoadGame("PLAYER1");
if (save != null)
{
    SaveFile s = save.Value;

    // Check validity
    if (s.IsValid())
    {
        float progress = s.GetProgressionPercentage();
        Console.WriteLine($"Game progress: {progress:F1}%");
    }
}
```

### Save a Game

```csharp
SaveManager manager = new SaveManager();

SaveFile save = SaveFile.CreateNew();

// Set up save data
save.ProgressionFlags[0] = 0x00;
save.ProgressionFlags[1] = 0x00;
// ... populate other fields

// Set magic marker (required for validation)
save.MagicMarker[9] = 0x8A;
save.MagicMarker[10] = 0xA6;
save.MagicMarker[11] = 0x6B;
save.MagicMarker[12] = 0x75;
save.MagicMarker[13] = 0x42;
save.MagicMarker[14] = 0x4C;
save.MagicMarker[15] = 0x4B;

bool success = manager.SaveGame("PLAYER1", save);
```

### List All Saves

```csharp
SaveManager manager = new SaveManager();
string[] saves = manager.GetAllSaves();

foreach (string playerName in saves)
{
    Console.WriteLine($"Found save: {playerName}.usr");
}
```

### Check if Save Exists

```csharp
if (manager.SaveExists("PLAYER1"))
{
    Console.WriteLine("Save file exists!");
}
```

## DOS Assembly Reference

Based on `zelres2/chunk_17.asm` (lines 799-832):

### Save Operation

```assembly
; 1. Construct filename (lines 799-813)
mov si,0xff6c      ; Player name at 0xFF6C
mov di,0xbb27      ; Filename buffer at 0xBB27
mov cx,0x8         ; Max 8 characters
; Copy name...
; Append ".usr" (0x2E, 0x75, 0x73, 0x72)

; 2. Create file (lines 814-817)
mov dx,0xbb27      ; DX = filename pointer
mov cx,0x0         ; CX = attributes
mov ah,0x3c        ; AH = 3Ch (Create file)
int 0x21           ; DOS interrupt

; 3. Write 256 bytes (lines 819-824)
mov dx,0x0         ; DX = buffer offset
mov cx,0x100       ; CX = 256 bytes
mov bx,ax          ; BX = file handle
mov ah,0x40        ; AH = 40h (Write file)
int 0x21           ; DOS interrupt

; 4. Close file (lines 827-832)
mov bx,ax          ; BX = file handle
mov ah,0x3e        ; AH = 3Eh (Close file)
int 0x21           ; DOS interrupt
```

## Testing

Run the test program to verify against authentic DOS save files:

```bash
cd MONOGAME_AUTHENTIC/Tests
dotnet run
```

This will:
1. Load all example saves from `Resources/Saved Games/`
2. Verify file structure and magic markers
3. Display hex dumps and progression info
4. Test creating new saves
5. Test modifying and re-saving

## Comparison: DOS vs MonoGame

| Operation | DOS Assembly | MonoGame |
|-----------|--------------|----------|
| Open file | INT 21h, AH=3Dh | `File.ReadAllBytes()` |
| Create file | INT 21h, AH=3Ch | `File.WriteAllBytes()` |
| Read bytes | INT 21h, AH=3Fh | Array operations |
| Write bytes | INT 21h, AH=40h, CX=0x100 | Array operations |
| Close file | INT 21h, AH=3Eh | Automatic (managed) |
| Max filename | 8 characters | Enforced in `SanitizePlayerName()` |

## Example Save Files

From `Resources/Saved Games/`:

### Muralla.usr (New Game)
```
0x00-0x03: 00 00 F0 00  (minimal progression)
Progress: ~2%
```

### Gold.usr (Late Game)
```
0x00-0x03: FF FF F8 E0  (high progression)
Progress: ~95%
```

## Future Enhancements

- [ ] Decode exact meaning of PlayerState bytes (0x80-0x9F)
- [ ] Decode inventory structure (0xA0-0xBF)
- [ ] Add checksum validation
- [ ] Add backup/restore functionality
- [ ] Add save file conversion tools
- [ ] Document exact bit meanings in progression flags

## References

- [SAVE_FILE_FORMAT.md](../../6_DOCUMENTATION/SAVE_FILE_FORMAT.md) - Complete technical specification
- Assembly source: `4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres2_chunks/chunk_17.asm`
- Example saves: `Resources/Saved Games/*.usr` (17 files)
