# Package Zeliard decompiled source code

$packageDir = "zeliard_decompiled_source"

Write-Host "Creating source package in $packageDir..." -ForegroundColor Cyan

# Create directory structure
$dirs = @(
    $packageDir,
    "$packageDir\src\core",
    "$packageDir\src\systems",
    "$packageDir\src\levels",
    "$packageDir\src\loader",
    "$packageDir\include",
    "$packageDir\docs",
    "$packageDir\data",
    "$packageDir\build"
)

foreach ($dir in $dirs) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir | Out-Null
    }
}

Write-Host "Copying source files..." -ForegroundColor Yellow

# Copy zelres1 (core engine) files
Write-Host "  zelres1 -> src/core/"
Copy-Item "zelres1_chunk_*_decompiled.c" "$packageDir\src\core\" -ErrorAction SilentlyContinue

# Copy zelres2 (extended systems) files
Write-Host "  zelres2 -> src/systems/"
Copy-Item "zelres2_chunk_*_decompiled.c" "$packageDir\src\systems\" -ErrorAction SilentlyContinue

# Copy zelres3 (level data) files
Write-Host "  zelres3 -> src/levels/"
Copy-Item "zelres3_chunk_*_decompiled.c" "$packageDir\src\levels\" -ErrorAction SilentlyContinue

# Copy loader files
Write-Host "  loaders -> src/loader/"
Copy-Item "zeliad_decompiled.c" "$packageDir\src\loader\" -ErrorAction SilentlyContinue
Copy-Item "game_decompiled.c" "$packageDir\src\loader\" -ErrorAction SilentlyContinue
Copy-Item "install_decompiled.c" "$packageDir\src\loader\" -ErrorAction SilentlyContinue

# Copy documentation
Write-Host "  documentation -> docs/"
Copy-Item "DECOMPILATION_REPORT.md" "$packageDir\docs\" -ErrorAction SilentlyContinue
Copy-Item "CHUNK_ANALYSIS.md" "$packageDir\docs\" -ErrorAction SilentlyContinue

# Copy original binaries for reference
Write-Host "  original binaries -> data/"
Copy-Item "*.bin" "$packageDir\data\" -ErrorAction SilentlyContinue
Copy-Item "zeliad.exe" "$packageDir\data\" -ErrorAction SilentlyContinue
Copy-Item "install.exe" "$packageDir\data\" -ErrorAction SilentlyContinue

# Create README
Write-Host "Creating README..." -ForegroundColor Yellow
@"
# Zeliard Decompiled Source Code

This package contains the complete decompiled source code for the 1996 DOS game Zeliard.

## Contents

- **src/core/** - Core game engine (zelres1 archive, 40 chunks)
  - chunk_00: Main game loop (5,913 lines)
  - chunk_06: Extended systems (2,927 lines)
  - Other core modules

- **src/systems/** - Extended game systems (zelres2 archive, 40 chunks)
  - chunk_00: Advanced systems (6,072 lines)
  - UI, menus, inventory, dialogue systems
  - Additional game mechanics

- **src/levels/** - Level data and loaders (zelres3 archive, 40 chunks)
  - chunk_00: Level loader (139 lines)
  - chunk_14: Level renderer (301 lines)
  - 38 level data chunks

- **src/loader/** - Bootstrap loaders
  - zeliad_decompiled.c: Main loader (14 functions)
  - game_decompiled.c: Dispatcher (3 functions)
  - install_decompiled.c: Installer (134 functions)

- **docs/** - Documentation and analysis
  - DECOMPILATION_REPORT.md: Complete technical report
  - CHUNK_ANALYSIS.md: Game systems breakdown

- **data/** - Original binary files (for reference)

## Statistics

- **Total files**: 123 C source files
- **Total lines**: ~23,000 lines of decompiled C code
- **Architecture**: 16-bit x86 DOS Real Mode
- **Decompiler**: Ghidra 12.0.2

## Important Notes

### This is DECOMPILED code

The code has been reverse-engineered from DOS binaries and has these characteristics:

1. **Generic names**: Functions are named FUN_0000_xxxx, variables are var1, var2, etc.
2. **No comments**: Original programmer comments are lost
3. **Type inference**: Types are inferred by Ghidra, may not be original
4. **Will NOT compile as-is**: Requires significant work to make compilable

### To make this compilable, you need to:

1. Create header files with proper type definitions
2. Define external functions and global variables
3. Resolve DOS interrupt calls (swi instructions)
4. Implement DOS API compatibility layer OR port to modern OS
5. Rename functions and variables meaningfully
6. Add necessary #includes and declarations

## Recommended Approach for Porting

### Phase 1: Analysis
1. Study src/core/zelres1_chunk_00_decompiled.c (main engine)
2. Identify global data structures
3. Map function call graphs
4. Document DOS interrupts used

### Phase 2: Architecture
1. Create modern game loop replacing DOS-specific code
2. Replace DOS graphics with SDL2/OpenGL
3. Replace DOS sound with modern audio library
4. Create input abstraction layer

### Phase 3: Implementation
1. Port core engine (zelres1)
2. Port extended systems (zelres2)
3. Implement level loader (zelres3)
4. Extract and convert graphics/sound data

## Key Files to Start With

1. **src/core/zelres1_chunk_00_decompiled.c** (5,913 lines)
   - Main game loop
   - Core rendering
   - Input handling
   - Start here to understand the game

2. **src/systems/zelres2_chunk_00_decompiled.c** (6,072 lines)
   - UI systems
   - Menu handling
   - Advanced features

3. **src/levels/zelres3_chunk_00_decompiled.c** (139 lines)
   - Level loading logic
   - Shows how level data is parsed

## Build System (TODO)

This package does not include a build system because the code requires
significant modifications before it can compile. Once you've:

- Created proper headers
- Resolved dependencies
- Ported DOS-specific code

You can add:
- CMakeLists.txt for CMake
- Makefile for Make
- Visual Studio project files
- Or your preferred build system

## License

Zeliard is copyright Game Arts / Sierra On-Line (1996).
This decompilation is for educational and preservation purposes.

## Credits

- **Original Game**: Game Arts, Sierra On-Line
- **Decompilation**: Ghidra 12.0.2
- **Date**: February 1, 2026

For more information, see docs/DECOMPILATION_REPORT.md
"@ | Out-File "$packageDir\README.md" -Encoding UTF8

# Create a basic header template
Write-Host "Creating header templates..." -ForegroundColor Yellow
@"
/*
 * Zeliard - Common Type Definitions
 *
 * This header needs to be populated with:
 * - Global variable declarations
 * - Function prototypes
 * - Type definitions
 * - Constants and macros
 */

