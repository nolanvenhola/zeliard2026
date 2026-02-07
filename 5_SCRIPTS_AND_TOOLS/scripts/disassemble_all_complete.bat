@echo off
REM Disassemble ALL Zeliard binaries including .sar extracted chunks
REM Run this after VS Code restart to pick up ndisasm in PATH

set OUTPUT_DIR=c:\Projects\Zeliard\assembly_output
set BASE_DIR=c:\Projects\Zeliard

REM Create output directories
mkdir "%OUTPUT_DIR%" 2>NUL
mkdir "%OUTPUT_DIR%\zelres1_chunks" 2>NUL
mkdir "%OUTPUT_DIR%\zelres2_chunks" 2>NUL
mkdir "%OUTPUT_DIR%\zelres3_chunks" 2>NUL

echo.
echo ========================================
echo Disassembling ALL Zeliard Binaries
echo ========================================
echo.

REM ==========================================
REM Main Game Files
REM ==========================================
echo [MAIN GAME FILES]
echo.

echo [1/7] Disassembling game.bin (main game code)...
ndisasm -b 16 -o 0 "%BASE_DIR%\game.bin" > "%OUTPUT_DIR%\game.asm"
echo       Created: game.asm

echo [2/7] Disassembling zeliad.exe (loader/entry point)...
ndisasm -b 16 -o 0x100 "%BASE_DIR%\zeliad.exe" > "%OUTPUT_DIR%\zeliad.asm"
echo       Created: zeliad.asm

REM ==========================================
REM Graphics Mode Files
REM ==========================================
echo.
echo [GRAPHICS MODES]
echo.

echo [3/7] Disassembling gmcga.bin (CGA graphics mode)...
ndisasm -b 16 -o 0 "%BASE_DIR%\gmcga.bin" > "%OUTPUT_DIR%\gmcga.asm"
echo       Created: gmcga.asm

echo [4/7] Disassembling gmega.bin (EGA graphics mode)...
ndisasm -b 16 -o 0 "%BASE_DIR%\gmega.bin" > "%OUTPUT_DIR%\gmega.asm"
echo       Created: gmega.asm

echo [5/7] Disassembling gmhgc.bin (Hercules graphics mode)...
ndisasm -b 16 -o 0 "%BASE_DIR%\gmhgc.bin" > "%OUTPUT_DIR%\gmhgc.asm"
echo       Created: gmhgc.asm

echo [6/7] Disassembling gmmcga.bin (MCGA graphics mode)...
ndisasm -b 16 -o 0 "%BASE_DIR%\gmmcga.bin" > "%OUTPUT_DIR%\gmmcga.asm"
echo       Created: gmmcga.asm

echo [7/7] Disassembling gmtga.bin (TGA/VGA graphics mode)...
ndisasm -b 16 -o 0 "%BASE_DIR%\gmtga.bin" > "%OUTPUT_DIR%\gmtga.asm"
echo       Created: gmtga.asm

REM ==========================================
REM ZELRES1 Chunks (Core Resources)
REM ==========================================
echo.
echo [ZELRES1 CHUNKS - Core Resources]
echo Disassembling 40 chunks...

for %%i in (%BASE_DIR%\zelres1_extracted\*.bin) do (
    set filename=%%~ni
    ndisasm -b 16 -o 0 "%%i" > "%OUTPUT_DIR%\zelres1_chunks\%%~ni.asm" 2>NUL
    echo .
)
echo       Created: 40 zelres1 chunk .asm files

REM ==========================================
REM ZELRES2 Chunks (System Resources)
REM ==========================================
echo.
echo [ZELRES2 CHUNKS - System Resources]
echo Disassembling 40 chunks...

for %%i in (%BASE_DIR%\zelres2_extracted\*.bin) do (
    set filename=%%~ni
    ndisasm -b 16 -o 0 "%%i" > "%OUTPUT_DIR%\zelres2_chunks\%%~ni.asm" 2>NUL
    echo .
)
echo       Created: 40 zelres2 chunk .asm files

REM ==========================================
REM ZELRES3 Chunks (Level Data & Graphics)
REM ==========================================
echo.
echo [ZELRES3 CHUNKS - Level Data]
echo Disassembling 40 chunks...

for %%i in (%BASE_DIR%\zelres3_extracted\*.bin) do (
    set filename=%%~ni
    ndisasm -b 16 -o 0 "%%i" > "%OUTPUT_DIR%\zelres3_chunks\%%~ni.asm" 2>NUL
    echo .
)
echo       Created: 40 zelres3 chunk .asm files

REM ==========================================
REM Summary
REM ==========================================
echo.
echo ========================================
echo Disassembly Complete!
echo ========================================
echo.
echo Output directory: %OUTPUT_DIR%
echo.
echo Created:
echo   - 7 main game/graphics .asm files
echo   - 40 zelres1 chunk .asm files (core resources)
echo   - 40 zelres2 chunk .asm files (system resources)
echo   - 40 zelres3 chunk .asm files (level data)
echo.
echo Total: 127 assembly files
echo.
echo Next steps:
echo   1. Read ASSEMBLY_REFERENCE_GUIDE.md
echo   2. Start with game.asm for main game logic
echo   3. Reference chunk files for specific mechanics
echo   4. Use as ground truth for MonoGame porting
echo.

REM Show file sizes
echo File sizes:
dir /b "%OUTPUT_DIR%\*.asm" | findstr /v "chunk"
echo.
echo Chunks organized in subdirectories:
echo   %OUTPUT_DIR%\zelres1_chunks\
echo   %OUTPUT_DIR%\zelres2_chunks\
echo   %OUTPUT_DIR%\zelres3_chunks\
echo.

pause
