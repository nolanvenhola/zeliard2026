# VGA Palette System

## Overview

Zeliard uses **scene-specific VGA palettes**, not a fixed 27-color MCGA cube. Each scene (opening, gameplay, towns) has its own 64-color palette loaded dynamically.

## Palette Architecture

### VGA DAC Registers
- **256 palette entries** (0x00-0xFF)
- **Each entry**: 6-bit RGB (0-63 per channel)
- **Game uses**: First 64 entries (0x00-0x3F)

### Palette Switching
```assembly
mov ax, N              ; N = palette index (1-4)
call [cs:0x3008]       ; Graphics driver function 4
```

## Scene Palettes

### Gameplay Palette (Scene 2)
- **Entries**: 0x00-0x3F (64 colors)
- **Source**: COMPUTED by gmmcga driver code (not stored in data)
- **Verified**: DOSBox capture `Scene2.BIN` matches `Scene2.png`
- **Used by**: Main gameplay, caverns, combat

**Key Colors:**
- Flesh tones for player character
- Blue/purple for cavern rocks
- Green for vegetation
- Red/orange for enemies

### Opening Palette (Scene 1)
- **Entries**: 0x00-0x3F (64 colors)
- **Source**: Encoded in zelres1/chunk_05 at offset 0x128D
- **Verified**: DOSBox capture `SCENE1.BIN` matches `Scene1Game.png`
- **Used by**: Intro sequence, story text, character portraits

**Differences from gameplay:**
- Warmer tones for character art
- Different blues for backgrounds
- More saturated colors for dramatic effect

### Palette Storage Format

Palettes stored in gmmcga driver's encoded format:

```
For each color (64 entries):
  byte R (6-bit, 0-63)
  byte G (6-bit, 0-63)
  byte B (6-bit, 0-63)
```

Location: `zelres1/chunk_05` at offset 0x128D

## Implementation Status

### C# Port (DOSPalette.cs)

**Old (Incorrect):**
```csharp
// Fixed 27-color MCGA cube - WRONG!
static Color[] palette = GenerateMCGAPalette();
```

**Current (Correct):**
```csharp
// Scene-specific palettes loaded from data
public static Color[] GameplayPalette { get; private set; }
public static Color[] OpeningPalette { get; private set; }

public static void LoadPalette(byte[] paletteData)
{
    // Read 64 × 3 bytes (R, G, B)
    // Scale 6-bit (0-63) to 8-bit (0-255)
}
```

## Palette Extraction

### From DOSBox Captures

1. **Capture VGA framebuffer**:
   ```
   MEMDUMPBIN A000:0000 FA00
   ```

2. **Screenshot in-game**:
   - DOSBox Capture folder: `DOSBOX DUMPS/`
   - Files: `Scene1Game.png`, `Scene2.png`

3. **Extract palette**:
   - Use image editor to sample colors
   - Compare against memory dump at A000:0000

### From Binary Data

Using `GrpDecoder.cs`:
```csharp
// Read palette from chunk_05
byte[] chunk05 = LoadChunk(1, 5); // zelres1, chunk 5
int offset = 0x128D;

for (int i = 0; i < 64; i++) {
    byte r = chunk05[offset++];  // 6-bit
    byte g = chunk05[offset++];  // 6-bit
    byte b = chunk05[offset++];  // 6-bit

    palette[i] = new Color(
        (r * 255) / 63,
        (g * 255) / 63,
        (b * 255) / 63
    );
}
```

## Verification

### Test Methodology

1. **Load palette in C#**
2. **Render known image** (opening scene background)
3. **Compare pixel-perfect** against DOSBox screenshot
4. **Adjust if colors don't match**

### Known Issues

- **Gameplay palette**: Not yet extracted (computed by driver code)
- **Palette timing**: When exactly does switching occur?
- **Fade effects**: Are there palette animations?

## Related Files

- `MONOGAME_AUTHENTIC/Core/DOSPalette.cs` - Palette management
- `MONOGAME_AUTHENTIC/Core/GrpDecoder.cs` - Palette loading
- `2_EXTRACTED_CHUNKS/zelres1_extracted/chunk_05.bin` - Palette data
- `DOSBOX DUMPS/SCENE1.BIN` - Opening scene VGA dump
- `DOSBOX DUMPS/Scene2.BIN` - Gameplay VGA dump

## Assembly Reference

### Palette Encoder (gmmcga at 0x748)
- Encodes 6-bit RGB to VGA DAC format
- Uses 3-plane × 2-bit encoding
- Handles 64 colors (0x40 entries)

### Driver Function Table
```assembly
[cs:0x3000] = Clear screen
[cs:0x3002] = Fill rectangle
[cs:0x3004] = Blit
[cs:0x3008] = Set palette (function 4)
```

## Future Work

- [ ] Extract gameplay palette from driver code
- [ ] Implement palette fade transitions
- [ ] Add palette switching to scene manager
- [ ] Document all 4 palette indices
- [ ] Test town/shop palettes