#ifndef ZELIARD_H
#define ZELIARD_H

#include <stdint.h>
#include <stdbool.h>

/* TODO: Add type definitions from decompiled code */
/* TODO: Add global variable declarations */
/* TODO: Add function prototypes */

#endif /* ZELIARD_H */
"@ | Out-File "$packageDir\include\zeliard.h" -Encoding UTF8

@"
/*
 * DOS Compatibility Layer
 *
 * Provides stubs/implementations for DOS interrupts and functions
 * used by the decompiled code.
 */

#ifndef DOS_COMPAT_H
#define DOS_COMPAT_H

#include <stdint.h>

/* DOS interrupt wrapper - needs implementation */
void* swi(int interrupt_num);

/* DOS functions that need implementation or replacement */
/* TODO: Add DOS API function declarations */

#endif /* DOS_COMPAT_H */
"@ | Out-File "$packageDir\include\dos_compat.h" -Encoding UTF8

# Create build template
@"
# Zeliard Build Instructions

## Prerequisites

- C compiler (GCC, Clang, or MSVC)
- CMake 3.15+ (recommended) or Make
- SDL2 library (for modern port)

## Current Status

⚠️ **The code will NOT compile as-is!**

This is decompiled code that requires significant work before compilation.

## Steps to Make Compilable

### 1. Create Headers
- Review all .c files for global variables and functions
- Create proper .h header files with declarations
- Add to include/ directory

### 2. Resolve DOS Dependencies
- Implement dos_compat.h functions
- Replace DOS interrupts with modern equivalents
- OR create DOS emulation layer

### 3. Type Definitions
- Review decompiled types (undefined1, undefined2, etc.)
- Replace with proper C types
- Add to zeliard.h

### 4. Build System
Once the above is done, create CMakeLists.txt:

\`\`\`cmake
cmake_minimum_required(VERSION 3.15)
project(Zeliard C)

# Add source files
file(GLOB_RECURSE SOURCES src/**/*.c)

# Create executable
add_executable(zeliard \${SOURCES})

# Include directories
target_include_directories(zeliard PRIVATE include)

# Link libraries (SDL2, etc.)
# target_link_libraries(zeliard SDL2)
\`\`\`

## Building (Once Ready)

\`\`\`bash
mkdir build
cd build
cmake ..
make
\`\`\`

## Notes

- Start with zelres1_chunk_00 (main engine)
- Test compilation incrementally
- Expect to spend significant time on porting
"@ | Out-File "$packageDir\build\BUILD.md" -Encoding UTF8

# Create file list
Write-Host "Generating file inventory..." -ForegroundColor Yellow
$allFiles = Get-ChildItem $packageDir -Recurse -File
$inventory = @"
# Zeliard Source Package - File Inventory

Generated: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")

Total Files: $($allFiles.Count)
Total Size: $([math]::Round(($allFiles | Measure-Object -Property Length -Sum).Sum / 1MB, 2)) MB

## Directory Structure

"@

Get-ChildItem $packageDir -Directory -Recurse | ForEach-Object {
    $relPath = $_.FullName.Replace((Get-Item $packageDir).FullName, ".")
    $fileCount = (Get-ChildItem $_.FullName -File).Count
    $inventory += "`n$relPath ($fileCount files)"
}

$inventory += "`n`n## File List`n"
$allFiles | Sort-Object DirectoryName, Name | ForEach-Object {
    $relPath = $_.FullName.Replace((Get-Item $packageDir).FullName, ".")
    $size = if ($_.Length -gt 1024) { "$([math]::Round($_.Length/1024, 1)) KB" } else { "$($_.Length) B" }
    $inventory += "`n$relPath - $size"
}

$inventory | Out-File "$packageDir\FILE_INVENTORY.txt" -Encoding UTF8

Write-Host "`nPackage created successfully!" -ForegroundColor Green
Write-Host "Location: $packageDir"
Write-Host "`nSummary:"
Write-Host "  Total files: $($allFiles.Count)"
Write-Host "  Total size: $([math]::Round(($allFiles | Measure-Object -Property Length -Sum).Sum / 1MB, 2)) MB"
Write-Host "`nSee $packageDir\README.md for details"
