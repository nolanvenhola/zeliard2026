# Zeliard - Working Disassembly

Organized, properly-named codebase from Sourcer disassembly (TASM 2.X + byte match).
Source of truth for the reverse-engineered game code.

## Directory Structure

```
working/
  core/          - Main executable (zeliad.exe) and game data loader
  drivers/       - Graphics and input drivers (MCGA, keyboard, joystick)
  zelres1/       - Opening/story scene system
    code/        - 14 code modules
    data/        - 26 data files (images, music, font)
  zelres2/       - Gameplay engine
    code/        - 20 code modules (combat, physics, enemies)
    data/        - 20 data files (sprites, dialogue)
  zelres3/       - Level/world system
    code/        - 12 code modules (levels, NPCs, bosses)
    data/        - 28 data files (maps, dialogue, ending)
```

## File Index

### core/

| File | Original | Chunk | Purpose |
|------|----------|-------|---------|
| zeliad.asm | ZELIAD.ASM | zeliad.exe | Main executable, driver loader |
| game.asm | GAME.ASM | game.bin | Game data tables, runtime config |

### drivers/

| File | Original | Chunk | Purpose |
|------|----------|-------|---------|
| gmmcga.asm | GMMCGA.ASM | gmmcga.bin | MCGA 256-color graphics driver |
| stdply.asm | STDPLY.ASM | stdply.bin | Standard keyboard input driver |
| stick.asm | STICK.ASM | stick.bin | Joystick input driver |

### zelres1/code/ (Opening/Story)

| File | Original | Chunk | Purpose |
|------|----------|-------|---------|
| opening_scene.asm | ZR1_00 | chunk_00 | Opening story slideshow, text, player init |
| image_controller.asm | ZR1_01 | chunk_01 | Image rendering pipeline, 4-plane decoder |
| equipment.asm | ZR1_02 | chunk_02 | Equipment and inventory system |
| image_decode.asm | ZR1_03 | chunk_03 | Image decoding functions |
| player_stats.asm | ZR1_04 | chunk_04 | Player stat management |
| palette_graphics.asm | ZR1_05 | chunk_05 | VGA DAC palette setup, driver interface |
| player_advanced.asm | ZR1_06 | chunk_06 | Advanced player mechanics (movement, combat) |
| vga_decompressor.asm | ZR1_07 | chunk_07 | Two-stage RLE + bitmap/XOR decompression |
| image_decoder_a.asm | ZR1_08 | chunk_08 | Image decoder variant A |
| image_decoder_b.asm | ZR1_09 | chunk_09 | Image decoder variant B |
| large_image_renderer.asm | ZR1_10 | chunk_10 | 48x34 pixel 4-plane image renderer |
| small_image_renderer.asm | ZR1_11 | chunk_11 | 32x18 pixel image renderer |
| utilities_a.asm | ZR1_24 | chunk_24 | Helper/utility functions |
| utilities_b.asm | ZR1_30 | chunk_30 | Minor utility functions |

### zelres1/data/ (Opening Scene Assets)

| File | Chunk | Original Name | Purpose |
|------|-------|---------------|---------|
| font.bin | 12 | - | Bitmap font data |
| image_13.grp | 13 | - | Opening image |
| nec.grp | 14 | nec.grp | NEC logo |
| hou.grp | 15 | hou.grp | Opening scene image |
| sprites.bin | 16 | - | Player/NPC sprite data |
| dmaou.grp | 17 | dmaou.grp | Demon king Jashiin |
| zopn.msd | 18 | zopn.msd | Opening music |
| ttl1.grp | 19 | ttl1.grp | Title screen part 1 |
| ttl2.grp | 20 | ttl2.grp | Title screen part 2 |
| ttl3.grp | 21 | ttl3.grp | Title screen part 3 |
| image_22.grp | 22 | - | Opening image |
| waku.grp | 23 | waku.grp | Window frame graphics |
| ame.grp | 24 | ame.grp | Rain/weather effect |
| hime.grp | 25 | hime.grp | Princess Felicia portrait |
| isi.grp | 26 | isi.grp | Stone/rock graphics |
| oui.grp | 27 | oui.grp | King portrait |
| sei.grp | 28 | sei.grp | Fairy/spirit sprite |
| yuu1.grp | 29 | yuu1.grp | Hero animation frame 1 |
| yuu2.grp | 30 | yuu2.grp | Hero animation frame 2 |
| yuu3.grp | 31 | yuu3.grp | Hero animation frame 3 |
| yuu4.grp | 32 | yuu4.grp | Hero animation frame 4 |
| yuup.grp | 33 | yuup.grp | Hero portrait |
| oup.grp | 34 | oup.grp | Ending image |
| maop.grp | 35 | maop.grp | Map/ending scene |
| image_36.grp | 36 | - | Ending image |
| image_37.grp | 37 | - | Ending image |
| anim_table.bin | 38 | - | Animation frame data |
| zend.msd | 39 | zend.msd | Ending music |

