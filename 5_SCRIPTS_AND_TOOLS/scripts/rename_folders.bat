@echo off
REM Rename folders to match new naming scheme

echo ========================================
echo Renaming Folders
echo ========================================
echo.

echo Attempting to rename: zeliard2026 -^> COMPILED_C
echo.

REM Try to rename
ren "zeliard2026" "COMPILED_C" 2>NUL

if exist "COMPILED_C" (
    echo SUCCESS: Renamed to COMPILED_C
) else (
    echo.
    echo ERROR: Could not rename zeliard2026
    echo.
    echo Possible causes:
    echo   - Folder is open in VS Code/CLion
    echo   - CMake build process is running
    echo   - Files are in use
    echo.
    echo Solutions:
    echo   1. Close VS Code and CLion
    echo   2. Stop any CMake processes
    echo   3. Run this script again
    echo.
    goto end
)

echo.
echo Attempting to rename: ZeliardModern -^> MONOGAME_CS
echo.

ren "ZeliardModern" "MONOGAME_CS" 2>NUL

if exist "MONOGAME_CS" (
    echo SUCCESS: Renamed to MONOGAME_CS
) else (
    echo WARNING: Could not rename ZeliardModern
    echo ^(This folder might also be in use^)
)

echo.
echo ========================================
echo Rename Complete
echo ========================================
echo.

:end
pause
