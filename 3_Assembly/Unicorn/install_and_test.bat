@echo off
cd /d "%~dp0"

echo Installing Unicorn Engine...
echo Trying: pip install unicorn
pip install unicorn
if errorlevel 1 (
    echo.
    echo Trying alternative: pip install unicorn-engine
    pip install unicorn-engine
)

echo.
echo Testing installation...
python -c "from unicorn import *; print('SUCCESS: Unicorn installed!')"

echo.
pause
