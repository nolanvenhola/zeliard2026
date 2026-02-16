# Original DOS Game Files

This folder contains the original Zeliard DOS game files from the 1990 Sierra On-Line release.

## Contents

- **zeliad.exe** - Main game executable
- **install.exe** - DOS installer program
- **zelres1.sar** - Resource archive 1 (UI, opening scene, player sprites)
- **zelres2.sar** - Resource archive 2 (combat, enemies, physics)
- **zelres3.sar** - Resource archive 3 (levels, dialogue, maps)

## Running the Game

### DOSBox
```bash
dosbox zeliad.exe
```

### DOSBox-X (recommended for debugging)
```bash
dosbox-x zeliad.exe
```

## SAR Archives

The `.sar` files are custom archive format containing binary chunks. To extract them:
- See `../2_SAR/Tools/` for extraction scripts
- Extracted chunks are in `../2_SAR/ExtractedChunks/`

## Game Information

- **Developer**: Game Arts
- **Publisher**: Sierra On-Line
- **Year**: 1987 (Japan), 1990 (English)
- **Genre**: Action RPG / Platform
- **Graphics**: MCGA 320x200 256 colors

## Related Resources

- **Documentation**: `../4_Resources/Documentation/` - PDFs with game manuals and guides
- **Game Data**: `../4_Resources/GameData/` - Extracted game mechanics and databases
- **Maps**: `../4_Resources/Maps/` - Cavern and town maps
