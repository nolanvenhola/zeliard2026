# Chunk Verification - Summary

## Quick Stats

- **Total chunks analyzed**: 120
- **Confirmed code** (has .asm): 29 chunks (24%)
- **Likely code** (5+ signatures): 11 chunks (9%)
- **Data/graphics**: 39 chunks (33%)
- **Uncertain**: 41 chunks (34%)

## By Archive

### zelres1 - Opening Scene & Title Screens
- **Code**: 6 confirmed + 2 likely = 8 total
- **Data**: 22 chunks (.grp images)
- **Uncertain**: 10 chunks
- **Purpose**: Story, opening cutscene, title screens, ending images

### zelres2 - Gameplay Systems & Sprites
- **Code**: 19 confirmed + 1 likely = 20 total
- **Data**: 17 chunks (sprites + map data)
- **Uncertain**: 3 chunks
- **Purpose**: Main gameplay loop, combat, physics, AI, player sprites

### zelres3 - Towns, NPCs, AI
- **Code**: 4 confirmed + 8 likely = 12 total
- **Data**: 0 confirmed
- **Uncertain**: 28 chunks
- **Purpose**: Town systems, dialogue, shops, enemy AI, boss behaviors

## Key Findings

### Confirmed Code Chunks (29 total)

**zelres1 (6):** Opening scene (00), image decode (02, 04, 06), palette (24), credits (30)

**zelres2 (19):** Main loop (00), gameplay systems (01-17), animation (38), maps (39)

**zelres3 (4):** Town init (00), dialogue (14), shop (16), AI (31)

### High-Priority Likely Code

**Must disassemble:**
- zelres3/chunk_34: 19 code signatures - complex AI system
- zelres3/chunk_22: 11 signatures - enemy behaviors
- zelres3/chunk_35: 11 signatures - boss AI
- zelres3/chunk_32: 7 signatures - enemy manager
- zelres3/chunk_26: 6 signatures - NPC interaction

### Graphics/Sprite Data

**zelres1 (22 chunks):**
- Chunks 13-39: Compressed .grp images
- Formats: 0x06 (table RLE), 0x07 (escape RLE)
- Content: Opening scenes, title screens, ending images

**zelres2 (17 chunks):**
- Chunks 18-35: Gameplay sprites
- Format: 0x06 (table RLE - stage 1 DECODED)
- **Pixel format NOT cracked** - need to decode 3-plane structure

### Mysteries

1. **zelres1/chunk_15**: Format 0x07 but has 23 code signatures (ANOMALY)
2. **zelres3/chunk_39**: 217KB - largest chunk, purpose unknown
3. **zelres2 sprites**: Stage 1 decompresses OK, pixel format still unknown

## Recommendations

### CRITICAL
1. Decode sprite pixel format (zelres2/18-35) - BLOCKS gameplay graphics
2. Disassemble main loop (zelres2/00) - BLOCKS gameplay port
3. Investigate chunk_15 anomaly

### HIGH
4. Disassemble zelres3 AI chunks (22, 31, 34, 35)
5. Decode zelres3/chunk_39 (217KB mystery)
6. Port zelres2 gameplay systems (chunks 01-17)

### MEDIUM
7. Port palette switching (zelres1/24)
8. Port credits (zelres1/30)
9. Decode zelres3 town data (chunks 01-19)

## Files

- **Full report**: `CHUNK_VERIFICATION_REPORT.md`
- **Source chunks**: `2_EXTRACTED_CHUNKS/`
- **Disassembly**: `4_ASSEMBLY_DISASSEMBLY/assembly_output/`

---

Generated: February 10, 2026
