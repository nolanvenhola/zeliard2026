# GRAPHICS_DRIVER_TABLE - Analysis

**Source:** `chunk_11.bin`
**Size:** 0.6 KB
**Functions:** hybrid — ~176 bytes code + data tables
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Purpose

Graphics hardware detection and driver selection table. Loaded early in startup to:
1. Detect which video hardware is present (EGA / CGA / Hercules / MCGA / Tandy)
2. Select and load the matching graphics driver (`gd*.bin`)
3. Initialize VGA Mode 13h (320×200 256-colour MCGA) and palette
4. Transfer control to the loaded driver

**Porting note:** Modern hardware always targets MCGA/VGA, so this entire chunk can be skipped in the MonoGame port — always load `gdmcga.bin` path.

## Structure

```
Offset  Len   Contents
------  ----  --------
0x00    4     SAR chunk header
0x06    ~170  x86 initialization and detection code
0xB0    6     Index table: [01 02 00 00 03 04]
0xB6    ~18   Offset table pointing to driver filename strings
0xC7+   ...   Driver filename strings + resource references
```

## Driver Filename Strings

| Filename      | Driver               |
|--------------|----------------------|
| `gdcga.bin`  | CGA (4-colour)       |
| `gdega.bin`  | EGA (16-colour)      |
| `gdhgc.bin`  | Hercules (mono)      |
| `gdmcga.bin` | **MCGA/VGA 256-colour** ← used on target hardware |
| `gdtga.bin`  | Tandy (16-colour)    |
| `enddemo.bin`| Demo ending sequence |

## Additional Data

- `OMOYA.GRP` — hut/town background image asset reference
- `"In the Hut"` — location name string for the hut level
- Complete printable ASCII table (0x20–0x7E) for menu/dialogue text rendering

## Function List

```
0x00000000   (hybrid entry — hardware detection + driver load)
```

No separate sub-functions; the code section is a single linear routine followed
by the data tables above.
