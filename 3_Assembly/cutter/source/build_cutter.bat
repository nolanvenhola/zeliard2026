@echo off
setlocal
set SOURCE=%~dp0
set SOURCE=%SOURCE:~0,-1%
set BUILD=%SOURCE%\..\build
set TOOL=%SOURCE%\..\tool

call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat"
set PATH=C:\Qt\6.10.2\msvc2022_64\bin;C:\Qt\Tools\Ninja;C:\Users\nvenh\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.13_qbz5n2kfra8p0\LocalCache\local-packages\Python313\Scripts;%PATH%

echo === Configuring ===
echo   Source : %SOURCE%
echo   Build  : %BUILD%
echo   Install: %TOOL%
cmake -B "%BUILD%" -S "%SOURCE%" -G "Ninja" ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DCMAKE_PREFIX_PATH=C:\Qt\6.10.2\msvc2022_64 ^
  -DCMAKE_INSTALL_PREFIX="%TOOL%" ^
  -DCUTTER_USE_BUNDLED_RIZIN=ON ^
  -DCUTTER_ENABLE_PYTHON=OFF ^
  -DCUTTER_ENABLE_GRAPHVIZ=OFF ^
  -DCUTTER_ENABLE_KSYNTAXHIGHLIGHTING=OFF ^
  -DCUTTER_ENABLE_DEPENDENCY_DOWNLOADS=ON ^
  -DCUTTER_ENABLE_PACKAGING=ON ^
  -DCUTTER_PACKAGE_RZ_GHIDRA=ON
if %ERRORLEVEL% NEQ 0 ( echo CONFIGURE FAILED & exit /b %ERRORLEVEL% )

echo === Building ===
cmake --build "%BUILD%" --parallel
if %ERRORLEVEL% NEQ 0 ( echo BUILD FAILED & exit /b %ERRORLEVEL% )

echo === Installing to tool folder ===
cmake --install "%BUILD%"
if %ERRORLEVEL% NEQ 0 ( echo INSTALL FAILED & exit /b %ERRORLEVEL% )

echo === Deploying Qt DLLs ===
C:\Qt\6.10.2\msvc2022_64\bin\windeployqt.exe --release "%TOOL%\cutter.exe"

echo === Fixing plugin layout ===
if exist "%TOOL%\lib\rizin\plugins\rz_ghidra_cutter.dll" (
    if not exist "%TOOL%\plugins\native" mkdir "%TOOL%\plugins\native"
    move /Y "%TOOL%\lib\rizin\plugins\rz_ghidra_cutter.dll" "%TOOL%\plugins\native\rz_ghidra_cutter.dll"
    echo Moved rz_ghidra_cutter.dll to plugins\native\
)
if exist "%TOOL%\lib\rizin\plugins\core_ghidra.dll" (
    copy /Y "%TOOL%\lib\rizin\plugins\core_ghidra.dll" "%TOOL%\core_ghidra.dll"
    echo Copied core_ghidra.dll to tool root
)

echo === Done ===