### zelres2/code/ (Gameplay Engine)

| File | Original | Chunk | Purpose |
|------|----------|-------|---------|
| main_game_loop.asm | ZR2_00 | chunk_00 | Core game loop (largest module) |
| combat_ui.asm | ZR2_01 | chunk_01 | Combat interface and HUD |
| sprite_renderer.asm | ZR2_02 | chunk_02 | Sprite rendering engine |
| physics_subsystems.asm | ZR2_03 | chunk_03 | Physics helper systems |
| physics_engine.asm | ZR2_04 | chunk_04 | Main physics engine |
| animation_system.asm | ZR2_05 | chunk_05 | Animation system |
| enemy_ai.asm | ZR2_06 | chunk_06 | Enemy AI behavior framework |
| enemy_slime.asm | ZR2_07 | chunk_07 | Slime enemy type |
| enemy_bat.asm | ZR2_08 | chunk_08 | Bat enemy type |
| enemy_spider.asm | ZR2_09 | chunk_09 | Spider enemy type |
| enemy_skeleton.asm | ZR2_10 | chunk_10 | Skeleton enemy type |
| enemy_ghost.asm | ZR2_12 | chunk_12 | Ghost enemy type |
| enemy_goblin.asm | ZR2_13 | chunk_13 | Goblin enemy type |
| enemy_orc.asm | ZR2_14 | chunk_14 | Orc enemy type |
| enemy_wizard.asm | ZR2_15 | chunk_15 | Wizard enemy type |
| boss_behaviors.asm | ZR2_16 | chunk_16 | Boss behavior patterns |
| enemy_special.asm | ZR2_17 | chunk_17 | Special enemy type |
| utility_a.asm | ZR2_36 | chunk_36 | Utility functions |
| utility_b.asm | ZR2_38 | chunk_38 | Utility functions |
| data_tables.asm | ZR2_39 | chunk_39 | Data tables, text, sprite names |

### zelres2/data/ (Gameplay Sprites)

| File | Chunk | Original Name | Purpose |
|------|-------|---------------|---------|
| driver_table.bin | 11 | - | Graphics driver filename list |
| sprites_18.bin | 18 | - | Gameplay sprite set |
| sprites_19.bin | 19 | - | Gameplay sprite set |
| sprites_20.bin | 20 | - | Gameplay sprite set |
| sprites_21.bin | 21 | - | Gameplay sprite set |
| sprites_22.bin | 22 | - | Gameplay sprite set |
| sprites_23.bin | 23 | - | Gameplay sprite set |
| sprites_24.bin | 24 | - | Gameplay sprite set |
| sprites_25.bin | 25 | - | Gameplay sprite set |
| sprites_26.bin | 26 | - | Enemy/projectile sprites |
| waku.grp | 27 | waku.grp | Window frame sprites |
| sei.grp | 28 | sei.grp | Player/fairy sprites |
| yuup.grp | 29 | yuup.grp | Jump animation |
| seip.grp | 30 | seip.grp | Player attack animation |
| himp.grp | 31 | himp.grp | Hit/impact effects |
| new1.grp | 32 | new1.grp | Enemy type 1 sprites |
| new2.grp | 33 | new2.grp | Enemy type 2 sprites |
| ne80.grp | 34 | ne80.grp | Unused enemy sprites |
| ne81.grp | 35 | ne81.grp | Unused enemy sprites |
| dialogue.bin | 37 | - | NPC dialogue data |

