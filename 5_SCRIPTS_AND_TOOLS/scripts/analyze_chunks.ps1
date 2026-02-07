# Analyze chunk contents to identify their type

function Analyze-Chunk {
    param([string]$ChunkPath)

    $data = [System.IO.File]::ReadAllBytes($ChunkPath)
    $size = $data.Length
    $name = Split-Path -Leaf $ChunkPath

    # Check first 64 bytes for patterns
    $header = $data[0..[Math]::Min(63, $size-1)]

    # Detect content type
    $type = "Unknown"
    $confidence = "Low"

    # Check for x86 code patterns (common opcodes at start)
    $codeOpcodes = @(0x55, 0x8B, 0xB8, 0x89, 0x50, 0x51, 0x52, 0x53, 0xE8, 0xC3, 0x2E, 0x8C)
    $codeCount = 0
    foreach ($opcode in $codeOpcodes) {
        if ($header -contains $opcode) { $codeCount++ }
    }

    if ($codeCount -ge 5) {
        $type = "CODE"
        $confidence = "High"
    }

    # Check for high entropy (compressed/encrypted data)
    $unique = ($header | Sort-Object -Unique).Count
    if ($unique -gt 50 -and $size -gt 10000) {
        $type = "DATA/GRAPHICS"
        $confidence = "Medium"
    }

    # Check for ASCII strings (game text, dialogue)
    $asciiCount = 0
    foreach ($byte in $header) {
        if ($byte -ge 0x20 -and $byte -le 0x7E) { $asciiCount++ }
    }

    if ($asciiCount -gt 40) {
        $type = "TEXT/STRINGS"
        $confidence = "High"
    }

    # Check for repetitive patterns (graphics/map data)
    $zeros = ($header | Where-Object { $_ -eq 0 }).Count
    if ($zeros -gt 40) {
        $type = "SPARSE DATA"
        $confidence = "Medium"
    }

    # Very large chunks are likely graphics/music
    if ($size -gt 50000) {
        $type = "LARGE DATA (Graphics/Music)"
        $confidence = "High"
    }

    # Check for sound data patterns
    if ($size -gt 5000 -and $size -lt 30000 -and $unique -gt 45) {
        $type = "SOUND/MUSIC"
        $confidence = "Low"
    }

    # Create hex preview
    $hexPreview = ($header[0..15] | ForEach-Object { "{0:X2}" -f $_ }) -join " "

    [PSCustomObject]@{
        Chunk = $name
        Size = $size
        Type = $type
        Confidence = $confidence
        HexStart = $hexPreview
    }
}

Write-Host "=== ZELRES1 ANALYSIS ===" -ForegroundColor Cyan
Write-Host ""
Get-ChildItem "zelres1_extracted\*.bin" | ForEach-Object {
    Analyze-Chunk $_.FullName
} | Format-Table -AutoSize

Write-Host ""
Write-Host "=== ZELRES2 ANALYSIS ===" -ForegroundColor Cyan
Write-Host ""
Get-ChildItem "zelres2_extracted\*.bin" | ForEach-Object {
    Analyze-Chunk $_.FullName
} | Format-Table -AutoSize

Write-Host ""
Write-Host "=== ZELRES3 ANALYSIS ===" -ForegroundColor Cyan
Write-Host ""
Get-ChildItem "zelres3_extracted\*.bin" | ForEach-Object {
    Analyze-Chunk $_.FullName
} | Format-Table -AutoSize
