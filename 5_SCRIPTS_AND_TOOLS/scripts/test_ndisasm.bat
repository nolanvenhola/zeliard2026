@echo off
REM Quick test to verify ndisasm is in PATH

echo Testing ndisasm availability...
echo.

ndisasm -v 2>NUL
if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo SUCCESS! ndisasm is available
    echo ========================================
    echo.
    echo You can now run: disassemble_code_only.bat
    echo.
) else (
    echo.
    echo ========================================
    echo ERROR: ndisasm not found in PATH
    echo ========================================
    echo.
    echo Please reload VS Code:
    echo   1. Press Ctrl+Shift+P
    echo   2. Type "Reload Window"
    echo   3. Select "Developer: Reload Window"
    echo.
    echo Then run this test again.
    echo.
)

pause