### zelres3/code/ (Level/World System)

| File | Original | Chunk | Purpose |
|------|----------|-------|---------|
| level_loader.asm | ZR3_00 | chunk_00 | Level loading system |
| level_renderer.asm | ZR3_14 | chunk_14 | Level tile renderer |
| tile_collision.asm | ZR3_16 | chunk_16 | Tile collision detection |
| town_npc.asm | ZR3_20 | chunk_20 | Town and NPC systems |
| enemy_behavior.asm | ZR3_22 | chunk_22 | Enemy behavior in levels |
| npc_interaction.asm | ZR3_26 | chunk_26 | NPC interaction handler |
| trigger_events.asm | ZR3_31 | chunk_31 | Trigger and event system |
| enemy_manager.asm | ZR3_32 | chunk_32 | Enemy spawn/despawn manager |
| utility_small.asm | ZR3_33 | chunk_33 | Small utility (623 bytes) |
| boss_ai.asm | ZR3_34 | chunk_34 | Boss AI decision system |
| boss_patterns.asm | ZR3_35 | chunk_35 | Boss attack patterns |
| utility_tiny.asm | ZR3_37 | chunk_37 | Tiny utility (770 bytes) |

### zelres3/data/ (Maps and Dialogue)

| File | Chunk | Purpose |
|------|-------|---------|
| map_caverns.bin | 01 | Area 1: The Caverns |
| map_boss1_crab.bin | 02 | Boss 1: Cangrejo Arena |
| map_deeper_caverns.bin | 03 | Area 2: Deeper Caverns |
| map_forest.bin | 04 | Area 3: The Forest |
| map_boss2_octopus.bin | 05 | Boss 2: Pulpo Arena |
| map_boss3_chicken.bin | 06 | Boss 3: Pollo Arena |
| map_ice_caverns.bin | 07 | Area 4: Ice Caverns |
| map_graveyard.bin | 08 | Area 5: Graveyard Caverns |
| map_gold_caverns.bin | 09 | Area 6: Gold Caverns |
| map_flame_caverns.bin | 10 | Area 7: Flame Caverns |
| map_muralla_town.bin | 11 | Muralla Town (Surface) |
| map_satono_town.bin | 12 | Satono Town |
| map_bosque_town.bin | 13 | Bosque Town |
| map_helada_town.bin | 15 | Helada Town |
| map_boss4_arena.bin | 17 | Boss 4 Arena |
| map_boss5_arena.bin | 18 | Boss 5 Arena |
| map_boss6_arena.bin | 19 | Boss 6 Arena |
| dialogue_area1.bin | 21 | Area 1 dialogue |
| dialogue_area2.bin | 23 | Area 2 dialogue |
| dialogue_area3.bin | 24 | Area 3 dialogue |
| dialogue_area4.bin | 25 | Area 4 dialogue |
| dialogue_area5.bin | 27 | Area 5 dialogue |
| dialogue_area6.bin | 28 | Area 6 dialogue |
| dialogue_area7.bin | 29 | Area 7 dialogue |
| dialogue_area8.bin | 30 | Area 8 dialogue |
| dialogue_merchant.bin | 36 | Merchant/shop text |
| dialogue_extra.bin | 38 | Additional dialogue |
| ending_sequence.bin | 39 | Ending sequence (217KB) |

## Statistics

| Category | Code Files | Data Files | Total |
|----------|-----------|------------|-------|
| Core | 2 | - | 2 |
| Drivers | 3 | - | 3 |
| ZELRES1 | 14 | 26 | 40 |
| ZELRES2 | 20 | 20 | 40 |
| ZELRES3 | 12 | 28 | 40 |
| **Total** | **51** | **74** | **125** |

All 120 SAR chunks + 5 executables/drivers = 125 files.
Each code .asm file has a paired .sdf (Sourcer Definition File).
