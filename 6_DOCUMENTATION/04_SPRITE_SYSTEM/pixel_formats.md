# Gameplay Sprite Pixel Format

## Overview

Gameplay sprites (zelres2 chunks 18-35) use a **6-bit packed pixel format** - 3 bytes encode 4 pixels.

## Format Specification

### Layout Discovery (2025-02-08)

**Structure:**
- **8 animation frames** per row (NOT 7 as previously thought)
- **No 6-byte header** per row
- **Direct packed pixel data**
- **16 pixels wide** per frame
- **Multiple animation sets** stacked vertically

### Packed 6-Bit Encoding

```
3 bytes = 4 pixels × 6 bits

Byte 0: [P0-high 6 bits]
Byte 1: [P0-low 2 bits][P1 6 bits]
Byte 2: [P2 6 bits][P3 2 bits]

Each pixel = 6-bit palette index (0-63)
```

**Unpacking Algorithm:**
```csharp
byte[] row = new byte[48]; // 8 frames × 6 bytes

for (int frame = 0; frame < 8; frame++) {
    int offset = frame * 6;  // 6 bytes per frame

    // Unpack 4 pixels from 3 bytes
    byte b0 = row[offset + 0];
    byte b1 = row[offset + 1];
    byte b2 = row[offset + 2];

    byte p0 = (byte)((b0 >> 2) & 0x3F);           // Bits 7-2
    byte p1 = (byte)(((b0 & 0x03) << 4) | (b1 >> 4)); // Bits 1-0, 7-4
    byte p2 = (byte)(((b1 & 0x0F) << 2) | (b2 >> 6)); // Bits 3-0, 7-6
    byte p3 = (byte)(b2 & 0x3F);                   // Bits 5-0

    pixels[x++] = p0;
    pixels[x++] = p1;
    pixels[x++] = p2;
    pixels[x++] = p3;
}
```

## Previous Attempts (Incorrect)

### ❌ Attempt 1: 3-Plane 2-Bit (Bitplane)
- **Theory**: EGA-style 3 bitplanes × 2 bytes = 16 pixels
- **Result**: Produced gibberish
- **Problem**: Not a bitplane format

### ❌ Attempt 2: Raw 6-Bit Indices
- **Theory**: Direct palette indices, 1 byte per pixel
- **Result**: Wrong colors, wrong layout
- **Problem**: Not accounting for packing

### ❌ Attempt 3: 7 Frames + 6-Byte Header
- **Theory**: Row starts with metadata, 7 animation frames
- **Result**: Off-by-one errors, misaligned sprites
- **Problem**: No header, 8 frames not 7

## Decompression Pipeline

### Stage 1: Format 6 RLE (SAR Chunk Loader)

**Before pixel decoding**, chunks are RLE-compressed:

```
Prefix table:
  [match_byte, replace_byte] pairs
  0xFFFF terminator

Data stream:
  If byte == match_byte: replace with replace_byte
  Else: use byte as-is
```

Implemented in `SpriteExtractor.DecompressFormat6()`

### Stage 2: Pixel Unpacking

After decompression, unpack 6-bit pixels:

```csharp
byte[] decompressed = DecompressFormat6(chunk);

// Decompressed data is 48-byte rows
for (int row = 0; row < height; row++) {
    byte[] rowData = decompressed[row * 48..(row + 1) * 48];

    for (int frame = 0; frame < 8; frame++) {
        Unpack6BitPixels(rowData, frame * 6, frameBuffer);
    }
}
```

## Frame Layout

### Per Animation Set

```
Row 0: [Frame 0][Frame 1][Frame 2][Frame 3][Frame 4][Frame 5][Frame 6][Frame 7]
Row 1: [Frame 0][Frame 1][Frame 2][Frame 3][Frame 4][Frame 5][Frame 6][Frame 7]
Row 2: [Frame 0][Frame 1][Frame 2][Frame 3][Frame 4][Frame 5][Frame 6][Frame 7]
...

Each frame: 16 pixels wide (4 × 4 pixels from 6 bytes)
Each row: 48 bytes (8 frames × 6 bytes)
```

### Typical Dimensions

- **Player character**: 16×32 pixels, 8 frames (walk cycle)
- **Small enemies**: 16×16 pixels, 8 frames
- **Large bosses**: 32×32 pixels (2×2 frame grid)

## Implementation Status

### Current (SpriteRenderer.cs)

```csharp
public static Texture2D RenderSprites(
    byte[] decompressed,
    Color[] palette,
    int width = 128,  // 8 frames × 16 pixels
    int height = 200  // Multiple animation sets
)
{
    for (int y = 0; y < height; y++) {
        byte[] rowData = GetRow(decompressed, y);

        for (int frame = 0; frame < 8; frame++) {
            int offset = frame * 6;
            int pixelX = frame * 16;

            // Unpack 4 pixels × 4 times = 16 pixels
            for (int px = 0; px < 16; px += 4) {
                var pixels = Unpack6Bit(
                    rowData[offset++],
                    rowData[offset++],
                    rowData[offset++]
                );

                for (int i = 0; i < 4; i++) {
                    byte colorIndex = pixels[i];
                    texture.SetPixel(
                        pixelX + px + i,
                        y,
                        palette[colorIndex]
                    );
                }
            }
        }
    }
}
```

### Test Results

✅ **Correct dimensions**: 128×200 (8 frames × 16 pixels wide)
✅ **Animation frames visible**: 8 distinct frames per row
⚠️ **Colors**: Partially correct but needs palette refinement
❌ **Transparency**: Need to identify transparent index (0? 63?)

## Verification

### Against DOSBox Memory Dump

Sprite data loaded at segment 19FC:
- chunk_26 → 19FC:0xB02A
- chunk_27 → 19FC:0xE290
- chunk_29 → 19FC:0x4000
- chunk_33 → 19FC:0x8030
- chunk_34 → 19FC:0x804B

**Test:**
1. Decompress chunk in C#
2. Compare first 48 bytes against 19FC:offset in DOSBox
3. Verify byte-for-byte match ✅

### Against Spriters Resource

Downloaded Sharp X1 sprites (73 assets):
- `Resources/SpritersResource/Sprites/Duke_Garland.png`
- `Resources/SpritersResource/Sprites/Area1_Enemies.png`

**Comparison:**
- Sharp X1 sprites show 8-frame layout
- Colors differ (different palette)
- Dimensions match our decode

## Related Files

- `MONOGAME_AUTHENTIC/Core/SpriteRenderer.cs` - 6-bit pixel decoder
- `MONOGAME_AUTHENTIC/Core/SpriteExtractor.cs` - Format 6 RLE
- `MONOGAME_AUTHENTIC/Scenes/ChunkExplorer.cs` - Test viewer (mode 19/20)
- `2_EXTRACTED_CHUNKS/zelres2_extracted/chunk_18.bin` - First sprite set
- `Resources/SpritersResource/Sprites/` - Reference sprites

## Remaining Mysteries

1. **Exact palette**: Which 64 colors for gameplay?
2. **Transparency**: Which index (0 or 63)?
3. **Frame timing**: How fast do animations play?
4. **Sprite metadata**: How does engine know frame count/dimensions?
5. **Hit boxes**: Where are collision bounds stored?

## Next Steps

- [ ] Extract correct gameplay palette
- [ ] Implement transparency
- [ ] Add animation player
- [ ] Decode sprite metadata (chunk headers?)
- [ ] Map all 18 sprite chunks to entities
