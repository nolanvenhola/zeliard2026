# Opening Scene Analysis

## Assembly Flow (zelres1/chunk_00.bin, loaded at CS:0x6000)

### Initialization (0x0000-0x0006)
- First 4 bytes are chunk header: uint16 size (0x3629), uint16 flags
- Code entry at offset 0x0007: `mov sp,0x2000; sti` (stack setup)
- Sets global flags: `[cs:0xff1d]=0` (skip flag), `[cs:0xff29]=0` (key pressed flag)

### Scene Sequence

**Phase 1: Load backgrounds (0x0022-0x008B)**
- Loads multiple data chunks via `call [cs:0x10c]` with `al=2` (zelres1 archive)
- Chunk references at CS offsets: 0x957E, 0x953D, 0x9547 (file offsets 0x357E, 0x353D, 0x3547)
- Copies loaded data to video buffer at ES:0x4000 using memory copy routines at 0xDE5, 0xD62

**Phase 2: Set palette and first image (0x009F-0x00BB)**
- `mov ax,0x1; call [cs:0x3008]` — Set palette 1
- Draws filled rectangle: `al=0xFF, bx=0x1220, cx=0x2C68` via function [cs:0x3002]

**Phase 3: First text scroll (0x00BC)**
- `call 0x35C` — Text scroll routine with data from internal offset 0x6FF0 (file 0x0FF0)
- Renders scrolling text in the lower portion of the screen

**Phase 4: Second image + more rendering (0x00BF-0x0131)**
- Sets palette 2: `mov ax,0x2; call [cs:0x3008]`
- More drawing operations and data loading
- Sets palette 3: `mov ax,0x3; call [cs:0x3008]`

**Phase 5: Image slideshow (0x0155-0x0173)**
```assembly
0x0155: mov si,0x911E      ; pointer to image index list (file offset 0x311E)
0x015D: lodsb               ; read next image index
0x015E: or al,al            ; test if zero (end of list)
0x0160: jz 0x175            ; if zero, slideshow done
0x0162: push si
0x0163: dec al              ; convert 1-based to 0-based
0x0165: mov bx,0x1720       ; screen position (row=0x17, col=0x20)
0x0168: call [cs:0x3014]    ; display image (graphics function 10)
0x016D: pop si
0x016E: mov al,0x14         ; delay value (20 ticks ≈ 1.1 seconds)
0x0170: call 0x3AF          ; wait with ENTER check
0x0173: jmp 0x158           ; next image
```

**Phase 6: Jashiin's speech (0x017F-0x0183)**
- `mov si,0x9096; call 0x2D5` — Text with formatting control codes
- Data at file offset 0x3096: "Beware, for I shall wake..."

**Phase 7: More images and transitions (0x018F-0x02C7)**
- Displays images 2, 3 with delays
- Loads music chunk: `al=0x5, si=0x955D, di=0x3000` then `int 0x60` (play music)
- Animated fade effect: shrinking rectangle loop (100 iterations at 0x029F-0x02C7)

**Phase 8: Wait for input (0x02C8-0x02D2)**
- `test byte [0xff26],0xff; jz 0x2c8` — busy-wait for any key
- Then `jmp 0x3E9` — skip to title

### Skip/End Handler (0x03E9)
- `mov byte [0xff24],0x8` — set state flag
- Clear screen: `al=0xFF, bx=0x0, cx=0x50C8` via [cs:0x3006]
- Wait for flag, clear skip flags, then `jmp 0x410` → Title Screen

### Title Screen (0x0410)
- Reset stack, reinitialize
- Load music chunk (`al=5`) and play via `int 0x60`
- Set palette 1
- `call 0x49B` — Display title screen
- Wait for input, then continue to name entry / game start

---

## Key Routines

### Text Scroll (0x035C)
- Clears screen area: `bx=0x20, cx=0x5078` via [cs:0x300A]
- Loads text line pointer from SI via [cs:0x300C]
- Scrolls in 10 steps with 0x1C (28) tick delays
- Checks for 0xFF end-of-text marker at `[si-1]`
- After all text, scrolls everything off screen (120 blank steps)

### Wait/Delay (0x03AF)
```
Check [cs:0xff1d] — if skip flag set, jump to 0x3E9 (end)
Check [cs:0xff29] == 0x0D — if ENTER pressed, jump to 0x3E9 (end)
Call 0x3D0 (update timer/input)
Compare timer [cs:0xff1a] with delay value in AL
Loop until timer reaches delay
Reset timer to 0
```

### Text Display with Formatting (0x02D5)
- Reads bytes from SI
- Values < 0x05: palette/color change commands via [cs:0x3016]
- Value 0xFF followed by 0x01: set text position
- Value 0x20 (space): set rendering flag [cs:0xff75]
- Other values: character display via [cs:0x3030]

### Timer/Input Update (0x03D0)
- Calls [cs:0x110], [cs:0x112], [cs:0x116], [cs:0x118]
- These are system tick and keyboard poll functions

---

## Resource Files (filename → chunk index)

From the reference table at file offset 0x353D:

