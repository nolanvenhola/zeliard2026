# Extract chunks from Zeliard SAR archive files

function Extract-SAR {
    param(
        [string]$SarFile,
        [string]$OutputDir
    )

    Write-Host "Processing $SarFile..."

    # Create output directory
    New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

    # Read entire file
    $data = [System.IO.File]::ReadAllBytes($SarFile)
    $fileSize = $data.Length

    # Read offset table (40 entries of 4 bytes each)
    $offsets = @()
    for ($i = 0; $i -lt 40; $i++) {
        $offset = [BitConverter]::ToUInt32($data, $i * 4)
        $offsets += $offset
    }

    Write-Host "  Found $($offsets.Count) offsets"

    # Extract each chunk
    for ($i = 0; $i -lt $offsets.Count; $i++) {
        $start = $offsets[$i]

        # Calculate end offset
        if ($i + 1 -lt $offsets.Count) {
            $end = $offsets[$i + 1]
        } else {
            $end = $fileSize
        }

        $chunkSize = $end - $start

        if ($chunkSize -le 0 -or $start -ge $fileSize) {
            Write-Host ("  Chunk {0:D2}: Invalid (offset=0x{1:X8}, size={2})" -f $i, $start, $chunkSize)
            continue
        }

        # Extract chunk
        $chunkData = $data[$start..($end-1)]

        $outputFile = Join-Path $OutputDir ("chunk_{0:D2}.bin" -f $i)
        [System.IO.File]::WriteAllBytes($outputFile, $chunkData)

        Write-Host ("  Chunk {0:D2}: offset=0x{1:X8}, size={2,6} bytes -> {3}" -f $i, $start, $chunkSize, $outputFile)
    }
}

# Extract all three SAR files
@("zelres1.sar", "zelres2.sar", "zelres3.sar") | ForEach-Object {
    if (Test-Path $_) {
        $baseName = [System.IO.Path]::GetFileNameWithoutExtension($_)
        $outputDir = "${baseName}_extracted"
        Extract-SAR -SarFile $_ -OutputDir $outputDir
        Write-Host ""
    } else {
        Write-Host "Warning: $_ not found"
    }
}
