# Project Reorganization Plan

## Current Problems
- MEMORY.md is a growing monolith (200 line limit approaching)
- Mixed concerns: graphics, sprites, palettes, assembly, resources all jumbled
- Hard to find specific information quickly
- No clear entry point for different subsystems

## Proposed Structure

```
6_DOCUMENTATION/
├── README.md                          # Main entry point, project overview
├── QUICKSTART.md                      # Build/run/test guide
│
├── 01_PROJECT_STRUCTURE/
│   ├── directory_layout.md            # What's in each folder
│   ├── file_formats.md                # SAR, .bin, .grp, chunk format
│   └── build_system.md                # dotnet commands, dependencies
│
├── 02_GAME_ENGINE/
│   ├── architecture.md                # Overall engine design
│   ├── chunk_loading.md               # SAR archives, chunk loader at CS:0x10C
│   ├── memory_layout.md               # Segment organization, CS/DS/ES usage
│   └── calling_conventions.md         # Function pointers, parameters
│
├── 03_GRAPHICS_SYSTEM/
│   ├── overview.md                    # Graphics architecture
│   ├── vga_rendering.md               # A000:0000 framebuffer, mode 13h
│   ├── palette_system.md              # VGA DAC, palette switching
│   ├── image_formats.md               # .grp two-stage compression
│   ├── sprite_formats.md              # Gameplay sprites (zelres2/18-35)
│   └── opening_graphics.md            # Opening scene images
│
├── 04_SPRITE_SYSTEM/
│   ├── sprite_overview.md             # Sprite architecture
│   ├── compression.md                 # Format 6/7 RLE, stage 1/2
│   ├── pixel_formats.md               # 6-bit packed, 3-plane 2-bit
│   ├── animation_system.md            # Frame timing, 18.2 FPS
│   └── sprite_atlas.md                # Chunk mapping, named sprites
│
├── 05_SCENES/
│   ├── opening_scene.md               # Chunk_00 analysis
│   ├── title_screen.md                # Menu system
│   ├── gameplay_scene.md              # Main game loop
│   └── cutscenes.md                   # Story sequences
│
├── 06_AUDIO/
│   ├── music_system.md                # MIDI, GM vs MT-32
│   ├── sound_effects.md               # Audio drivers
│   └── audio_resources.md             # File locations
│
├── 07_GAME_DATA/
│   ├── maps.md                        # Cavern maps, BMP format
│   ├── save_system.md                 # Save/load implementation
│   └── resource_catalog.md            # Complete asset list
│
├── 08_ASSEMBLY_REFERENCE/
│   ├── key_patterns.md                # Common asm idioms
│   ├── function_directory.md          # Known functions by address
│   ├── global_variables.md            # CS:0xff__ variables
│   └── disassembly_notes.md           # How to read the .asm files
│
├── 09_REVERSE_ENGINEERING/
│   ├── tools.md                       # DOSBox, ndisasm, hex editors
│   ├── techniques.md                  # How to trace/analyze
│   ├── discoveries.md                 # Major breakthroughs log
│   └── unsolved_mysteries.md          # Open questions
│
├── 10_IMPLEMENTATION/
│   ├── phase_tracker.md               # Master plan progress
│   ├── monogame_architecture.md       # C# port design
│   ├── decoder_implementation.md      # GrpDecoder, SpriteExtractor
│   └── testing_strategy.md            # How to verify correctness
│
└── 11_REFERENCE/
    ├── compiler_analysis.md           # MSC, assembly evidence
    ├── original_game_info.md          # Game Arts, Sierra history
    ├── hardware_specs.md              # VGA, DOS, 1990 PCs
    └── external_resources.md          # Spriters Resource, etc.
```

## Memory System Reorganization

Split MEMORY.md into focused topic files:

```
.claude/projects/c--Projects-Zeliard/memory/
├── MEMORY.md                          # Slim index (50 lines max)
├── graphics.md                        # All graphics info
├── sprites.md                         # Sprite formats & rendering
├── palettes.md                        # VGA palette system
├── compression.md                     # RLE formats, decoders
├── assembly.md                        # Key asm patterns
├── build.md                           # Build/run commands
└── gotchas.md                         # Common mistakes
```

### New MEMORY.md (Slim Index)
```markdown
# Zeliard Reverse Engineering - Quick Index

## Active Work
- Building: `cd MONOGAME_AUTHENTIC && dotnet run`
- Testing: `dotnet run -- --test`
- Exploring: F2 in-game for chunk browser

## Subsystems (See topic files)
- [graphics.md](graphics.md) - VGA rendering, framebuffer, DOSScreen
- [sprites.md](sprites.md) - Gameplay sprites, 6-bit packed format
- [palettes.md](palettes.md) - VGA DAC, scene-specific palettes
- [compression.md](compression.md) - Two-stage .grp decompression
- [assembly.md](assembly.md) - Key patterns, CS:0xff__ globals
- [build.md](build.md) - Commands, paths, tools
- [gotchas.md](gotchas.md) - Common errors to avoid

## Key Files
- `6_DOCUMENTATION/` - Full technical docs (see structure above)
- `MONOGAME_AUTHENTIC/` - C# port
- `2_EXTRACTED_CHUNKS/` - 120 binary chunks
- `4_ASSEMBLY_DISASSEMBLY/` - ndisasm output

## Quick References
- Gameplay palette: 64 colors (0x00-0x3F), see graphics.md
- Sprite format: 8 frames/row, 6-bit packed pixels, see sprites.md
- Chunk loader: `call word [cs:0x10c]`, al=archive, si=ref, di=dest
- VGA framebuffer: A000:0000, captured in `DOSBOX DUMPS/`

## Documentation
See `6_DOCUMENTATION/README.md` for complete technical reference.
```

## Implementation Steps

1. **Create directory structure** (01_PROJECT_STRUCTURE, 02_GAME_ENGINE, etc.)
2. **Extract from MEMORY.md** - Move each topic to its focused file
3. **Extract from existing docs** - Split OPENING_SCENE_ANALYSIS.md, etc.
4. **Create indices** - Each subdirectory gets a README.md
5. **Cross-link** - Use relative links liberally
6. **Update main README** - Point to new structure

## Benefits

- **Focused reading** - Each file covers one topic
- **Easy navigation** - Clear hierarchy, predictable locations
- **Better search** - Grep within topic areas
- **Parallel work** - Edit different subsystems without conflicts
- **Onboarding** - New contributors can focus on one area
- **Memory management** - Keep .claude/memory/ files under 200 lines each

## Migration Priority

1. **Phase 1** (Immediate): Split MEMORY.md into topic files
2. **Phase 2** (Next): Create 03_GRAPHICS_SYSTEM/, 04_SPRITE_SYSTEM/
3. **Phase 3** (Soon): Populate 08_ASSEMBLY_REFERENCE/
4. **Phase 4** (Later): Fill in remaining sections
5. **Phase 5** (Ongoing): Keep updated as discoveries happen

## Naming Conventions

- **Directories**: Numbered for reading order, CAPS_WITH_UNDERSCORES
- **Files**: lowercase_with_underscores.md
- **Max line count**: 500 lines per doc (force splitting if exceeded)
- **Cross-references**: Always use relative links: `[text](../02_GAME_ENGINE/architecture.md)`
