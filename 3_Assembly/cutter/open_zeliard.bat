@echo off
setlocal

set CUTTER=C:\Projects\Zeliard\3_Assembly\cutter\tool\cutter.exe
set BASE=C:\Projects\Zeliard

echo Zeliard - Open in Cutter
echo.
echo Choose binary to analyze:
echo   1. zeliad.exe        (main loader, 3KB - start here)
echo   2. main_game_loop    (zelres2 chunk_00, 16KB - 172 functions)
echo   3. physics_engine    (zelres2 chunk_04, 8.7KB)
echo   4. enemy_ai          (zelres2 chunk_06, 8.8KB)
echo   5. opening_scene     (zelres1 chunk_00, 13.5KB)
echo   6. player_advanced   (zelres1 chunk_06, 12KB)
echo   7. gmmcga driver     (graphics driver, 32KB)
echo.
set /p CHOICE=Enter number (1-7):

if "%CHOICE%"=="1" set FILE=%BASE%\1_OriginalGame\zeliad.exe
if "%CHOICE%"=="2" set FILE=%BASE%\2_SAR\ExtractedChunks\zelres2_extracted\chunk_00.bin
if "%CHOICE%"=="3" set FILE=%BASE%\2_SAR\ExtractedChunks\zelres2_extracted\chunk_04.bin
if "%CHOICE%"=="4" set FILE=%BASE%\2_SAR\ExtractedChunks\zelres2_extracted\chunk_06.bin
if "%CHOICE%"=="5" set FILE=%BASE%\2_SAR\ExtractedChunks\zelres1_extracted\chunk_00.bin
if "%CHOICE%"=="6" set FILE=%BASE%\2_SAR\ExtractedChunks\zelres1_extracted\chunk_06.bin
if "%CHOICE%"=="7" set FILE=%BASE%\3_Assembly\tasm\working\drivers\gmmcga.asm

if not defined FILE (
    echo Invalid choice.
    pause
    exit /b 1
)

echo.
echo Opening: %FILE%
echo.
echo TIPS for Zeliard analysis in Cutter:
echo  - Set Architecture: x86, Bits: 16, OS: dos
echo  - View: Decompiler panel (uses rz-ghidra)
echo  - Edit > Preferences > Decompiler: rz-ghidra
echo  - For .bin chunks: load address = 0x0000 (zero start)
echo  - Use Analysis menu to re-analyze after load
echo.

"%CUTTER%" "%FILE%"
