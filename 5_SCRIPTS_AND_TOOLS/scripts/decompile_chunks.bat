@echo off
REM Batch decompile all extracted SAR chunks

echo Decompiling zelres1 chunks...
for %%i in (zelres1_extracted\chunk_*.bin) do (
    echo Processing %%i...
    ghidra\support\analyzeHeadless.bat ghidra_projects ZeliardChunks -import "%%i" -loader BinaryLoader -processor "x86:LE:16:Real Mode" -postScript AnalyzeAndExport.java -noanalysis >nul 2>&1
)

echo.
echo Decompiling zelres2 chunks...
for %%i in (zelres2_extracted\chunk_*.bin) do (
    echo Processing %%i...
    ghidra\support\analyzeHeadless.bat ghidra_projects ZeliardChunks -import "%%i" -loader BinaryLoader -processor "x86:LE:16:Real Mode" -postScript AnalyzeAndExport.java -noanalysis >nul 2>&1
)

echo.
echo Decompiling zelres3 chunks...
for %%i in (zelres3_extracted\chunk_*.bin) do (
    echo Processing %%i...
    ghidra\support\analyzeHeadless.bat ghidra_projects ZeliardChunks -import "%%i" -loader BinaryLoader -processor "x86:LE:16:Real Mode" -postScript AnalyzeAndExport.java -noanalysis >nul 2>&1
)

echo.
echo Done! Decompiled C files are in the current directory.