| Chunk ID | Filename | Description |
|----------|----------|-------------|
| 0x0E (14) | ame.grp | Rain animation |
| 0x0F (15) | dmaou.grp | Demon lord (Jashiin) |
| 0x10 (16) | hime.grp | Princess (Felicia) |
| 0x12 (18) | hou.grp | House/castle |
| 0x13 (19) | isi.grp | Stone/crystals |
| 0x14 (20) | maop.grp | Demon lord opening |
| 0x17 (23) | nec.grp | NEC logo/background |
| 0x1A (26) | oui.grp | King/throne |
| 0x1B (27) | oup.grp | Opening scene |
| 0x1C (28) | sei.grp | Spirit |
| 0x1E (30) | ttl1.grp | Title screen part 1 |
| 0x1F (31) | ttl2.grp | Title screen part 2 |
| 0x20 (32) | ttl3.grp | Title screen part 3 |
| 0x21 (33) | waku.grp | Frame/border |
| 0x22 (34) | yuu1.grp | Hero scene 1 |
| 0x23 (35) | yuu2.grp | Hero scene 2 |
| 0x24 (36) | yuu3.grp | Hero scene 3 |
| 0x25 (37) | yuu4.grp | Hero scene 4 |
| 0x26 (38) | yuup.grp | Hero portrait |
| 0x28 (40) | zopn.msd | Opening music |
| 0x27 (39) | zend.msd | Ending music |

All .grp files are in zelres1.sar. Music (.msd) loaded with `al=5`.

---

## Story Text

### Main Story (file offset 0x0FF3, 0x0D=newline, 0xFF=page break)

**Page 1:**
```
           Two thousand years,
from the dark reaches of another galaxy,
        a demon with not a shred
      of compassion for humankind,
         descended upon earth.

          He defiled the land,
  sending vile creatures to live in it,
   and thus became ruler of the world.
```

**Page 2:**
```
         The King of Felishika,
     appalled by what had happened,
          prayed to the Spirit
      of the Holy Land of Zeliard
    for help in defeating this monster.

    With the help of the holy crystals
       called Tears of Esmesanti,
    the King managed to wrest power
    from the fiend and seal him deep
     within the bowels of the earth.
```

**Page 3:**
```
           And once again,
 the light of peace came to shine upon
              the earth.

However, it is written in
       the Sixth Book of Esmesanti:
                   The Age of Darkness.
```

### Jashiin's Speech (file offset 0x3096, with formatting control codes)
```
Beware, for I shall wake
from my sleep of 2,000 years
and once again reign over the world.
```

### Quest Text (continues after 0xFF marker)
```
               At last,
     the door of destiny was opened.
        The labyrinths are deep,
          and the way is long.
     Will Duke Garland be successful
   in dethroning the Emperor of Chaos?
```

### Title Card
```
          Fantasy Action Game
               ZELIARD
            -- STAFF --
```

Followed by credits/staff roll text.

### Copyright
At file offset 0x04EE:
```
    Copyright (C)1987,1990 GAME ARTS
    Copyright (C)1990 Sierra On-Line
```

---

## Palette System

The game uses multiple VGA DAC palettes, switched via `mov ax,N; call [cs:0x3008]`:

- **Palette 1** (ax=1): Gameplay — 64 entries, 27 unique colors from 3×3×3 RGB cube {0,31,62}
- **Palette 2** (ax=2): Opening scene variant
- **Palette 3** (ax=3): Opening scene variant
- **Palette 4** (ax=4): Opening scene — custom blues/grays for cinematic artwork

### Palette Storage
- 2 opening palettes found in zelres1/chunk_05.bin at offset 0x128D (192 bytes each)
- Stored in gmmcga driver's internal encoded format (NOT raw VGA DAC values)
- Driver routine at 0x748 transforms encoded data before writing to VGA DAC registers
- Gameplay palette is computed by driver code, not stored in data files

### Verified Palettes (from DOSBox framebuffer + screenshot correlation)
- **Gameplay**: 42 verified entries at indices 0x00-0x3F (see GrpDecoder.cs `_gameplayPalette`)
- **Opening**: 19 verified entries at indices 0x00-0xFF (see GrpDecoder.cs `_openingPalette`)

---

## Image Compression Format (.grp)

The .grp image format uses custom compression. Partially reverse-engineered:

**What we know:**
- 4-byte header: uint16 data_size (LE), uint16 flags
- Bytes 4-5: format indicator (0x00, 0x05, 0x06, 0x07 values seen)
- NOT simple RLE (0xFC marker is for map tiles only)
- NOT nibble-packed, not standard EGA bitplane
- Compression ratio: ~8:1 (8KB compressed → 64KB framebuffer)

**Routine at 0x748 (gmmcga.bin):**
- This is the PALETTE ENCODER, not the image decompressor
- Processes 192-byte blocks (64 entries × 3 planes × 2 bits)
- 3 color planes, 2 bits per pixel per plane = 6-bit VGA palette index
- 12 bytes per 16-pixel row, 16 rows = 192 bytes per 16×16 block
- Bit extraction: ROL plane2→bit5, ROL plane1→bit4, ROL plane0→bit3, repeat for bits 2,1,0

**Image rendering function:**
- At CS:0x238F (gmmcga function table entry 10)
- Called via `call [cs:0x3014]`
- NOT inside gmmcga.bin — it's in a chunk loaded into multi-segment memory
- Game uses 4+ code segments: CS, CS+0x1000, CS+0x2000, CS+0x3000
- Initialization loads multiple chunks with relocation patches
- **Status: Requires DOSBox debugger step-through to trace**

**DOSBox debugging approach:**
1. Set breakpoint at CS:0x238F
2. Let game reach opening scene (image display)
3. Breakpoint triggers → step through image decompression
4. Watch which memory addresses it reads from (compressed data) and writes to (VGA framebuffer)
5. Record the algorithm

### Image Slideshow List
At file offset 0x311E: sequential byte indices specifying which images to display.
Displayed via graphics function 10 (`call [cs:0x3014]`) with position parameter BX=0x1720.
