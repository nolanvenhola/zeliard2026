# Batch decompile all SAR chunks with progress tracking

$archives = @("zelres1", "zelres2", "zelres3")
$totalChunks = 120
$completed = 0

foreach ($archive in $archives) {
    Write-Host "`n=== Decompiling $archive chunks ===" -ForegroundColor Cyan

    $chunks = Get-ChildItem "${archive}_extracted\*.bin" | Sort-Object Name

    foreach ($chunk in $chunks) {
        $chunkName = $chunk.BaseName
        $completed++

        Write-Host "[$completed/$totalChunks] Processing $chunkName..." -ForegroundColor Yellow

        # Run Ghidra headless decompilation
        $null = & ".\ghidra\support\analyzeHeadless.bat" `
            "ghidra_projects" "ZeliardChunks" `
            "-import" $chunk.FullName `
            "-loader" "BinaryLoader" `
            "-processor" "x86:LE:16:Real Mode" `
            "-postScript" "AnalyzeAndExport.java" `
            "-noanalysis" 2>&1

        # Check if decompiled file was created (include archive name to avoid overwrites)
        $decompiledFile = "${chunkName}_decompiled.c"
        $renamedFile = "${archive}_${chunkName}_decompiled.c"

        if (Test-Path $decompiledFile) {
            Move-Item -Force $decompiledFile $renamedFile
            $lines = (Get-Content $renamedFile).Count
            Write-Host "  [OK] Created $renamedFile ($lines lines)" -ForegroundColor Green
        } else {
            Write-Host "  [FAIL] Failed to create $decompiledFile" -ForegroundColor Red
        }
    }
}

Write-Host "`n=== Decompilation Complete! ===" -ForegroundColor Green
Write-Host "Total chunks processed: $completed"
Write-Host "`nGenerating summary..."

# Count results
$allDecompiled = Get-ChildItem "zelres*_chunk_*_decompiled.c"
$totalLines = 0
foreach ($file in $allDecompiled) {
    $totalLines += (Get-Content $file.FullName).Count
}

Write-Host "`nResults:"
Write-Host "  Files created: $($allDecompiled.Count)"
Write-Host "  Total lines of C code: $totalLines"
