# Title Logo Implementation - Assembly Analysis Complete

## What I Implemented

Based on thorough assembly code tracing, I've implemented the title logo rendering pipeline:

### Assembly Functions Traced

1. **Stage 2a: Bitmap Decompressor (CS:0xD67)**
   - Control bits expand to full bitmap
   - 0 bit = zero byte, 1 bit = literal byte
   - Already implemented in `BitmapDecompress()`

2. **Stage 2b: XOR Differential Decoder (CS:0xD91)**
   - Extracts 2-bit pairs from bitplanes
   - XOR differential on running state (DH register)
   - Already implemented in `XorDifferentialDecode()`

3. **Image Renderer (CS:0xE71)**
   - Stride = 0x22 (34 bytes) per row
   - BX = (row << 8) | column for positioning
   - CX = (height << 8) | width for dimensions
   - **Not yet implemented** - need exact positions for chunks 30-32

### New Function: `RenderTitleLogo()`

Located in `GrpDecoder.cs`, this function:
- Loads chunks 30-32 (ttl1-3.grp)
- Decompresses each through the full pipeline
- Outputs diagnostic information
- Creates decompressed .bin files for inspection
- Attempts to composite them into a single logo texture

### Diagnostic Output

When you run the game and reach the title screen, you'll see:
```
=== Loading Zeliard Title Logo ===
Chunk 30: 2835 bytes, format=0x00
  → Decompressed to XXXX bytes
  → First 32 bytes: [hex dump]
  → Possible dimensions: [widths]x[heights]
  → Saved to chunk_30_decompressed.bin
Chunk 31: 7803 bytes, format=0x00
  [same diagnostic info]
Chunk 32: 6903 bytes, format=0x06
  [same diagnostic info]
```

## What to Test

### 1. Run the game and navigate to Title Screen
```bash
cd MONOGAME_AUTHENTIC
dotnet run
```
- Wait for Opening scene to finish (or press ENTER to skip)
- Title screen will attempt to load the logo
- Check console output for diagnostic messages

### 2. Examine Decompressed Files

Three files will be created:
- `chunk_30_decompressed.bin`
- `chunk_31_decompressed.bin`
- `chunk_32_decompressed.bin`

Compare these with the VGA framebuffer dump `MEMDUMP_logo.BIN`:
- Open in hex editor
- Check if byte values make sense (0x00-0x3F for gameplay palette)
- Look for patterns that might indicate image data

### 3. Compare with DOSBox Memory

You can use DOSBox-X to dump the decompressed chunk data:
1. Set breakpoint at CS:0xD91 (after bitmap decompress)
2. Dump memory at ES:DI
3. Compare with our decompressed output

## Expected Results

Based on format bytes:
- **Chunk 30 (format 0x00)**: Skip stage 1, run stage 2 (bitmap + XOR)
- **Chunk 31 (format 0x00)**: Skip stage 1, run stage 2 (bitmap + XOR)
- **Chunk 32 (format 0x06)**: Run stage 1 (table RLE) + stage 2 (bitmap + XOR)

After decompression, each chunk should contain bitplane data that needs to be:
1. Interpreted as 3-plane format (based on assembly at CS:0xE71)
2. Positioned at specific screen coordinates
3. Rendered to create the full logo

## Next Steps

1. **Verify decompression works** - check the .bin files
2. **Determine image format** - are they direct palette indices or bitplane?
3. **Find chunk positions** - search assembly for where chunks 30-32 are rendered
4. **Implement positioning** - use the CS:0xE71 renderer logic
5. **Test against MEMDUMP_logo.BIN** - final composited result should match

## Key Assembly Reference

See `6_DOCUMENTATION/TITLE_LOGO_RENDERING.md` for complete assembly analysis.

Critical assembly addresses:
- **0xD67**: Bitmap decompressor
- **0xD91**: XOR differential decoder
- **0xE71**: Image renderer with positioning
- **0x3010**: Graphics driver composite function
