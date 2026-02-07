@echo off
REM Disassemble all Zeliard binaries to assembly format
REM Run this after VS Code restart to pick up ndisasm in PATH

set OUTPUT_DIR=c:\Projects\Zeliard\assembly_output
mkdir "%OUTPUT_DIR%" 2>NUL

echo.
echo ========================================
echo Disassembling Zeliard Binaries
echo ========================================
echo.

echo [1/7] Disassembling game.bin (main game code)...
ndisasm -b 16 -o 0 c:\Projects\Zeliard\game.bin > "%OUTPUT_DIR%\game.asm"
echo       Created: game.asm (%OUTPUT_DIR%)

echo.
echo [2/7] Disassembling gmcga.bin (CGA graphics mode)...
ndisasm -b 16 -o 0 c:\Projects\Zeliard\gmcga.bin > "%OUTPUT_DIR%\gmcga.asm"
echo       Created: gmcga.asm

echo.
echo [3/7] Disassembling gmega.bin (EGA graphics mode)...
ndisasm -b 16 -o 0 c:\Projects\Zeliard\gmega.bin > "%OUTPUT_DIR%\gmega.asm"
echo       Created: gmega.asm

echo.
echo [4/7] Disassembling gmhgc.bin (Hercules graphics mode)...
ndisasm -b 16 -o 0 c:\Projects\Zeliard\gmhgc.bin > "%OUTPUT_DIR%\gmhgc.asm"
echo       Created: gmhgc.asm

echo.
echo [5/7] Disassembling gmmcga.bin (MCGA graphics mode)...
ndisasm -b 16 -o 0 c:\Projects\Zeliard\gmmcga.bin > "%OUTPUT_DIR%\gmmcga.asm"
echo       Created: gmmcga.asm

echo.
echo [6/7] Disassembling gmtga.bin (TGA/VGA graphics mode)...
ndisasm -b 16 -o 0 c:\Projects\Zeliard\gmtga.bin > "%OUTPUT_DIR%\gmtga.asm"
echo       Created: gmtga.asm

echo.
echo [7/7] Disassembling zeliad.exe (loader/entry point)...
ndisasm -b 16 -o 0x100 c:\Projects\Zeliard\zeliad.exe > "%OUTPUT_DIR%\zeliad.asm"
echo       Created: zeliad.asm (note: may include DOS EXE header as data)

echo.
echo ========================================
echo Disassembly Complete!
echo ========================================
echo.
echo Output directory: %OUTPUT_DIR%
echo.
echo Files created:
dir /b "%OUTPUT_DIR%\*.asm"
echo.
echo You can now examine the authentic assembly code
echo and use it as reference for MonoGame porting.
echo.

pause
