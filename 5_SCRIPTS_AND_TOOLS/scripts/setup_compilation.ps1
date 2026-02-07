# Setup compilation environment for decompiled Zeliard code

Write-Host "=== Setting up Zeliard Compilation Environment ===" -ForegroundColor Cyan
Write-Host ""

$sourceDir = "zeliard_decompiled_source"

# Step 1: Analyze code for function declarations
Write-Host "[1/5] Analyzing code for function prototypes..." -ForegroundColor Yellow

$allFunctions = @()
$allGlobals = @()

# Scan all C files for function definitions
Get-ChildItem "$sourceDir\src" -Recurse -Filter "*.c" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw

    # Find function definitions (simplified regex)
    $funcMatches = [regex]::Matches($content, '(?m)^([\w\s\*]+)\s+(FUN_\w+|entry|main)\s*\([^)]*\)')
    foreach ($match in $funcMatches) {
        $allFunctions += $match.Groups[0].Value
    }

    # Find global variables
    $globalMatches = [regex]::Matches($content, '(?m)^([\w\s\*]+)\s+(DAT_\w+|_DAT_\w+)\s*[=;]')
    foreach ($match in $globalMatches) {
        $allGlobals += $match.Groups[0].Value
    }
}

Write-Host "  Found ~$($allFunctions.Count) function definitions"
Write-Host "  Found ~$($allGlobals.Count) global variable references"

# Step 2: Create types header
Write-Host "[2/5] Creating type definitions..." -ForegroundColor Yellow

@"
/*
 * Zeliard Type Definitions
 * Auto-generated from decompiled code
 */

#ifndef ZELIARD_TYPES_H
#define ZELIARD_TYPES_H

#include <stdint.h>
#include <stdbool.h>

/* Ghidra type mappings */
typedef uint8_t  byte;
typedef int8_t   char;
typedef uint16_t word;
typedef int16_t  short;
typedef uint32_t dword;
typedef int32_t  int;

/* Ghidra undefined types - map to appropriate sizes */
typedef uint8_t  undefined;
typedef uint8_t  undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;

/* Pointer types */
typedef void* code;

/* Boolean type (if not using stdbool.h) */
#ifndef bool
typedef uint8_t bool;
#define true 1
#define false 0
#endif

/* DOS-specific types */
typedef struct {
    uint16_t ax, bx, cx, dx;
    uint16_t si, di, bp, sp;
    uint16_t cs, ds, es, ss;
    uint16_t flags;
} REGISTERS;

#endif /* ZELIARD_TYPES_H */
"@ | Out-File "$sourceDir\include\zeliard_types.h" -Encoding UTF8

# Step 3: Create DOS compatibility layer
Write-Host "[3/5] Creating DOS compatibility layer..." -ForegroundColor Yellow

@"
/*
 * DOS Compatibility Layer
 * Provides stubs for DOS interrupts and functions
 */

#ifndef DOS_COMPAT_H
#define DOS_COMPAT_H

#include "zeliard_types.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* DOS Interrupt Handler */
extern void* swi(int interrupt_num);

/* Common DOS interrupts used by Zeliard */
#define INT_DOS    0x21  /* DOS services */
#define INT_BIOS   0x10  /* BIOS video services */
#define INT_TIMER  0x08  /* Timer interrupt */
#define INT_CUSTOM 0x60  /* Custom game interrupt */

/* DOS function prototypes (to be implemented) */
void dos_init(void);
void dos_exit(void);
void* dos_interrupt(int interrupt_num);

/* Port I/O functions (PC hardware) */
void out(uint16_t port, uint8_t value);
uint8_t in(uint16_t port);

/* Memory functions */
#define CARRY1(a,b) (((a) + (b)) > 0xFF ? 1 : 0)
#define CONCAT11(hi,lo) ((((uint16_t)(hi)) << 8) | (uint8_t)(lo))

#endif /* DOS_COMPAT_H */
"@ | Out-File "$sourceDir\include\dos_compat.h" -Encoding UTF8

# Step 4: Create DOS compatibility implementation
Write-Host "[4/5] Creating DOS compatibility implementation..." -ForegroundColor Yellow

@"
/*
 * DOS Compatibility Layer Implementation
 * Minimal stubs to allow compilation
 */

#include "dos_compat.h"
#include <stdio.h>

/* Global registers (simulated) */
static REGISTERS regs = {0};

