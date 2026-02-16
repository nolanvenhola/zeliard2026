# Zeliard MonoGame Port

A faithful C# MonoGame port of the 1990 DOS action-RPG Zeliard, reverse-engineered from the original x86 assembly.

## Project Status

**Current**: Phase 5 complete - 93% DOS-accurate
- Integer-based physics engine
- DOS 18.2 FPS timing
- VGA framebuffer rendering (320x200)
- Player movement, combat, and enemy AI
- Verified against original assembly

## Quick Start

### Play the MonoGame Port
```bash
cd 5_MonoGame/MONOGAME_AUTHENTIC
dotnet run
```

**Controls:**
- Arrow Keys: Move
- Up: Jump
- Space: Attack
- F2: Chunk Explorer

### Play the Original DOS Game
```bash
cd 1_OriginalGame
dosbox zeliad.exe
```

## Project Structure

This project is organized for team collaboration with clear separation of concerns:

### 1_OriginalGame/
Original DOS game files and SAR archives.
- **zeliad.exe** - Main DOS executable
- **zelres1.sar, zelres2.sar, zelres3.sar** - Resource archives

[📖 See 1_OriginalGame/README.md](1_OriginalGame/README.md)

### 2_SAR/
SAR archive extraction tools and 120 extracted binary chunks.
- **Tools/** - Python and PowerShell extraction scripts
- **ExtractedChunks/** - 40 chunks per zelres archive (120 total)
- **Documentation/** - SAR format and chunk index

[📖 See 2_SAR/Tools/README.md](2_SAR/Tools/README.md)
[📖 See 2_SAR/ExtractedChunks/README.md](2_SAR/ExtractedChunks/README.md)

### 3_Assembly/
All reverse engineering work: disassembly, analysis, and constant extraction.
- **ndisasm/** - 55 disassembled .asm files (executables, drivers, chunks)
- **nasm/** - NASM conversions and compiled outputs
- **sourcer/** - Sourcer disassembler tool (commercial, 2001)
- **Unicorn/** - CPU emulator for runtime constant extraction
- **Documentation/** - 46+ chunk walkthroughs and assembly analysis

[📖 See 3_Assembly/ndisasm/README.md](3_Assembly/ndisasm/README.md)
[📖 See 3_Assembly/Unicorn/README_NAV.md](3_Assembly/Unicorn/README_NAV.md)

### 4_Resources/
Game reference materials, documentation, and assets.
- **Documentation/** - 10 PDFs (manual, game guides, item databases)
- **GameData/** - 77 KB game mechanics reference + enemy/item databases
- **Music/** - 14 MIDI tracks (GM and MT-32 formats)
- **Maps/** - 19 cavern maps as BMP files
- **Sprites/** - Extracted sprite sheets and tile sets

[📖 See 4_Resources/Music/README.md](4_Resources/Music/README.md)
[📖 See 4_Resources/Maps/README.md](4_Resources/Maps/README.md)

### 5_MonoGame/
Active C# MonoGame port (93% DOS-accurate).
- **MONOGAME_AUTHENTIC/** - .NET 8.0 C# project (1,361 lines, 16 files)
- **Documentation/** - Implementation plan, status, verification matrix
- **BuildScripts/** - Disassembly automation

[📖 See 5_MonoGame/MONOGAME_AUTHENTIC/README.md](5_MonoGame/MONOGAME_AUTHENTIC/README.md)
[📖 See 5_MonoGame/BuildScripts/README.md](5_MonoGame/BuildScripts/README.md)

### archive/
Historical reference database (bosses, enemies, items, towns, NPCs).

## Development Workflow

### For C# Developers (MonoGame Port)
1. Navigate to `5_MonoGame/MONOGAME_AUTHENTIC/`
2. Build: `dotnet build`
3. Run: `dotnet run`
4. Reference `4_Resources/GameData/` for game mechanics
5. Reference `3_Assembly/Documentation/` for assembly verification

### For Reverse Engineers (Assembly Analysis)
1. Extract chunks: `cd 2_SAR/Tools && python extract_sar.py`
2. Disassemble: `cd 5_MonoGame/BuildScripts && disassemble_all_complete.bat`
3. Analyze: See `3_Assembly/Documentation/GAME_ENGINE/` for walkthroughs
4. Extract constants: `cd 3_Assembly/Unicorn && python extract_constants.py`

### For Asset Creators
1. Music: `4_Resources/Music/` (14 MIDI tracks)
2. Maps: `4_Resources/Maps/` (19 cavern BMPs)
3. Sprites: `4_Resources/Sprites/` (Sharp X1 sprite sheets)
4. Reference: `4_Resources/Documentation/` (10 PDFs)

## Key Technologies

- **MonoGame**: C# game framework (.NET 8.0)
- **ndisasm**: Netwide Disassembler (x86 16-bit)
- **Unicorn**: CPU emulator for constant extraction
- **DOSBox**: DOS emulator for testing original game
- **Python**: SAR extraction and automation

## Game Information

- **Title**: Zeliard
- **Developer**: Game Arts
- **Publisher**: Sierra On-Line (English), Game Arts (Japanese)
- **Year**: 1987 (Japan), 1990 (English)
- **Genre**: Action RPG / Platform
- **Graphics**: MCGA 320x200 256 colors
- **Audio**: AdLib, Sound Blaster, Roland MT-32
- **Platform**: DOS (original), Windows/Linux/Mac (MonoGame port)

## Project History

- **Phase 1-3**: Core engine (DOSScreen, input, rendering)
- **Phase 4**: Player movement and physics (verified integer-based)
- **Phase 5**: Combat and enemies (93% DOS-accurate)
- **Next**: Level loading, dialogue, shops, inventory

## License & Copyright

### Original Game
- Copyright © 1987, 1990 Game Arts
- Copyright © 1990 Sierra On-Line

### MonoGame Port
- Reverse engineering for educational and preservation purposes
- No original game assets distributed (users must own original)
- Code developed via clean-room reverse engineering from assembly

## Contributing

This project welcomes collaboration! Here's how you can help:

### C# Development
- Implement remaining gameplay systems (shops, inventory, magic)
- Improve rendering accuracy
- Add quality-of-life features (save states, resolution scaling)

### Reverse Engineering
- Extract remaining constants from assembly
- Document undocovered game mechanics
- Verify existing implementations against DOS binary

### Documentation
- Write tutorials for newcomers
- Create video walkthroughs
- Document assembly patterns

### Assets
- Convert music to MonoGame-compatible formats
- Extract and organize sprite sheets
- Create modern UI assets (while respecting original art style)

## Contact & Links

- **Project Location**: c:\Projects\Zeliard
- **MonoGame**: https://www.monogame.net/
- **Original Game Info**: See `4_Resources/Documentation/Zeliard_Manual.pdf`

## Acknowledgments

- **Game Arts** - Original game developers
- **Sierra On-Line** - English localization and publishing
- **MonoGame Team** - Excellent game framework
- **NASM/ndisasm** - Disassembly tools
- **Unicorn Engine** - CPU emulation for constant extraction
- **The Spriters Resource** - Sprite reference materials

---

**Last Updated**: 2026-02-16
**Project Size**: ~200 MB (after cleanup)
**Files**: 120 chunks, 55 ASM files, 14 MIDI tracks, 19 maps, 46+ walkthroughs