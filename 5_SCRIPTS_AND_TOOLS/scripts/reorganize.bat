@echo off
REM Reorganize Zeliard project files into logical buckets

echo ========================================
echo Reorganizing Zeliard Project Files
echo ========================================
echo.

REM Create bucket directories
echo Creating directory structure...
mkdir "1_ORIGINAL_DOS" 2>NUL
mkdir "2_EXTRACTED_CHUNKS" 2>NUL
mkdir "3_DECOMPILED_C" 2>NUL
mkdir "4_ASSEMBLY_DISASSEMBLY" 2>NUL
mkdir "5_SCRIPTS_AND_TOOLS" 2>NUL
mkdir "5_SCRIPTS_AND_TOOLS\scripts" 2>NUL
mkdir "5_SCRIPTS_AND_TOOLS\ghidra_exports" 2>NUL
mkdir "6_DOCUMENTATION" 2>NUL
mkdir "7_LOGS" 2>NUL

echo.
echo [1/7] Moving original DOS binaries...
move /Y *.exe "1_ORIGINAL_DOS\" 2>NUL
move /Y *.com "1_ORIGINAL_DOS\" 2>NUL
move /Y *.bin "1_ORIGINAL_DOS\" 2>NUL
move /Y *.drv "1_ORIGINAL_DOS\" 2>NUL
move /Y *.sar "1_ORIGINAL_DOS\" 2>NUL
move /Y *.bat "1_ORIGINAL_DOS\" 2>NUL
move /Y *.cfg "1_ORIGINAL_DOS\" 2>NUL

echo [2/7] Moving extracted chunks...
move /Y zelres1_extracted "2_EXTRACTED_CHUNKS\" 2>NUL
move /Y zelres2_extracted "2_EXTRACTED_CHUNKS\" 2>NUL
move /Y zelres3_extracted "2_EXTRACTED_CHUNKS\" 2>NUL

echo [3/7] Moving decompiled C files...
move /Y *_decompiled.c "3_DECOMPILED_C\" 2>NUL
REM Note: zeliard2026 folder stays as-is (it's the build project)

echo [4/7] Moving assembly output...
move /Y assembly_output "4_ASSEMBLY_DISASSEMBLY\" 2>NUL
move /Y game_disassembly.asm "4_ASSEMBLY_DISASSEMBLY\" 2>NUL

echo [5/7] Moving scripts and tools...
move /Y *.ps1 "5_SCRIPTS_AND_TOOLS\scripts\" 2>NUL
move /Y *.py "5_SCRIPTS_AND_TOOLS\scripts\" 2>NUL
move /Y *.java "5_SCRIPTS_AND_TOOLS\scripts\" 2>NUL
move /Y disassemble*.bat "5_SCRIPTS_AND_TOOLS\scripts\" 2>NUL
move /Y decompile*.bat "5_SCRIPTS_AND_TOOLS\scripts\" 2>NUL
move /Y test*.bat "5_SCRIPTS_AND_TOOLS\scripts\" 2>NUL
move /Y export*.bat "5_SCRIPTS_AND_TOOLS\scripts\" 2>NUL
move /Y ghidra_projects "5_SCRIPTS_AND_TOOLS\" 2>NUL
REM Note: ghidra folder stays as-is (it's large)

echo [6/7] Moving documentation...
move /Y *.md "6_DOCUMENTATION\" 2>NUL

echo [7/7] Moving logs...
move /Y *.log "7_LOGS\" 2>NUL
move /Y nul "7_LOGS\" 2>NUL

echo.
echo ========================================
echo Reorganization Complete!
echo ========================================
echo.
echo New structure:
echo.
echo Zeliard\
echo   ├── 1_ORIGINAL_DOS\           ^(Original game files^)
echo   ├── 2_EXTRACTED_CHUNKS\       ^(Binary chunks from .sar^)
echo   ├── 3_DECOMPILED_C\           ^(Individual C files^)
echo   ├── 4_ASSEMBLY_DISASSEMBLY\   ^(Assembly .asm files^)
echo   ├── 5_SCRIPTS_AND_TOOLS\      ^(Scripts, tools, Ghidra^)
echo   ├── 6_DOCUMENTATION\          ^(All .md guides^)
echo   ├── 7_LOGS\                   ^(Build logs, errors^)
echo   ├── COMPILED_C\               ^(C compilation project^)
echo   ├── MONOGAME_CS\              ^(MonoGame C# project^)
echo   └── ghidra\                   ^(Ghidra installation^)
echo.

pause
