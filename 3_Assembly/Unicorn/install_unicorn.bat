@echo off
echo ========================================
echo Unicorn Engine Installation Script
echo ========================================
echo.

echo Checking Python installation...
python --version
if errorlevel 1 (
    echo ERROR: Python not found!
    echo Please install Python from python.org
    pause
    exit /b 1
)
echo.

echo Installing Unicorn Engine...
pip install unicorn-engine
if errorlevel 1 (
    echo ERROR: Failed to install Unicorn
    pause
    exit /b 1
)
echo.

echo Testing Unicorn installation...
python -c "from unicorn import *; print('✅ Unicorn Engine installed successfully!')"
if errorlevel 1 (
    echo ERROR: Unicorn import failed
    pause
    exit /b 1
)
echo.

echo ========================================
echo SUCCESS! Ready to extract constants
echo ========================================
echo.
echo Run: python extract_constants.py
echo.
pause
