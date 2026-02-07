# Reorganized Project Structure

## New Directory Layout

```
c:\Projects\Zeliard\
│
├── 1_ORIGINAL_DOS/                    📁 Original Game Files
│   ├── zeliad.exe                     (Entry point - 3KB)
│   ├── install.exe                    (Installer - 19KB)
│   ├── game.bin                       (Main game code - 1.2KB)
│   ├── zelres1.sar                    (Core resources - 251KB)
│   ├── zelres2.sar                    (System resources - 338KB)
│   ├── zelres3.sar                    (Level data - 335KB)
│   ├── gmcga.bin, gmega.bin, etc.     (Graphics drivers)
│   ├── *.drv                          (Sound drivers)
│   ├── *.com                          (DOS utilities)
│   └── *.bat, *.cfg                   (Config files)
│
├── 2_EXTRACTED_CHUNKS/                📁 Binary Chunks from .sar
│   ├── zelres1_extracted/             (40 chunk .bin files)
│   ├── zelres2_extracted/             (40 chunk .bin files)
│   └── zelres3_extracted/             (40 chunk .bin files)
│
├── 3_DECOMPILED_C/                    📁 Individual C Files
│   ├── game_decompiled.c
│   ├── zeliad_decompiled.c
│   ├── install_decompiled.c
│   ├── zelres1_chunk_00-39_decompiled.c  (40 files)
│   ├── zelres2_chunk_00-39_decompiled.c  (40 files)
│   └── zelres3_chunk_00-39_decompiled.c  (40 files)
│
├── 4_ASSEMBLY_DISASSEMBLY/            📁 Assembly .asm Files
│   └── assembly_output/
│       ├── game.asm
│       ├── zeliad.asm
│       ├── gm*.asm                    (Graphics drivers)
│       ├── zelres1_chunks/            (6 code chunks)
│       ├── zelres2_chunks/            (19 code chunks)
│       └── zelres3_chunks/            (4 code chunks)
│
├── 5_SCRIPTS_AND_TOOLS/               📁 Scripts & Tools
│   ├── scripts/
│   │   ├── extract_sar.ps1            (SAR extraction)
│   │   ├── decompile_*.ps1            (Decompilation scripts)
│   │   ├── disassemble_*.bat          (Disassembly scripts)
│   │   ├── analyze_*.ps1              (Analysis tools)
│   │   ├── *.py                       (Python utilities)
│   │   └── *.java                     (Ghidra scripts)
│   └── ghidra_projects/               (Ghidra project files)
│
├── 6_DOCUMENTATION/                   📁 All Documentation
│   ├── README_ASSEMBLY_WORKFLOW.md    ⭐ START HERE
│   ├── ASSEMBLY_REFERENCE_GUIDE.md    (How to read assembly)
│   ├── ASSEMBLY_DISASSEMBLY_PLAN.md   (Master plan)
│   ├── EXECUTABLE_VS_DATA_CHUNKS.md   (Code vs data)
│   ├── CHUNK_REFERENCE_MAP.md         (Chunk guide)
│   ├── CHUNK_ANALYSIS.md              (Analysis results)
│   ├── DECOMPILATION_REPORT.md        (C decompilation report)
│   ├── PROJECT_OVERVIEW.md            (Project status)
│   └── NEW_STRUCTURE.md               (This file)
│
├── 7_LOGS/                            📁 Build Logs & Errors
│   ├── decompile_*.log
│   ├── ghidra_export.log
│   └── decompile_errors.log
│
├── COMPILED_C/                        📁 C Compilation Project (renamed from zeliard2026)
│   ├── src/                           (Organized C sources)
│   │   ├── core/                      (zelres1 chunks)
│   │   ├── systems/                   (zelres2 chunks)
│   │   ├── levels/                    (zelres3 chunks)
│   │   └── loader/                    (Main executables)
│   ├── include/                       (Headers)
│   ├── CMakeLists.txt                 (Build config)
│   └── cmake-build-debug-fullgame/    (Built executables)
│       ├── zeliard.exe                (634KB)
│       ├── zeliad.exe                 (119KB)
│       ├── zeliard_install.exe        (187KB)
│       └── zeliard_core.exe           (333KB)
│
├── MONOGAME_CS/                       📁 MonoGame C# Project (renamed from ZeliardModern)
│   ├── Systems/                       (Game systems)
│   ├── Models/                        (Data models)
│   ├── Physics/                       (Physics engine)
│   ├── Content/                       (Assets)
│   │   ├── Sprites/                   (Extracted graphics)
│   │   ├── Tilesets/                  (Tile graphics)
│   │   └── Maps/                      (Level maps)
│   └── *.cs                           (C# source files)
│
├── ghidra/                            📁 Ghidra Installation
│   └── [Ghidra files...]              (Tool installation)
│
└── .claude/                           📁 Claude Code Config
    └── [Claude settings...]
```

## Benefits of This Structure

### 🎯 Clear Separation of Concerns
- **Original DOS** - Preserve original files untouched
- **Extracted** - Binary chunks for reference
- **Decompiled** - Individual C files for quick access
- **Assembly** - Authentic assembly code (ground truth)
- **Scripts** - All automation tools in one place
- **Documentation** - Easy to find guides

### 📊 Easy Navigation
- Numbered folders = priority/workflow order
- Clear names = no guessing what's inside
- Logical grouping = related files together

### 🔍 Better for Version Control
- Can .gitignore logs separately
- Can version original DOS files
- Can track documentation changes
- Can manage scripts independently

### 🚀 Workflow Optimized
```
1. Reference original DOS (folder 1)
2. Check extracted chunks (folder 2)
3. Compare C decompilation (folder 3)
4. Use assembly as truth (folder 4)
5. Run scripts as needed (folder 5)
6. Read documentation (folder 6)
7. Work in zeliard2026 or ZeliardModern
```

## What Gets Moved

| Current Location | New Location |
|-----------------|--------------|
| Root/*.exe, *.com, *.bin, *.sar | 1_ORIGINAL_DOS/ |
| Root/zelres*_extracted/ | 2_EXTRACTED_CHUNKS/ |
| Root/*_decompiled.c | 3_DECOMPILED_C/ |
| Root/assembly_output/ | 4_ASSEMBLY_DISASSEMBLY/ |
| Root/*.ps1, *.py, *.bat (scripts) | 5_SCRIPTS_AND_TOOLS/scripts/ |
| Root/ghidra_projects/ | 5_SCRIPTS_AND_TOOLS/ |
| Root/*.md | 6_DOCUMENTATION/ |
| Root/*.log | 7_LOGS/ |
| zeliard2026/ → COMPILED_C/ | Rename manually |
| ZeliardModern/ → MONOGAME_CS/ | Rename manually |
| ghidra/ | Stays in place |

## After Reorganization

Your workflow becomes:

1. **Need documentation?** → Check `6_DOCUMENTATION/`
2. **Need to run a script?** → Check `5_SCRIPTS_AND_TOOLS/scripts/`
3. **Need to check assembly?** → Check `4_ASSEMBLY_DISASSEMBLY/assembly_output/`
4. **Need original DOS file?** → Check `1_ORIGINAL_DOS/`
5. **Working on C build?** → Use `zeliard2026/`
6. **Working on MonoGame?** → Use `ZeliardModern/`

Much cleaner and easier to navigate! 🎯
