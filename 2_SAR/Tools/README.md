# SAR Archive Extraction Tools

Tools for extracting Zeliard's custom `.sar` archive format.

## Available Tools

### Python Script (Recommended)
**extract_sar.py** - Python script for extracting SAR archives
```bash
python extract_sar.py <path-to-sar-file>
```

Example:
```bash
python extract_sar.py ../../1_OriginalGame/zelres1.sar
```

### PowerShell Script
**extract_sar.ps1** - Windows PowerShell extraction script
```powershell
.\extract_sar.ps1 <path-to-sar-file>
```

## SAR Format Overview

The SAR (Sierra Archive) format is a custom container format used by Zeliard:

- **Header**: Contains chunk count and offset table
- **Chunks**: Individual binary data blocks (code, graphics, levels, etc.)
- **Compression**: Some chunks use format-specific RLE compression

## Extracted Chunks

After extraction, chunks are saved as `chunk_XX.bin` files in:
- `../ExtractedChunks/zelres1_extracted/` - 40 chunks
- `../ExtractedChunks/zelres2_extracted/` - 40 chunks
- `../ExtractedChunks/zelres3_extracted/` - 40 chunks

## Chunk Format

Each extracted `.bin` file contains:
- **Byte 5**: Format identifier (0=raw, 5/7=escape RLE, 6=table RLE)
- **Data**: Binary chunk data (code, graphics, or game data)

See `../Documentation/` for detailed chunk analysis.

## Dependencies

### Python Script
- Python 3.7+
- No external dependencies (uses only stdlib)

### PowerShell Script
- Windows PowerShell 5.1+ or PowerShell Core 7+
