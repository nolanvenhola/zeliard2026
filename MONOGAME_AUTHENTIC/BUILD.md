# Building Zeliard Authentic

## Prerequisites

- [.NET 6.0 SDK](https://dotnet.microsoft.com/download/dotnet/6.0) or later
- MonoGame 3.8.1 (automatically installed via NuGet)

## Building

### Command Line

```bash
# Restore dependencies
dotnet restore

# Build the project
dotnet build

# Run the game
dotnet run

# Run in release mode
dotnet run --configuration Release
```

### Visual Studio 2022

1. Open `ZeliardAuthentic.csproj` in Visual Studio
2. Press F5 to build and run
3. Or use Build → Build Solution (Ctrl+Shift+B)

### Visual Studio Code

1. Open the `MONOGAME_AUTHENTIC` folder in VS Code
2. Install C# extension if not already installed
3. Press F5 to build and run
4. Or use Terminal → Run Task → build

### JetBrains Rider

1. Open `ZeliardAuthentic.csproj` in Rider
2. Press Shift+F10 to run
3. Or use Run → Run 'ZeliardAuthentic'

## Running Tests

```bash
# Run save/load tests
dotnet run -- --test

# Or press F1 in the game window
```

## Project Structure

```
MONOGAME_AUTHENTIC/
├── ZeliardAuthentic.csproj    ← Main project file
├── Program.cs                  ← Entry point
├── Game1.cs                    ← Main game loop
├── Core/
│   ├── SaveFile.cs            ← Save file structure
│   ├── SaveManager.cs         ← Save/load I/O
│   └── AuthenticConstants.cs  ← DOS constants
├── Entities/                   ← (future: Player, enemies)
├── Physics/                    ← (future: Physics engine)
├── Input/                      ← (future: Input handling)
├── Tests/
│   └── SaveLoadTest.cs        ← Save/load tests
└── Content/
    ├── Content.mgcb           ← MonoGame content pipeline
    └── Fonts/
        └── Debug.spritefont   ← Debug font

Output directory:
├── bin/Debug/net6.0/
│   ├── ZeliardAuthentic.exe   ← Compiled game
│   └── Saves/                 ← DOS save files copied here
```

## Configuration

### Window Size

Modify in `Game1.cs`:
```csharp
private const int SCALE_FACTOR = 3; // Change to 2, 4, etc.
```

Current: 960x600 (DOS 320x200 scaled 3x)

### Save File Location

Modify in `Game1.cs`:
```csharp
_saveManager = new SaveManager("Saves"); // Change path here
```

Default: `bin/Debug/net6.0/Saves/` (DOS saves auto-copied from Resources)

## Troubleshooting

### Missing MonoGame Framework

```bash
dotnet add package MonoGame.Framework.DesktopGL --version 3.8.1.303
```

### Content Pipeline Errors

The debug font is optional. Comment out font loading in `Game1.cs` if needed:
```csharp
// _debugFont = Content.Load<SpriteFont>("Fonts/Debug");
```

### Save Files Not Found

DOS save files from `Resources/Saved Games/` are automatically copied to `Saves/` folder in the output directory. Check that the build succeeded.

## Development Workflow

1. **Extract constants** from assembly (`4_ASSEMBLY_DISASSEMBLY/`)
2. **Update AuthenticConstants.cs** with exact values
3. **Implement game systems** (Player, Physics, etc.)
4. **Test against DOS** behavior in DOSBox
5. **Iterate** until authentic

## Performance

Target: 18.2 FPS (DOS authentic)

Current: 60 FPS (MonoGame default) - will be capped to 18.2 FPS when game loop is implemented

## Next Steps

See [PROJECT_STATUS.md](PROJECT_STATUS.md) for implementation roadmap.

## References

- [MonoGame Documentation](https://docs.monogame.net/)
- [Assembly Analysis](../6_DOCUMENTATION/ASSEMBLY_ONLY_GUIDE.md)
- [Save File Format](../6_DOCUMENTATION/SAVE_FILE_FORMAT.md)
