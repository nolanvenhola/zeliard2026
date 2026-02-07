# Zeliard Save File Format (.USR)

## Overview

- **File Extension**: `.USR`
- **File Size**: 256 bytes (fixed)
- **Location**: Same directory as game executable
- **Example Files**: Analyzed 13 saved games from different game states

---

## File Structure (256 bytes)

### Section 1: Progression Flags (0x00-0x7F) - 128 bytes

Bitflags tracking game progression, unlocked areas, defeated enemies, etc.

#### Pattern Analysis (First 16 bytes):

| Offset | Size | Description | Early Game (Muralla) | Late Game (Gold) |
|--------|------|-------------|---------------------|------------------|
| 0x00-0x01 | 2 | Progression flags 1 | `0000` | `FFFF` |
| 0x02-0x03 | 2 | Progression flags 2 | `F000` | `F8E0` |
| 0x04-0x07 | 4 | Common pattern | `00FF FF00` | `00FF FF00` |
| 0x08-0x0B | 4 | Progression flags 3 | `0000 0200` | `FFFF FFFC` |
| 0x0C-0x0F | 4 | (Unknown) | `0000 0000` | `0000 0000` |

**Key Observations:**
- Most saves start with `FFFF F8E0 00FF FF00` (mid-to-late game)
- Muralla (new game) starts with `0000 F000 00FF FF00`
- Bytes 0x00-0x03 appear to be primary progression indicators
- Bytes 0x08-0x0B vary significantly between saves

---

### Section 2: Player State (0x80-0x9F) - 32 bytes

Player position, stats, current state.

#### Byte Map:

| Offset | Size | Description | Example (Gold.usr) | Notes |
|--------|------|-------------|-------------------|-------|
| 0x80-0x81 | 2 | Unknown stat/position | `0x0073` (115) | Varies: 0x98, 0x4E, 0x6B, 0x73 |
| 0x82-0x83 | 2 | Unknown stat/position | `0x0A36` | Similar across saves: 0x39, 0x38, 0x36 |
| 0x84-0x85 | 2 | Constant/Area ID? | `0x0A0A` | Often 0x0A (10 decimal) |
| 0x86-0x89 | 4 | Varies significantly | `0x09 DC C0 00` | Could be gold, experience, etc. |
| 0x8A-0x8B | 2 | Zero in early saves | `0x0000` | |
| 0x8C-0x8F | 4 | Unknown values | `0x00 1C 02 15` | |
| 0x90-0x9F | 16 | More player data | (varies) | See hex dumps below |

**Position candidates:**
```
Muralla: 0x80=0x98, 0x82=0x39  (early game location)
Satono:  0x80=0x4E, 0x82=0x39  (different location)
Tumba:   0x80=0x6B, 0x82=0x38  (different location)
Gold:    0x80=0x73, 0x82=0x36  (different location)
```

---

### Section 3: Inventory/Equipment (0xA0-0xBF) - 32 bytes

Items, weapons, armor, equipped gear.

#### Comparison:

**Muralla.usr (Early Game):**
```
0xA0: 00 00 00 00 00 00 00 00 00 00 00 0C 06 08 08 03
0xB0: 04 03 C8 00 0C 06 08 08 03 04 03 00 00 00 00 00
```

**Gold.usr (Late Game):**
```
0xA0: 08 04 02 03 05 01 08 04 02 02 02 46 46 46 52 1F
0xB0: 1A 16 20 03 46 46 46 52 1F 1A 16 FF FF FF FF FF
```

**Key Observations:**
- Early game: Mostly zeros with small values (0x03-0x0C)
- Late game: Many values (0x01-0x08) and ASCII-like bytes
- "FFFR" pattern appears in late game saves (0x46='F', 0x52='R')
- Could be item IDs, quantities, or equipment slots

---

### Section 4: Magic Marker (0xC0-0xCF) - 16 bytes

Appears to be a consistent pattern across saves:

**Muralla.usr:**
```
0xC0: 00 00 02 40 81 81 00 00 00 8A A6 6B 75 42 4C 4B
       ^^^^^ ^^^^^ ^^^^^ ^^^^^    ^^^^^ ^^^^^^^^^^^
```

**Gold.usr:**
```
0xC0: 00 00 03 00 88 81 00 00 01 8A A6 6B 75 42 4C 4B
       ^^^^^ ^^^^^ ^^^^^ ^^^^^    ^^^^^ ^^^^^^^^^^^
```

**Pattern Analysis:**
- Bytes 0xC9-0xCF: **Constant across all saves** = `8A A6 6B 75 42 4C 4B`
- This might be a file format magic number or checksum base
- Bytes 0xC0-0xC8 vary slightly but follow a pattern

---

### Section 5: Unknown Data (0xD0-0xFF) - 48 bytes

**Muralla.usr:**
```
0xD0: 01 FF C0 C0 E0 E0 70 38 38 F8 F8 C0 E0 E0 70 30
0xE0: 38 1C 1C FC 00 80 00 04 00 90 C8 1A 01 00 57 56
0xF0: 1E B8 3F 52 8E D8 8B 7E 10 66 8B 46 06 66 89 46
```

**Gold.usr:**
```
0xD0: 01 FF E0 C0 E0 E0 60 38 38 F8 F8 C0 E0 E0 70 30
0xE0: 38 1C 1C FC 00 FF 00 04 00 0A 83 3D 14 75 05 8B
0xF0: F7 E8 AC DC 5F EB EB BF 8C 8E 33 C0 B9 10 00 F3
```

