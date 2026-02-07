# Simple decompilation - one archive at a time

function Decompile-Archive {
    param([string]$ArchiveName)

    Write-Host "`n=== Decompiling $ArchiveName ===" -ForegroundColor Cyan

    $chunks = Get-ChildItem "${ArchiveName}_extracted\*.bin" | Sort-Object Name
    $count = 0

    foreach ($chunk in $chunks) {
        $count++
        $chunkName = $chunk.BaseName
        Write-Host "[$count/$($chunks.Count)] $chunkName..." -NoNewline

        # Run Ghidra
        $null = & ".\ghidra\support\analyzeHeadless.bat" `
            "ghidra_projects" "${ArchiveName}Project" `
            "-import" $chunk.FullName `
            "-loader" "BinaryLoader" `
            "-processor" "x86:LE:16:Real Mode" `
            "-postScript" "AnalyzeAndExport.java" 2>&1

        # Rename output
        $oldName = "${chunkName}_decompiled.c"
        $newName = "${ArchiveName}_${chunkName}_decompiled.c"

        if (Test-Path $oldName) {
            Move-Item -Force $oldName $newName
            $lines = (Get-Content $newName).Count
            Write-Host " OK ($lines lines)" -ForegroundColor Green
        } else {
            Write-Host " FAILED" -ForegroundColor Red
        }
    }
}

# Process each archive
Decompile-Archive "zelres1"
Decompile-Archive "zelres2"
Decompile-Archive "zelres3"

Write-Host "`nDone! Counting results..." -ForegroundColor Green
$files = Get-ChildItem "zelres*_chunk_*_decompiled.c"
$total = ($files | ForEach-Object { (Get-Content $_).Count } | Measure-Object -Sum).Sum
Write-Host "Files: $($files.Count), Total lines: $total"
