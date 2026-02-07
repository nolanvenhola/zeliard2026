# Test RLE decoding on file_016.bin
$bytes = [System.IO.File]::ReadAllBytes('extracted_zelres1/file_016.bin')

Write-Host "File size: $($bytes.Length) bytes"
Write-Host "First 6 bytes (header): $([BitConverter]::ToUInt16($bytes, 0)) x $([BitConverter]::ToUInt16($bytes, 2))"

# Decode RLE
$decoded = @()
$i = 6  # Skip 6-byte header

while ($i -lt $bytes.Length) {
    $b = $bytes[$i++]

    if ($b -eq 0xFC -and $i + 1 -lt $bytes.Length) {
        # RLE: FC [count] [value]
        $count = $bytes[$i++]
        $value = $bytes[$i++]
        for ($j = 0; $j -lt $count; $j++) {
            $decoded += $value
        }
    } else {
        $decoded += $b
    }
}

Write-Host "Decoded size: $($decoded.Count) tiles"
Write-Host "Map dimensions: $([Math]::Sqrt($decoded.Count)) x $([Math]::Sqrt($decoded.Count))"

# Count unique tile types
$unique = $decoded | Sort-Object -Unique
Write-Host "Unique tile values: $($unique.Count)"
Write-Host "Tile values: $($unique -join ', ')"

# Show first 100 tiles as grid
Write-Host "`nFirst 100 tiles:"
for ($y = 0; $y -lt 10; $y++) {
    $line = ""
    for ($x = 0; $x -lt 10; $x++) {
        $idx = $y * 10 + $x
        if ($idx -lt $decoded.Count) {
            $tile = $decoded[$idx]
            if ($tile -eq 0) { $line += "." }
            elseif ($tile -lt 10) { $line += $tile }
            else { $line += "#" }
        }
    }
    Write-Host $line
}
