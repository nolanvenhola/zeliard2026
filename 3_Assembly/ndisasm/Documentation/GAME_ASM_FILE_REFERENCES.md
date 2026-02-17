# GAME.ASM File References → Chunk Mapping

Cross-reference of filenames found in GAME.ASM (lines 250-314) with SAR chunk numbers.

## Confirmed Mappings from GAME.ASM

| Chunk | Filename | Archive | Type | Purpose |
|-------|----------|---------|------|---------|
| **13** | **font.grp** | ZELRES2? | Graphics | Bitmap font |
| **8** | **mole.bin** | ? | Data | Mole enemy/object |
| **8** | **gtega.bin** | ? | Graphics | Tile graphics (EGA) |
| **9** | **gtcga.bin** | ? | Graphics | Tile graphics (CGA) |
| **10** | **gthgc.bin** | ? | Graphics | Tile graphics (HGC) |
| **12** | **gtmcga.bin** | ? | Graphics | Tile graphics (MCGA) |
| **11** | **gttga.bin** | ? | Graphics | Tile graphics (TGA) |
| **27** | **sword.grp** | ZELRES2 | Graphics | Sword/weapon sprite |
| **?** | **itemp.grp** | ? | Graphics | Item panel |
| **?** | **select.bin** | ? | Data | Selection UI |
| **?** | **magic.grp** | ? | Graphics | Magic effects |
| **?** | **fight.bin** | ? | Data | Combat data |
| **?** | **town.bin** | ? | Data | Town data |
| **?** | **opdemo.bin** | ? | Data | Opening demo |

## Graphics Driver Files

| Chunk | Filename | Type |
|-------|----------|------|
| **3** | **gfega.bin** | Font/Frame (EGA) |
| **4** | **gfcga.bin** | Font/Frame (CGA) |
| **5** | **gfhgc.bin** | Font/Frame (HGC) |
| **7** | **gfmcga.bin** | Font/Frame (MCGA) |
| **6** | **gftga.bin** | Font/Frame (TGA) |
| **2** | **gdega.bin** | Graphics Driver (EGA) |
| **3** | **gdcga.bin** | Graphics Driver (CGA) |
| **4** | **gdhgc.bin** | Graphics Driver (HGC) |
| **6** | **gdmcga.bin** | Graphics Driver (MCGA) |
| **5** | **gdtga.bin** | Graphics Driver (TGA) |

## Music Files

| Filename | Type |
|----------|------|
| **MGT1.MSD** | Music (MT-32?) |
| **UGM1.MSD** | Music (General MIDI?) |
| **MGT2.MSD** | Music (MT-32?) |
| **UGM2.MSD** | Music (General MIDI?) |
| **MMAN.GRP** | Manual graphics? |
| **CMAN.GRP** | Character manual? |

## File Naming Patterns

- **gf*.bin** - Graphics Font/Frame files (5 graphics modes)
- **gt*.bin** - Graphics Tile files (5 graphics modes)
- **gd*.bin** - Graphics Driver files (5 graphics modes)
- ***.grp** - Compressed graphics/sprites
- ***.bin** - Binary data (maps, tables, logic)
- ***.msd** - Music/sound data

## Graphics Modes

All graphics files come in 5 variants:
1. **EGA** - Enhanced Graphics Adapter (16 colors)
2. **CGA** - Color Graphics Adapter (4 colors)
3. **HGC** - Hercules Graphics Card (monochrome)
4. **MCGA** - Multi-Color Graphics Array (256 colors) - **Used by Zeliard**
5. **TGA** - Tandy Graphics Adapter (16 colors)

## Notes

1. **Chunk numbers overlap** - Same chunk # used in different contexts (archives?)
2. **Multiple files per chunk** - Some chunks referenced by multiple filenames
3. **Archive not specified** - GAME.ASM doesn't specify which SAR archive (zelres1/2/3)
4. **Loader determines archive** - Runtime code (AL register) specifies archive number

## Cross-Reference with Known Chunks

From chunk_00 filenames (ZELRES1):
- Chunk 14 = nec.grp ✓
- Chunk 25 = hime.grp ✓
- Chunk 29-32 = yuu1-4.grp ✓

From GAME.ASM:
- Chunk 13 = font.grp (likely ZELRES2)
- Chunk 27 = sword.grp (ZELRES2 confirmed - matches "waku" at 27)
- Chunks 3-7 = Graphics drivers
- Chunks 8-12 = Tile graphics

**Conclusion:** GAME.ASM references are primarily ZELRES2/3 runtime assets, while chunk_00 (ZELRES1) contains opening scene asset names!