**Observations:**
- Bytes 0xE5-0xFF look like machine code or compressed data
- Very similar patterns in 0xD0-0xDF range
- Might be cached game state or executable code

---

## DOS File Operations

### zeliad.exe (Loader)

File I/O operations found at:

```assembly
; Open file (read-only)
00000316  B8003D            mov ax,0x3d00    ; AH=3Dh (Open), AL=00 (read)
00000319  CD21              int byte 0x21    ; DOS interrupt

; Close file
00000353  B43E              mov ah,0x3e      ; AH=3Eh (Close file)
00000355  CD21              int byte 0x21    ; DOS interrupt

; Execute program (launch game.bin)
000003A5  B8004B            mov ax,0x4b00    ; AH=4Bh (Execute)
000003A8  CD21              int byte 0x21    ; DOS interrupt
```

### ✅ Save Operation - ZELRES2/chunk_17.asm

**Location**: Lines 799-832 ([zelres2_chunks/chunk_17.asm](../4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres2_chunks/chunk_17.asm))

#### Filename Construction (Lines 799-813)

Builds ".USR" filename from player name:

```assembly
00000866  0E                push cs
00000867  07                pop es
00000868  BE6CFF            mov si,0xff6c      ; Source: player name at 0xFF6C
0000086B  BF27BB            mov di,0xbb27      ; Destination: filename buffer
0000086E  B90800            mov cx,0x8         ; Copy up to 8 characters
00000871  AC                lodsb              ; Load character
00000872  0AC0              or al,al           ; Check for null terminator
00000874  7403              jz 0x879           ; Jump if end
00000876  AA                stosb              ; Store character
00000877  E2F8              loop 0x871         ; Loop

; Append ".usr" extension
00000879  26C6052E          mov byte [es:di],0x2e      ; '.'
0000087D  26C6450175        mov byte [es:di+0x1],0x75  ; 'u'
00000882  26C6450273        mov byte [es:di+0x2],0x73  ; 's'
00000887  26C6450372        mov byte [es:di+0x3],0x72  ; 'r'
0000088C  26C6450400        mov byte [es:di+0x4],0x0   ; null terminator
```

#### File Create → Write → Close (Lines 814-832)

```assembly
00000891  BA27BB            mov dx,0xbb27      ; DX = pointer to filename
00000894  B90000            mov cx,0x0         ; CX = file attributes (normal)
00000897  B43C              mov ah,0x3c        ; AH = 0x3C (CREATE FILE)
00000899  CD21              int byte 0x21      ; DOS INT 21h
0000089B  7219              jc 0x8b6           ; Jump if error (carry flag)

0000089D  50                push ax            ; Save file handle
0000089E  BA0000            mov dx,0x0         ; DX = buffer offset (segment 0)
000008A1  B90001            mov cx,0x100       ; CX = 256 bytes to write
000008A4  8BD8              mov bx,ax          ; BX = file handle
000008A6  B440              mov ah,0x40        ; AH = 0x40 (WRITE FILE)
000008A8  CD21              int byte 0x21      ; DOS INT 21h

000008AA  58                pop ax             ; Restore AX
000008AB  9C                pushf              ; Save flags
000008AC  8BD8              mov bx,ax          ; BX = file handle
000008AE  B43E              mov ah,0x3e        ; AH = 0x3E (CLOSE FILE)
000008B0  CD21              int byte 0x21      ; DOS INT 21h
000008B2  9D                popf               ; Restore flags
000008B3  7201              jc 0x8b6           ; Jump if error
000008B5  C3                ret                ; Return success
```

**Memory Layout:**
- `0xFF6C`: Player name buffer (source for filename)
- `0xBB27`: Constructed filename with ".usr" extension
- `0xBB25`, `0xBB26`: Save slot counters/flags
- `0x0000:0x0000` (DS:0x0000): 256-byte save data buffer

### Load Operation

**Status**: Load operation not found in standard chunks

**Analysis**: The game likely loads .USR files during initialization through:
1. **zeliad.exe** handles initial file operations at startup
2. **game.bin** may cache loaded save data
3. Load operation might be in a different code chunk or handled differently

**Evidence**:
- chunk_39.asm contains data tables, not file I/O code
- Save is explicitly triggered by player action (menu)
- Load might happen automatically at game start via zeliad.exe

**Alternative**: The game may use a hybrid approach where:
- zeliad.exe loads the save file initially
- The 256 bytes are passed to game chunks in memory
- Only saves are handled by chunk_17.asm during gameplay

---

## Next Steps

1. ✅ Analyze save file structure (128 bytes progression flags)
2. ✅ Identify player state section (32 bytes at 0x80)
3. ✅ Identify inventory section (32 bytes at 0xA0)
4. 🔍 Find save/load code in assembly chunks
5. 🔍 Decode exact meaning of each byte
6. 🔍 Implement save/load in MonoGame

---

## Testing Strategy

To decode exact byte meanings:
1. Load Muralla.usr (early game) in DOSBox
2. Note exact player position, stats, inventory
3. Hex edit save file, change specific bytes
4. Reload and observe changes
5. Document exact field meanings

---

*Analysis based on 13 .USR files from Resources/Saved Games/*
*zeliad.exe disassembly: 4_ASSEMBLY_DISASSEMBLY/assembly_output/zeliad.asm*