/* DOS interrupt handler stub */
void* swi(int interrupt_num) {
    /* This is a stub - implement actual DOS interrupt handling here */
    /* For now, return a dummy function pointer */
    static int dummy = 0;

    switch (interrupt_num) {
        case INT_DOS:    /* DOS services */
            /* Implement DOS INT 21h services */
            break;
        case INT_BIOS:   /* BIOS video */
            /* Implement BIOS INT 10h services */
            break;
        case INT_TIMER:  /* Timer */
            /* Implement timer interrupt */
            break;
        case INT_CUSTOM: /* Custom interrupt */
            /* Implement custom game interrupt */
            break;
        default:
            fprintf(stderr, "Warning: Unhandled interrupt 0x%02X\n", interrupt_num);
            break;
    }

    return (void*)&dummy;
}

/* Port I/O stubs */
void out(uint16_t port, uint8_t value) {
    /* Stub for PC port output */
    /* Implement hardware port writes if needed */
}

uint8_t in(uint16_t port) {
    /* Stub for PC port input */
    /* Implement hardware port reads if needed */
    return 0;
}

/* DOS initialization */
void dos_init(void) {
    /* Initialize DOS compatibility layer */
    printf("DOS Compatibility Layer Initialized\n");
}

/* DOS shutdown */
void dos_exit(void) {
    /* Cleanup DOS compatibility layer */
    printf("DOS Compatibility Layer Shutdown\n");
}
"@ | Out-File "$sourceDir\src\dos_compat.c" -Encoding UTF8

# Step 5: Create CMakeLists.txt
Write-Host "[5/5] Creating build system (CMake)..." -ForegroundColor Yellow

@"
cmake_minimum_required(VERSION 3.15)
project(Zeliard C)

# Set C standard
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Compiler warnings
if(MSVC)
    add_compile_options(/W3)
else()
    add_compile_options(-Wall -Wextra)
endif()

# Include directories
include_directories(
    `${CMAKE_SOURCE_DIR}/include
)

# DOS compatibility layer
add_library(dos_compat STATIC
    src/dos_compat.c
)

# Collect source files
file(GLOB CORE_SOURCES src/core/*.c)
file(GLOB SYSTEM_SOURCES src/systems/*.c)
file(GLOB LEVEL_SOURCES src/levels/*.c)
file(GLOB LOADER_SOURCES src/loader/*.c)

# Create main executable (start with just the loader for now)
add_executable(zeliard_loader
    `${LOADER_SOURCES}
)

target_link_libraries(zeliard_loader
    dos_compat
)

# Full game executable (will need lots of fixes before this compiles)
# Uncomment when ready to attempt full compilation
# add_executable(zeliard
#     `${CORE_SOURCES}
#     `${SYSTEM_SOURCES}
#     `${LEVEL_SOURCES}
#     `${LOADER_SOURCES}
# )
#
# target_link_libraries(zeliard
#     dos_compat
# )

# Print configuration
message(STATUS "Zeliard Decompiled Code Build Configuration")
message(STATUS "  Core sources: `${CMAKE_SOURCE_DIR}/src/core")
message(STATUS "  System sources: `${CMAKE_SOURCE_DIR}/src/systems")
message(STATUS "  Level sources: `${CMAKE_SOURCE_DIR}/src/levels")
message(STATUS "  Include path: `${CMAKE_SOURCE_DIR}/include")
"@ | Out-File "$sourceDir\CMakeLists.txt" -Encoding UTF8

Write-Host ""
Write-Host "=== Setup Complete! ===" -ForegroundColor Green
Write-Host ""
Write-Host "Created:"
Write-Host "  - include/zeliard_types.h (type definitions)"
Write-Host "  - include/dos_compat.h (DOS API header)"
Write-Host "  - src/dos_compat.c (DOS API stubs)"
Write-Host "  - CMakeLists.txt (build system)"
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "  1. cd $sourceDir"
Write-Host "  2. mkdir build && cd build"
Write-Host "  3. cmake .."
Write-Host "  4. cmake --build ."
Write-Host ""
Write-Host "Note: The code will have MANY compilation errors initially."
Write-Host "This is expected for decompiled code. You'll need to:"
Write-Host "  - Add #include statements to each .c file"
Write-Host "  - Declare external functions"
Write-Host "  - Fix type mismatches"
Write-Host "  - Resolve global variable declarations"
Write-Host ""
