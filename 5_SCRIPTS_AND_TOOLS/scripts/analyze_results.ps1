# Analyze all decompiled chunks

Write-Host "=== ZELIARD DECOMPILATION ANALYSIS ===" -ForegroundColor Cyan
Write-Host ""

# Analyze by archive
foreach ($archive in @("zelres1", "zelres2", "zelres3")) {
    Write-Host "--- $archive ---" -ForegroundColor Yellow

    $files = Get-ChildItem "${archive}_chunk_*_decompiled.c" | Sort-Object Name
    $totalLines = 0
    $codeChunks = @()

    foreach ($file in $files) {
        $lines = (Get-Content $file).Count
        $totalLines += $lines

        # Consider chunks with >100 lines as "code" vs "data"
        if ($lines -gt 100) {
            $chunkNum = $file.BaseName -replace '.*chunk_(\d+).*', '$1'
            $codeChunks += [PSCustomObject]@{
                Chunk = $chunkNum
                Lines = $lines
                File = $file.Name
            }
        }
    }

    Write-Host "  Total chunks: $($files.Count)"
    Write-Host "  Total lines: $totalLines"
    Write-Host "  Code chunks (>100 lines): $($codeChunks.Count)"

    if ($codeChunks.Count -gt 0) {
        Write-Host "  Major code chunks:"
        $codeChunks | Sort-Object -Property Lines -Descending | ForEach-Object {
            Write-Host ("    chunk_{0:D2}: {1,5} lines" -f [int]$_.Chunk, $_.Lines)
        }
    }
    Write-Host ""
}

# Top 10 largest chunks overall
Write-Host "--- TOP 10 LARGEST CHUNKS ---" -ForegroundColor Yellow
Get-ChildItem "zelres*_chunk_*_decompiled.c" | ForEach-Object {
    [PSCustomObject]@{
        File = $_.Name
        Lines = (Get-Content $_).Count
    }
} | Sort-Object -Property Lines -Descending | Select-Object -First 10 | ForEach-Object {
    Write-Host ("  {0,-40} {1,6} lines" -f $_.File, $_.Lines)
}

Write-Host ""
Write-Host "=== SUMMARY ===" -ForegroundColor Green
$allFiles = Get-ChildItem "zelres*_chunk_*_decompiled.c"
$grandTotal = ($allFiles | ForEach-Object { (Get-Content $_).Count } | Measure-Object -Sum).Sum
Write-Host "Total files: $($allFiles.Count)"
Write-Host "Total lines of decompiled C code: $grandTotal"
