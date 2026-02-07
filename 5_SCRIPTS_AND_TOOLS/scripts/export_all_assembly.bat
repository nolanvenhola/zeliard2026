@echo off
REM Export assembly from all Ghidra projects

set GHIDRA_HOME=c:\Projects\Zeliard\ghidra
set PROJECT_DIR=c:\Projects\Zeliard\ghidra_projects
set SCRIPT_FILE=c:\Projects\Zeliard\export_assembly.py
set OUTPUT_DIR=c:\Projects\Zeliard\assembly_output

echo Creating output directory...
mkdir "%OUTPUT_DIR%" 2>NUL

echo.
echo ========================================
echo Exporting Assembly from Ghidra Projects
echo ========================================
echo.

REM Export game.bin (main game code)
echo Exporting: ZeliardBin project (game.bin)
call "%GHIDRA_HOME%\support\analyzeHeadless.bat" "%PROJECT_DIR%" ZeliardBin -process game.bin -postScript "%SCRIPT_FILE%" -noanalysis

REM Export zelres1 chunks
echo.
echo Exporting: zelres1 project
call "%GHIDRA_HOME%\support\analyzeHeadless.bat" "%PROJECT_DIR%" zelres1Project -postScript "%SCRIPT_FILE%" -noanalysis

REM Export zelres2 chunks
echo.
echo Exporting: zelres2 project
call "%GHIDRA_HOME%\support\analyzeHeadless.bat" "%PROJECT_DIR%" zelres2Project -postScript "%SCRIPT_FILE%" -noanalysis

REM Export zelres3 chunks
echo.
echo Exporting: zelres3 project
call "%GHIDRA_HOME%\support\analyzeHeadless.bat" "%PROJECT_DIR%" zelres3Project -postScript "%SCRIPT_FILE%" -noanalysis

echo.
echo ========================================
echo Assembly export complete!
echo Output directory: %OUTPUT_DIR%
echo ========================================
echo.

pause
