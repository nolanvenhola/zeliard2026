@echo off
REM Disassemble ONLY executable code chunks (not data/resources)
REM Based on analysis of decompiled C file sizes

set OUTPUT_DIR=c:\Projects\Zeliard\assembly_output
set BASE_DIR=c:\Projects\Zeliard

REM Create output directories
mkdir "%OUTPUT_DIR%" 2>NUL
mkdir "%OUTPUT_DIR%\zelres1_chunks" 2>NUL
mkdir "%OUTPUT_DIR%\zelres2_chunks" 2>NUL
mkdir "%OUTPUT_DIR%\zelres3_chunks" 2>NUL

echo.
echo ========================================================================
echo Disassembling EXECUTABLE CODE ONLY (skipping data/resource chunks)
echo ========================================================================
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
REM ZELRES1 Chunks (EXECUTABLE CODE ONLY)
REM ==========================================
echo.
echo [ZELRES1 CHUNKS - Executable Code Only]
echo.

echo   chunk_00 (240KB - Main player code)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres1_extracted\chunk_00.bin" > "%OUTPUT_DIR%\zelres1_chunks\chunk_00.asm"

echo   chunk_02 (3KB - Player systems)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres1_extracted\chunk_02.bin" > "%OUTPUT_DIR%\zelres1_chunks\chunk_02.asm"

echo   chunk_04 (3.3KB - Player systems)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres1_extracted\chunk_04.bin" > "%OUTPUT_DIR%\zelres1_chunks\chunk_04.asm"

echo   chunk_06 (66KB - Major player systems)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres1_extracted\chunk_06.bin" > "%OUTPUT_DIR%\zelres1_chunks\chunk_06.asm"

echo   chunk_24 (3.8KB)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres1_extracted\chunk_24.bin" > "%OUTPUT_DIR%\zelres1_chunks\chunk_24.asm"

echo   chunk_30 (413 bytes)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres1_extracted\chunk_30.bin" > "%OUTPUT_DIR%\zelres1_chunks\chunk_30.asm"

echo       Created: 6 zelres1 executable chunks
echo       Skipped: 34 data/resource chunks

REM ==========================================
REM ZELRES2 Chunks (EXECUTABLE CODE ONLY)
REM ==========================================
echo.
echo [ZELRES2 CHUNKS - Executable Code Only]
echo.

echo   chunk_00 (135KB - Main systems)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_00.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_00.asm"

echo   chunk_01 (11KB - Combat)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_01.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_01.asm"

echo   chunk_02 (24KB - Damage/combat)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_02.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_02.asm"

echo   chunk_03 (23KB - Physics)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_03.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_03.asm"

echo   chunk_04 (20KB - Physics engine)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_04.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_04.asm"

echo   chunk_05 (25KB - Enemy AI)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_05.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_05.asm"

echo   chunk_06 (21KB - Enemy AI)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_06.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_06.asm"

echo   chunk_07-17 (Enemy behaviors)...
for %%c in (07 08 09 10 12 13 14 15 16 17) do (
    ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_%%c.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_%%c.asm" 2>NUL
)

echo   chunk_38-39 (Utilities)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_38.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_38.asm"
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres2_extracted\chunk_39.bin" > "%OUTPUT_DIR%\zelres2_chunks\chunk_39.asm"

echo       Created: 19 zelres2 executable chunks
echo       Skipped: 21 data/resource chunks

REM ==========================================
REM ZELRES3 Chunks (EXECUTABLE CODE ONLY)
REM ==========================================
echo.
echo [ZELRES3 CHUNKS - Executable Code Only]
echo.

echo   chunk_00 (3KB - Level loader)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres3_extracted\chunk_00.bin" > "%OUTPUT_DIR%\zelres3_chunks\chunk_00.asm"

echo   chunk_14 (7.3KB - Level code)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres3_extracted\chunk_14.bin" > "%OUTPUT_DIR%\zelres3_chunks\chunk_14.asm"

echo   chunk_16 (352 bytes)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres3_extracted\chunk_16.bin" > "%OUTPUT_DIR%\zelres3_chunks\chunk_16.asm"

echo   chunk_31 (375 bytes)...
ndisasm -b 16 -o 0 "%BASE_DIR%\zelres3_extracted\chunk_31.bin" > "%OUTPUT_DIR%\zelres3_chunks\chunk_31.asm"

echo       Created: 4 zelres3 executable chunks
echo       Skipped: 36 data/resource chunks (graphics, maps, etc.)

REM ==========================================
REM Summary
REM ==========================================
echo.
echo ========================================================================
echo Disassembly Complete!
echo ========================================================================
echo.
echo Output directory: %OUTPUT_DIR%
echo.
echo EXECUTABLE CODE disassembled:
echo   - 7 main game/graphics files
echo   - 6 zelres1 core player code chunks
echo   - 19 zelres2 combat/AI/physics chunks
echo   - 4 zelres3 level code chunks
echo.
echo Total: 36 assembly files (CODE ONLY)
echo.
echo DATA/RESOURCE chunks skipped: 91 chunks
echo   (These contain sprites, graphics, maps, sound data, etc.)
echo   (Use extracted assets in ZeliardModern/Content instead)
echo.
echo ========================================================================
echo PRIORITY FOR MONOGAME PORTING:
echo ========================================================================
echo.
echo *** START HERE ***
echo   1. game.asm - Main game loop and orchestration
echo   2. zelres1_chunks/chunk_00.asm - CRITICAL - Main player code (240KB)
echo   3. zelres2_chunks/chunk_00.asm - CRITICAL - Main systems (135KB)
echo.
echo *** HIGH PRIORITY ***
echo   4. zelres2_chunks/chunk_02.asm - Damage calculation
echo   5. zelres2_chunks/chunk_04.asm - Physics engine
echo   6. zelres2_chunks/chunk_05-06.asm - Enemy AI
echo   7. zelres1_chunks/chunk_06.asm - Player systems (66KB)
echo.
echo *** MEDIUM PRIORITY ***
echo   8. zelres2_chunks/chunk_01.asm - Combat systems
echo   9. zelres2_chunks/chunk_03.asm - Physics
echo   10. zelres2_chunks/chunk_07-17.asm - Enemy behaviors
echo.
echo *** LOW PRIORITY ***
echo   11. zelres3_chunks/*.asm - Level code (less critical)
echo   12. Graphics mode files - Reference only
echo.
echo Next: Read ASSEMBLY_REFERENCE_GUIDE.md for usage instructions
echo.

pause
