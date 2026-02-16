# Save Folder Update - "Saved" Directory

## Changes Made

Updated the save file location from `Saves/` to `Saved/` to match DOS convention.

### Files Modified

1. **Game1.cs**
   ```csharp
   // OLD: _saveManager = new SaveManager("Saves");
   // NEW: _saveManager = new SaveManager("Saved");
   ```

2. **ZeliardAuthentic.csproj**
   ```xml
   <!-- OLD: <Link>Saves\%(Filename)%(Extension)</Link> -->
   <!-- NEW: <Link>Saved\%(Filename)%(Extension)</Link> -->
   ```

3. **Tests/SaveLoadTest.cs**
   - Now uses two SaveManager instances:
     - `dosManager` - Reads from `Resources/Saved Games/` (original DOS saves)
     - `testManager` - Writes to `Saved/` folder (test output files)
   - Test files (TESTGAME.usr, MODIFIED.usr) now saved to `Saved/` folder
   - Prevents pollution of Resources folder

4. **.gitignore**
   ```
   # OLD: TESTGAME.usr, MODIFIED.usr
   # NEW: Saved/TESTGAME.usr, Saved/MODIFIED.usr
   ```

## Directory Structure

### Before
```
bin/Debug/net8.0/
└── Saves/          ← Old location
    └── *.usr
```

### After
```
bin/Debug/net8.0/
└── Saved/          ← DOS standard
    ├── *.usr       ← 12 DOS save files (auto-copied)
    ├── TESTGAME.usr   ← Test output
    └── MODIFIED.usr   ← Test output
```

## Rationale

The `Saved` folder name matches the original DOS game convention where save files are stored in a "Saved" directory within the game's execution folder.

## Verification

```bash
# Build the project
dotnet build

# Check save files
ls bin/Debug/net8.0/Saved/
# Should show 12 .usr files

# Run tests
dotnet run -- --test
# Should create TESTGAME.usr and MODIFIED.usr in Saved/
```

## Compatibility

This change is **fully compatible** with the existing SaveManager API:

```csharp
// In any code
SaveManager manager = new SaveManager("Saved");
SaveFile? save = manager.LoadGame("Gold");
```

No breaking changes to the save file format or API.

## Future

The `Saved` folder will be the **only** location for save files during gameplay. This keeps save files in the execution directory, making the game portable and following DOS conventions.
