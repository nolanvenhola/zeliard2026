@echo off
cd /d "%~dp0"

echo ========================================
echo Installing Unicorn Engine...
echo ========================================
pip install unicorn-engine
echo.

echo ========================================
echo Running Constant Extraction...
echo ========================================
python extract_constants.py
echo.

echo ========================================
echo Done! Press any key to close...
echo ========================================
pause
