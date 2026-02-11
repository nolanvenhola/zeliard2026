# Chunk Analysis Documentation

This directory contains comprehensive analysis of all 120 chunks from the three SAR archives.

## Quick Start

1. **SUMMARY.md** - Executive summary with key findings
2. **CHUNK_VERIFICATION_REPORT.md** - Complete 120-chunk analysis table
3. **Individual walkthroughs** - Detailed code analysis for 29 confirmed chunks

## Files

### Overview Documents

- **SUMMARY.md** - High-level summary and recommendations
- **CHUNK_VERIFICATION_REPORT.md** - Full 120-chunk verification table
- **VERIFICATION_COMPLETE.md** - Earlier verification work

### Code Walkthroughs (29 chunks with disassembly)

#### zelres1 - Opening Scene (6 chunks)
- `zelres1_chunk_00_player_core_walkthrough.md` - Opening scene code + story
- `zelres1_chunk_02_equipment_walkthrough.md` - Image decompression stage 2
- `zelres1_chunk_04_stats_walkthrough.md` - 4-plane bitplane decoder
- `zelres1_chunk_06_player_advanced_walkthrough.md` - Image renderer
- `zelres1_chunk_24_utilities_walkthrough.md` - Palette switching
- `zelres1_chunk_30_utility_walkthrough.md` - Credits display

#### zelres2 - Gameplay Systems (19 chunks)
- `zelres2_chunk_00_walkthrough.md` - Main gameplay loop
- `zelres2_chunk_01_combat_core_walkthrough.md` - Combat systems
- `zelres2_chunk_02_damage_calculation_walkthrough.md` - Damage formulas
- `zelres2_chunk_03_physics_subsystems_walkthrough.md` - Physics helpers
- `zelres2_chunk_04_physics_walkthrough.md` - Main physics engine
- `zelres2_chunk_05_animation_system_walkthrough.md` - Animation system
- `zelres2_chunk_06_ai_behaviors_walkthrough.md` - AI behaviors
- `zelres2_chunk_38_utility_walkthrough.md` - Animation utilities
- `zelres2_chunk_39_utility_walkthrough.md` - Map data loader
- `zelres2_enemy_types_walkthrough.md` - Enemy type definitions

**Note:** Chunks 07-17 have .asm files but no walkthrough docs yet.

#### zelres3 - Towns & AI (4 chunks)
- `zelres3_chunk_00_level_loader_walkthrough.md` - Town initialization
- `zelres3_chunk_14_level_renderer_walkthrough.md` - NPC dialogue system
- `zelres3_chunk_16_utility_walkthrough.md` - Shop system
- `zelres3_chunk_31_utility_walkthrough.md` - AI behavior trees

## Verification Results

### Code vs Data Breakdown

| Type | Count | % |
|------|-------|---|
| **CODE (Confirmed)** | 29 | 24% |
| **CODE (Likely)** | 11 | 9% |
| **DATA** | 39 | 33% |
| **UNCERTAIN** | 41 | 34% |

### By Archive

| Archive | Confirmed Code | Likely Code | Data | Uncertain |
|---------|----------------|-------------|------|-----------|
| zelres1 | 6 | 2 | 22 | 10 |
| zelres2 | 19 | 1 | 17 | 3 |
| zelres3 | 4 | 8 | 0 | 28 |

## Key Findings

### Confirmed Code Locations

**zelres1:** Opening scene, image decompression, palette, credits  
**zelres2:** Main loop, gameplay systems, sprites, maps  
**zelres3:** Towns, dialogue, shops, AI behaviors

### Data Chunks

**zelres1:** 22 chunks of .grp images (opening, title, ending)  
**zelres2:** 17 chunks of sprite data (format 0x06 table RLE)  
**zelres3:** Mostly uncertain (likely town/NPC data)

### Critical Blockers

1. **Sprite pixel format** (zelres2/18-35) - Stage 1 decoded, pixel format unknown
2. **Main gameplay loop** (zelres2/00) - Needs detailed analysis for port
3. **zelres3 structure** - 28 uncertain chunks need investigation

### High-Priority Likely Code

Must disassemble these chunks:
- zelres3/chunk_34 (19 signatures) - Complex AI
- zelres3/chunk_22 (11 signatures) - Enemy behaviors
- zelres3/chunk_35 (11 signatures) - Boss AI
- zelres3/chunk_32 (7 signatures) - Enemy manager

## Mysteries

1. **zelres1/chunk_15**: Format 0x07 compressed but has 23 code signatures
2. **zelres3/chunk_39**: 217KB - largest chunk, purpose unknown
3. **zelres2 sprite format**: Decompresses OK, pixel encoding still unknown

## Analysis Method

### Code Signature Detection

Scanned first 128 bytes of each chunk for:
- E9 xx xx - Near jump (JMP)
- EB xx - Short jump
- E8 xx xx - Call instruction (CALL)
- 55 8B EC - Function prologue (push bp; mov bp,sp)
- CD xx - Interrupt call (INT)
- C3 - Near return (RET)

### Classification Rules

- **CODE (CONFIRMED)**: Has .asm disassembly file
- **CODE (LIKELY)**: 5+ code signatures, no compression
- **DATA (LIKELY)**: Format 0x06/0x07 + 0-2 signatures
- **UNCERTAIN**: Mixed/ambiguous signals

## Next Steps

### Phase 1: Sprite Decoding
1. Crack zelres2 sprite pixel format (3-plane hypothesis)
2. Extract sprite dimensions and animations
3. Compare with DOSBox VGA framebuffer

### Phase 2: Disassembly
1. Disassemble zelres3 AI chunks (22, 31, 34, 35)
2. Analyze main loop (zelres2/00)
3. Document zelres2 gameplay systems (chunks 01-17)

### Phase 3: Data Decoding
1. Map zelres3 town/NPC data structure
2. Investigate zelres3/chunk_39 (217KB)
3. Document format byte system

## References

- Source chunks: `../../../2_EXTRACTED_CHUNKS/`
- Disassembly files: `../../../4_ASSEMBLY_DISASSEMBLY/assembly_output/`
- Opening scene analysis: `../OPENING_SCENE_ANALYSIS.md`
- DOSBox dumps: `c:\Projects\Zeliard\DOSBOX DUMPS\`

---

**Last updated:** February 10, 2026  
**Total chunks analyzed:** 120  
**Documentation completeness:** 24% (29/120 chunks fully documented)
