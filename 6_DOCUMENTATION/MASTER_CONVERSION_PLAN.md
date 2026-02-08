# Master Plan: Zeliard DOS → C# MonoGame Conversion

## Context

We're converting the 1987 DOS game Zeliard from raw x86 assembly (29 disassembled code chunks, ~140K lines of ndisasm output) into a C# MonoGame port. The goal is an **authentic** port that replicates the original behavior exactly.

**What exists today:**
- Raw assembly disassembly in `4_ASSEMBLY_DISASSEMBLY/assembly_output/` (no labels, no function boundaries)
- Original binary chunks in `2_EXTRACTED_CHUNKS/` (120 .bin files — sprites, music, level data, code)
- Original DOS executables and .SAR archives in `1_ORIGINAL_DOS/`
- 12 DOS save files in `Resources/Saved Games/`
- Minimal MonoGame skeleton in `MONOGAME_AUTHENTIC/` (only save/load works)
- Comprehensive game documentation in `6_DOCUMENTATION/`

**Strategy:** Use documentation as behavioral spec, assembly as ground truth for constants/formulas, extract all assets (sprites, music, sound effects) directly from the original .bin/.SAR files, and verify against DOSBox. Build in vertical slices where each phase produces something testable.

---

## Phase 1: Rendering Pipeline & Sprite Extraction
**Goal:** Extract sprites from original binary data and render them on a DOS-resolution screen

### Extract from Original Binaries
- **Source:** Data chunks from `2_EXTRACTED_CHUNKS/zelres1_extracted/` (34 data chunks — player sprites, equipment, UI, fonts)
- **Source:** Data chunks from `2_EXTRACTED_CHUNKS/zelres2_extracted/` (21 data chunks — enemy sprites, effects, projectiles)
- **Source:** Data chunks from `2_EXTRACTED_CHUNKS/zelres3_extracted/` (36 data chunks — tiles, backgrounds, palettes)
- **Reverse engineer:** Sprite data format — dimensions, palette indices, pixel encoding (likely RLE compressed)
- **Cross-reference:** Graphics driver assembly (`gmcga.asm` / `gmega.asm`) for how sprite data is decoded and blitted
- **Extract:** DOS CGA/EGA/VGA palette data from graphics driver or data chunks

### Extract from Assembly
- **Source:** `gmcga.asm` / `gmega.asm` — graphics driver
- **Extract:** Sprite blitting routines (how raw data → pixels), rendering order (background → sprites → HUD)
- **Extract:** Screen dimensions confirmed (320x200), double-buffering logic, palette handling

### Implement in C#
- `Core/DOSScreen.cs` — RenderTarget2D at 320x200, scaled to window (960x600)
- `Core/SpriteExtractor.cs` — Parse original .bin sprite data format into Texture2D
- `Core/DOSPalette.cs` — Authentic DOS palette (CGA/EGA/VGA color tables)
- `Core/SpriteSheet.cs` — Organize extracted frames by type (player, enemy, tile, UI)
- `Core/AnimationPlayer.cs` — Frame sequencing with DOS-authentic timing (18.2 FPS base)
- Update `Game1.cs` to render through DOS screen render target

### Test
- **Visual test:** Extract sprite data from a known chunk, render pixels on screen
- **Visual test:** Compare extracted sprites against DOSBox screenshots pixel-for-pixel
- **Visual test:** Load all animation frames for player character, display in grid
- **Unit test:** Palette conversion — DOS palette index → RGB color values match expected

### Key Files to Modify/Create
- `MONOGAME_AUTHENTIC/Core/DOSScreen.cs` (new)
- `MONOGAME_AUTHENTIC/Core/SpriteExtractor.cs` (new)
- `MONOGAME_AUTHENTIC/Core/DOSPalette.cs` (new)
- `MONOGAME_AUTHENTIC/Core/SpriteSheet.cs` (new)
- `MONOGAME_AUTHENTIC/Core/AnimationPlayer.cs` (new)
- `MONOGAME_AUTHENTIC/Game1.cs` (modify)

---

## Phase 2: Input System
**Goal:** Translate keyboard input to game actions with DOS-authentic buffering

### Extract from Assembly
- **Source:** `zelres1_chunks/chunk_00.asm` — search for INT 16h (keyboard interrupt) patterns, input flag storage
- **Pattern:** Look for `in al,0x60` (keyboard port read) and flag writes to `[cs:0xff__]` addresses
- **Extract:** Which global variable bytes store input state, button mappings

### Implement in C#
- `Input/InputManager.cs` — Map Keys to game actions (Left, Right, Up, Down, Jump, Attack, Magic, Menu, Pause)
- Track pressed/held/released per frame
- DOS had no input buffering beyond keyboard interrupt — replicate simple polling

### Test
- **Console test:** Print active inputs each frame to debug console
- **Visual test:** Show input state on-screen (arrows, buttons highlighted)

### Key Files
- `MONOGAME_AUTHENTIC/Input/InputManager.cs` (new)
- `MONOGAME_AUTHENTIC/Game1.cs` (modify — wire up input)

---

## Phase 3: Opening Scene, Title Screen & Game State Machine
**Goal:** Reproduce the full opening cinematic, title screen, and core game state flow

### Extract from Assembly
- **Source:** `zelres1_chunks/chunk_00.asm` — initialization sequence, opening scene orchestration
- **Source:** `zelres2_chunks/chunk_00.asm` — game state transitions
- **Identify:** The opening cinematic routine — look for:
  - Background image loading calls (chunk loads via `call word near [cs:0x10c]`)
  - Text string references and scrolling logic (vertical text scroll from bottom of screen)
  - ENTER key detection for fast-forward/skip (keyboard polling during cinematic)
  - Fade/transition effects between screens (palette manipulation or screen clears)
  - Timing/delay loops controlling scroll speed
- **Extract:** State enumeration (Opening, Title, NameEntry, Playing, Paused, Inventory, Town, Dead)
- **Extract:** Opening scene sequence: which background images, which text blocks, transition order

### Extract from Original Binaries
- **Source:** Data chunks containing opening scene backgrounds (likely in `zelres1_extracted/` or `zelres3_extracted/`)
- **Source:** Text string data for opening story narration
- **Identify:** Which data chunks contain the opening images and story text by cross-referencing chunk load calls in the initialization assembly

### Implement in C#
- `Core/GameStateManager.cs` — Master state machine: Opening → Title → NameEntry → Playing → Paused → Inventory → Town → Dead
- `Scenes/OpeningScene.cs` — Full opening cinematic:
  - Background image display with transitions (fade/dissolve between scenes)
  - Text scrolling upward from bottom of screen overlaid on background
  - ENTER key fast-forwards to next image/text block
  - Timed auto-advance if no input
  - Orchestrated sequence matching original assembly flow
- `Scenes/SceneTransition.cs` — Screen transition effects (fade to black, dissolve, etc.)
- `UI/TitleScreen.cs` — Game logo, New Game / Load Game options
- `UI/NameEntryScreen.cs` — Player name entry (8-char DOS limit)
- `UI/PauseOverlay.cs` — ESC pauses, Space unpauses (from documentation)
- `UI/InventoryScreen.cs` — Equipment display, item selection, magic selection
- Wire save/load into title screen (existing SaveManager)

### Test
- **Visual test:** Game launches → opening cinematic plays with scrolling text over backgrounds
- **Visual test:** ENTER key skips to next scene/text block
- **Visual test:** Opening completes → title screen appears with menu options
- **Visual test:** New Game → name entry → game starts
- **Visual test:** ESC pauses with overlay, Space resumes
- **Visual test:** ENTER opens inventory, shows equipment
- **Flow test:** Full sequence: Opening → Title → New Game → name entry → playing → pause → unpause → inventory
- **Comparison:** Opening scene timing and transitions match DOSBox side-by-side

### Key Files
- `MONOGAME_AUTHENTIC/Core/GameStateManager.cs` (new)
- `MONOGAME_AUTHENTIC/Scenes/OpeningScene.cs` (new)
- `MONOGAME_AUTHENTIC/Scenes/SceneTransition.cs` (new)
- `MONOGAME_AUTHENTIC/UI/TitleScreen.cs` (new)
- `MONOGAME_AUTHENTIC/UI/NameEntryScreen.cs` (new)
- `MONOGAME_AUTHENTIC/UI/PauseOverlay.cs` (new)
- `MONOGAME_AUTHENTIC/UI/InventoryScreen.cs` (new)

---

## Phase 4: Player Rendering & Basic Movement
**Goal:** Player character walks left/right on screen with animation

### Extract from Assembly
- **Source:** `zelres1_chunks/chunk_00.asm` (240KB — main player code)
- **Constants to find:**
  - Walk speed: search for position update pattern `mov ax,[pos]; add ax,0x????; mov [pos],ax`
  - Animation frame timing: search for frame counter increments
  - Player sprite dimensions: verify against extracted sprites from Phase 1
- **Source:** `zelres1_chunks/chunk_06.asm` (119KB — advanced player)
- **Constants to find:**
  - Facing direction flag
  - Sprite flip logic

### Extract from Original Binaries
- **Source:** Player sprite data chunks from `zelres1_extracted/` (identified in Phase 1)
- **Extract:** Player walk/idle animation frames, sprite dimensions

### Implement in C#
- `Entities/Player.cs` — Position (Vector2), Velocity, FacingDirection, AnimationState
- `Entities/PlayerRenderer.cs` — Draw player sprite with correct animation frame
- Wire player to InputManager: Left/Right → set velocity → update position → animate
- Fixed-point math helpers in `AuthenticConstants.cs` (DOS 8.8 format: value / 256.0f)

### Test
- **Visual test:** Player sprite renders at center of screen
- **Visual test:** Press left/right → player walks with animation, flips direction
- **Verification:** Walk speed feels correct compared to DOSBox

### Key Files
- `MONOGAME_AUTHENTIC/Entities/Player.cs` (new)
- `MONOGAME_AUTHENTIC/Entities/PlayerRenderer.cs` (new)
- `MONOGAME_AUTHENTIC/Core/AuthenticConstants.cs` (modify — add extracted values)

---

## Phase 5: Physics System (Gravity & Jumping)
**Goal:** Player falls, jumps, and lands on flat ground

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_04.asm` (163KB — physics engine)
- **Constants to find:**
  - Gravity acceleration: search for `add ax,0x0020` or similar near Y-velocity updates
  - Jump initial velocity: search for negative value written to Y-velocity (e.g., `mov ax,0xFC00`)
  - Max fall speed: search for `cmp ax,0x????; jle` (velocity clamping)
  - Ground Y position (for flat-ground test)
- **Source:** `zelres2_chunks/chunk_03.asm` (166KB — physics subsystems)
- **Extract:** Friction/deceleration values, velocity damping

### Implement in C#
- `Physics/PhysicsBody.cs` — Velocity, Gravity application, velocity clamping
- `Physics/PhysicsSystem.cs` — Update all physics bodies per frame
- Integrate with Player: Jump input → set Y velocity → gravity pulls down → stop at ground
- Use DOS frame-based physics (not delta-time) for authenticity: `velocity += gravity` per frame at 18.2 FPS

### Test
- **Visual test:** Player falls from top of screen, lands on a flat line (temporary ground)
- **Visual test:** Press jump → player arcs up and comes back down
- **Measurement test:** Count frames of jump arc, compare to DOSBox recording
- **Unit test:** Physics math — fixed-point conversion, gravity accumulation over N frames

### Key Files
- `MONOGAME_AUTHENTIC/Physics/PhysicsBody.cs` (new)
- `MONOGAME_AUTHENTIC/Physics/PhysicsSystem.cs` (new)
- `MONOGAME_AUTHENTIC/Core/AuthenticConstants.cs` (modify — physics values)

---

## Phase 6: Tilemap & Level Rendering
**Goal:** Render a tile-based level with collision, camera scrolling

### Extract from Assembly
- **Source:** `zelres3_chunks/chunk_00.asm` (53KB — level loader)
- **Extract:** Level data format — how tile indices are stored, map dimensions
- **Source:** `zelres3_chunks/chunk_14.asm` (82KB — level renderer)
- **Extract:** Tile size (likely 16x16 based on 320/200 resolution), rendering viewport logic, scroll speed

### Extract from Original Binaries
- **Source:** Binary level data chunks `2_EXTRACTED_CHUNKS/zelres3_extracted/chunk_01-08.bin` — 8 level maps
- **Extract:** Parse level format — tile indices, enemy spawn points, item positions, door locations
- **Source:** Tile graphics data chunks from `zelres3_extracted/` (identified in Phase 1)
- **Extract:** Tile pixel data, tile index mapping

### Implement in C#
- `Levels/TileMap.cs` — 2D array of tile indices, collision flags per tile (solid/empty/platform/hazard)
- `Levels/LevelLoader.cs` — Parse binary level data OR create test level manually
- `Levels/LevelRenderer.cs` — Draw visible tiles based on camera position
- `Levels/Camera.cs` — Follow player horizontally, clamp to level bounds
- Tile collision in PhysicsSystem: check tiles below/beside player

### Test
- **Visual test:** Render a hand-crafted test level (simple platforms, walls, gaps)
- **Visual test:** Player walks through level, camera scrolls to follow
- **Visual test:** Player collides with walls and floors, can't walk through solid tiles
- **Visual test:** Player can fall through gaps, land on lower platforms
- **Milestone:** First playable "walk around a level" vertical slice

### Key Files
- `MONOGAME_AUTHENTIC/Levels/TileMap.cs` (new)
- `MONOGAME_AUTHENTIC/Levels/LevelLoader.cs` (new)
- `MONOGAME_AUTHENTIC/Levels/LevelRenderer.cs` (new)
- `MONOGAME_AUTHENTIC/Levels/Camera.cs` (new)
- `MONOGAME_AUTHENTIC/Physics/PhysicsSystem.cs` (modify — tile collision)

---

## Phase 7: Player Combat System
**Goal:** Player can swing sword with hitbox, damage calculation works

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_02.asm` (162KB — damage calculation)
- **Extract:** Damage formula: `Base + floor(Level / 2)` (documented, verify in assembly)
  - Search for `shr bx,1` (divide level by 2) near `add ax,bx` (add to base)
- **Source:** `zelres2_chunks/chunk_01.asm` (60KB — combat core)
- **Extract:** Attack hitbox dimensions, attack duration in frames, hit detection logic (AABB)
- **Source:** `zelres1_chunks/chunk_06.asm` — attack animations
- **Extract:** Sword swing frame sequence, which frames have active hitbox

### Extract from Original Binaries
- **Source:** Sword sprite data chunks from `zelres1_extracted/`
- **Extract:** Sword swing animation frames, frame dimensions, swing arc positions

### Implement in C#
- `Combat/DamageCalculator.cs` — `int CalculateDamage(int swordBase, int playerLevel)` + Sabre Oil multiplier
- `Combat/AttackSystem.cs` — Sword swing state machine (windup → active → recovery), hitbox creation
- `Combat/Hitbox.cs` — Rectangle hitbox with duration, owner, damage value
- Extend Player: Attack input → enter swing state → create hitbox → check overlap with enemies

### Test
- **Unit test:** DamageCalculator: Training Sword (1) + Level 4 = 3 damage
- **Unit test:** DamageCalculator: Enchantment Sword (255) + Level 0 = 255 damage
- **Unit test:** Sabre Oil: 230% multiplier stacks
- **Visual test:** Press attack → sword swing animation plays
- **Visual test:** Hitbox renders as debug overlay during attack frames

### Key Files
- `MONOGAME_AUTHENTIC/Combat/DamageCalculator.cs` (new)
- `MONOGAME_AUTHENTIC/Combat/AttackSystem.cs` (new)
- `MONOGAME_AUTHENTIC/Combat/Hitbox.cs` (new)
- `MONOGAME_AUTHENTIC/Entities/Player.cs` (modify — attack states)

---

## Phase 8: Enemy Framework & Basic Enemies
**Goal:** Enemies spawn, move, take damage, die, drop Almas

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_05.asm` (180KB — AI framework)
- **Extract:** Enemy state machine structure: Idle → Patrol → Chase → Attack → Death
- **Source:** `zelres2_chunks/chunk_06.asm` (166KB — AI behaviors)
- **Extract:** Chase behavior (how enemies track player X position), attack trigger distance
- **Source:** `zelres2_chunks/chunk_07.asm` — First enemy type (Level 1 enemies)
- **Extract:** Frog/Slug/Rat specific behavior (hop pattern, walk speed)

### Extract from Documentation
- **Source:** `6_DOCUMENTATION/ENEMIES_DATABASE.md`
- **Extract:** All enemy stats — HP, XP, Almas drops, damage values, behavior descriptions

### Extract from Original Binaries
- **Source:** Enemy sprite data chunks from `zelres2_extracted/` (identified in Phase 1)
- **Extract:** Enemy sprite dimensions, animation frames per enemy type

### Implement in C#
- `Entities/Enemy.cs` — Base enemy: Position, HP, State, AI type, drops
- `Entities/EnemyRenderer.cs` — Draw enemy sprites with animation
- `AI/EnemyAI.cs` — State machine base class
- `AI/ContactEnemyAI.cs` — Simple "move toward player" (Frog, Rat, Fox pattern)
- `AI/EnemySpawner.cs` — Create enemies at spawn points
- Wire combat: Player sword hitbox overlaps enemy → apply damage → enemy dies → drop Almas

### Test
- **Visual test:** Frogs spawn and hop toward player
- **Visual test:** Hit frog with sword → frog dies, Almas coin appears
- **Visual test:** Frog touches player → shield/HP damage
- **Unit test:** Enemy takes correct damage from each sword type
- **Milestone:** First combat loop — walk, encounter enemy, fight, collect drops

### Key Files
- `MONOGAME_AUTHENTIC/Entities/Enemy.cs` (new)
- `MONOGAME_AUTHENTIC/Entities/EnemyRenderer.cs` (new)
- `MONOGAME_AUTHENTIC/AI/EnemyAI.cs` (new)
- `MONOGAME_AUTHENTIC/AI/ContactEnemyAI.cs` (new)
- `MONOGAME_AUTHENTIC/AI/EnemySpawner.cs` (new)

---

## Phase 9: HUD System
**Goal:** Display player health, gold, almas, level, equipment

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_00.asm` (266KB — main systems)
- **Extract:** HUD layout positions, bar lengths, update frequency

### Extract from Original Binaries
- **Source:** HUD/UI sprite data chunks from `zelres1_extracted/`
- **Extract:** LIFE bar sprite, GOLD/ALMAS labels, font character data, bar fill graphics
- **Measure:** HUD position (top of screen), bar pixel dimensions

### Implement in C#
- `UI/HUD.cs` — Render health bar, gold count, almas count, current weapon/shield icons, level
- `UI/HealthBar.cs` — Proportional fill bar matching DOS look
- `UI/TextRenderer.cs` — Render game font extracted from binary data

### Test
- **Visual test:** HUD displays at top of screen with correct layout
- **Visual test:** Health bar decreases when player takes damage
- **Visual test:** Almas counter increases when collecting drops
- **Comparison:** Screenshot HUD vs DOSBox screenshot

### Key Files
- `MONOGAME_AUTHENTIC/UI/HUD.cs` (new)
- `MONOGAME_AUTHENTIC/UI/HealthBar.cs` (new)
- `MONOGAME_AUTHENTIC/UI/TextRenderer.cs` (new)

---

## Phase 10: Town System
**Goal:** Enter towns, walk around, interact with NPCs, use shops

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_00.asm` — town logic, NPC interaction, shop system
- **Extract:** Town entry/exit triggers, NPC dialogue system, shop buy/sell mechanics
- **Extract:** How gold/almas exchange works, price lookups

### Extract from Documentation
- **Source:** `6_DOCUMENTATION/TOWNS_AND_NPCS.md` — All 9 towns, NPC types, services, prices
- **Source:** `6_DOCUMENTATION/ITEMS_DATABASE.md` — Complete pricing tables per town

### Extract from Original Binaries
- **Source:** Town tile data chunks from `zelres3_extracted/`
- **Source:** NPC sprite data chunks from `zelres1_extracted/` or `zelres2_extracted/`
- **Source:** Town background image data from data chunks
- **Source:** Shop interior graphics from data chunks

### Implement in C#
- `Towns/Town.cs` — Town definition: name, NPCs, shops, exits
- `Towns/TownRenderer.cs` — Render town tiles and NPCs
- `Towns/NPC.cs` — NPC type, position, dialogue
- `Towns/ShopSystem.cs` — Buy/sell items with town-specific pricing
- `Towns/DialogueSystem.cs` — Text display, player choices
- `Towns/BankSystem.cs` — Almas ↔ Gold exchange at town-specific rates
- `Towns/SageSystem.cs` — Check XP, level up, save game
- `Towns/ChurchSystem.cs` — Free healing

### Test
- **Visual test:** Render Muralla town with NPCs placed
- **Visual test:** Walk up to NPC → dialogue appears
- **Visual test:** Enter weapon shop → see items with prices → buy/sell
- **Unit test:** Exchange rates: Muralla 1:6, Bosque 1:8, Esco 1:8
- **Unit test:** Price tables match documentation for each town
- **Flow test:** Enter town → heal at church → buy sword → save at Sage → exit to cavern

### Key Files
- `MONOGAME_AUTHENTIC/Towns/Town.cs` (new)
- `MONOGAME_AUTHENTIC/Towns/ShopSystem.cs` (new)
- `MONOGAME_AUTHENTIC/Towns/DialogueSystem.cs` (new)
- Multiple new files in `Towns/` folder

---

## Phase 11: Leveling & Progression System
**Goal:** XP accumulation, level-up at Sage, health increase, spell unlocks

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_00.asm` — XP tracking, level-up logic
- **Extract:** XP overflow cap mechanism (prevents double-leveling)
- **Extract:** Spell unlock level thresholds

### Extract from Documentation
- **Source:** `6_DOCUMENTATION/GAME_SYSTEMS.md`
  - XP requirements per level (50, 150, 300, 420, 1000, ... 60000)
  - HP by level (80, 120, 160, 240, ... 800)
  - XP overflow cap (cap at next_level_req - 1)
  - Maximum XP: 65,535

### Implement in C#
- `Systems/LevelingSystem.cs` — XP tables, level-up check, overflow cap
- `Systems/PlayerStats.cs` — Level, HP, MaxHP, XP, Gold, Almas
- `Systems/SpellSystem.cs` — 7 spells unlocked progressively (Espada → Guerra)
- Integrate with SageSystem: visit Sage → check XP → level up → HP increases → spells unlock

### Test
- **Unit test:** XP table: level 1 needs 50, level 5 needs 1000, level 16+ needs 60000
- **Unit test:** HP progression: level 0=80, level 3=240, level 15=800
- **Unit test:** Overflow cap: at level 0, gaining 400 XP → level up → capped at 149 (not 350)
- **Unit test:** Max XP clamp at 65535
- **Flow test:** Kill enemies → accumulate XP → visit Sage → level up → HP increases

### Key Files
- `MONOGAME_AUTHENTIC/Systems/LevelingSystem.cs` (new)
- `MONOGAME_AUTHENTIC/Systems/PlayerStats.cs` (new)
- `MONOGAME_AUTHENTIC/Systems/SpellSystem.cs` (new)

---

## Phase 12: Equipment & Inventory System
**Goal:** Weapons, shields, magic items, shoes/cape — full equipment management

### Extract from Documentation
- **Source:** `6_DOCUMENTATION/ITEMS_DATABASE.md`
  - 6 swords with base damage (1, 2, 4, 8, 16, 255)
  - 6 shields with power values (30, 80, 180, 300, 300, 600)
  - 8 magic consumables with effects
  - 5 wearable items (4 shoes + cape)

### Implement in C#
- `Items/ItemDatabase.cs` — Static data for all items: stats, prices per town, descriptions
- `Items/Inventory.cs` — Player inventory: equipped weapon, shield, shoes, cape, consumables
- `Items/EquipmentEffects.cs` — Apply weapon damage bonus, shield durability, shoe effects
- `Items/ConsumableEffects.cs` — Potion healing, Chikara Powder (restore spells), Magia Stone, Sabre Oil
- Shield durability system: shields lose power over time, Light Shield special durability

### Test
- **Unit test:** Sword damage: Training Sword base=1, Enchantment Sword base=255
- **Unit test:** Shield power: Clay=30, Titanium=600
- **Unit test:** Sabre Oil: 230% multiplier, stacks
- **Unit test:** Consumable effects: Ken'ko Potion restores 11 HP, Juu-en Fruit full restore
- **Flow test:** Buy sword → equip → damage increases → buy shield → take less damage

### Key Files
- `MONOGAME_AUTHENTIC/Items/ItemDatabase.cs` (new)
- `MONOGAME_AUTHENTIC/Items/Inventory.cs` (new)
- `MONOGAME_AUTHENTIC/Items/EquipmentEffects.cs` (new)

---

## Phase 13: Advanced Enemies & All Enemy Types
**Goal:** All 30+ enemy types across 8 cavern levels

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_07.asm` through `chunk_17.asm` — individual enemy types
- **Extract per type:** Movement speed, attack pattern, special mechanics
  - Ranged enemies: projectile speed, fire rate, projectile damage
  - Flying enemies: flight pattern, swoop timing
  - Special: Green Slime reproduction, Red Slime invulnerability, Zombie head-only hits

### Extract from Documentation
- **Source:** `6_DOCUMENTATION/ENEMIES_DATABASE.md` — Complete stats for all enemies

### Implement in C#
- `AI/RangedEnemyAI.cs` — Stop, fire projectile, retreat (Toad, Alligator Man, Zombie)
- `AI/FlyingEnemyAI.cs` — Ceiling cling, swoop attack (Bat, Spider, Bush Creature)
- `AI/SpecialEnemyAI.cs` — Reproduction (Green/Red Slime), invulnerability (Flying Octopus)
- `Entities/Projectile.cs` — Enemy projectiles (spit, axes, arrows, kisses)
- Per-level enemy configurations matching documentation stats

### Test
- **Per enemy type:** Spawn, observe behavior, verify damage/XP/drops
- **Special test:** Green Slime — hit with weak sword → reproduces
- **Special test:** Red Slime — immune to normal swords, vulnerable to spells
- **Special test:** Zombie — only head hits deal damage

### Key Files
- `MONOGAME_AUTHENTIC/AI/RangedEnemyAI.cs` (new)
- `MONOGAME_AUTHENTIC/AI/FlyingEnemyAI.cs` (new)
- `MONOGAME_AUTHENTIC/Entities/Projectile.cs` (new)
- Multiple AI behavior files

---

## Phase 14: Boss Encounters
**Goal:** All 10 boss fights with authentic attack patterns

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_16.asm` — Boss behavior system
- **Extract:** Boss state machines, attack timings, movement patterns, HP values

### Extract from Documentation
- **Source:** `6_DOCUMENTATION/BOSSES_DATABASE.md` — All 10 bosses with strategies
  - Cangrejo (120 XP), Pulpo (200), Pollo (500), Agar (1000), Vista (3000)
  - Tarso (6000), Paguro (3000), Dragon (12000), Alguien (30000), Jashiin (10000)

### Extract from Original Binaries
- **Source:** Boss sprite data chunks from `zelres2_extracted/`
- **Extract:** Boss sprite dimensions, animation frames, attack effect sprites

### Implement in C#
- `Entities/Boss.cs` — Boss entity with HP, attack patterns, phase transitions
- `AI/BossAI.cs` — Base class for boss state machines
- One AI class per boss type with unique attack patterns
- Boss arena: locked room, fight to completion, crystal drop on death
- Encounter Zone trigger (entering boss room)

### Test
- **Per boss:** Enter arena → boss attacks → can be damaged → dies → drops crystal + Almas
- **Damage test:** Verify XP rewards match documentation
- **Pattern test:** Boss attack sequences match DOSBox observation
- **Exploit test:** Magia Stone works on early bosses (stand next to boss, stone damages)

---

## Phase 15: Magic System
**Goal:** 7 spells with authentic effects, spell selection, Magia Stone

### Extract from Assembly
- **Source:** `zelres2_chunks/chunk_00.asm` — spell system
- **Extract:** Spell damage values, range, projectile behavior, use counts

### Extract from Documentation
- **Source:** `6_DOCUMENTATION/GAME_SYSTEMS.md` — Spell list
  - Espada (thrown swords), Saeta (arrows), Fuego (ground fire), Lanzar (flame projectile)
  - Rascar (falling rocks), Agua (water), Guerra (lightning all directions)

### Extract from Original Binaries
- **Source:** Spell animation/effect data chunks from `zelres2_extracted/`
- **Extract:** Spell projectile sprites, visual effect frames

### Implement in C#
- `Magic/SpellDatabase.cs` — 7 spells with damage, range, behavior, use counts
- `Magic/SpellCaster.cs` — ALT key casts selected spell, projectile creation
- `Magic/SpellEffects.cs` — Visual effects per spell type
- `Magic/MagiaStone.cs` — Protective forcefield, contact damage to enemies, duration tracking

### Test
- **Per spell:** Cast → visual effect → damages enemies in range
- **Spell test:** Fuego kills Green Slime (elemental weakness)
- **Magia Stone test:** Activates forcefield, damages nearby enemies, drains over time

---

## Phase 16: Level Data & Full World
**Goal:** All 8 cavern levels loaded from binary data, connected with towns

### Extract from Original Binaries
- **Source:** `2_EXTRACTED_CHUNKS/zelres3_extracted/chunk_01-08.bin` — 8 level maps
- **Extract:** Binary format reverse engineering:
  - Open in hex editor, identify repeating tile patterns
  - Cross-reference with zelres3/chunk_00.asm (level loader) for format spec
  - Map dimensions, tile indices, spawn table offsets

### Implement in C#
- `Levels/LevelDatabase.cs` — All 8 cavern definitions
- `Levels/BinaryLevelParser.cs` — Parse original DOS level format
- `Levels/AreaTransition.cs` — Doors/portals between areas and towns
- `Levels/EnvironmentalHazards.cs` — Gelroid, fire, thorns, ice (shoe-dependent)
- Connect: Cavern 1 ↔ Muralla ↔ Cavern 2 ↔ Satono ↔ ... progression

### Test
- **Visual test:** Each of 8 caverns renders with correct tiles
- **Navigation test:** Walk through entire Cavern 1, exits lead to Muralla town
- **Hazard test:** Gelroid damages without Pirika Shoes, ice slips without Ruzeria Shoes

---

## Phase 17: Special Items & Mechanics
**Goal:** Shoes, cape, crests, keys, blue potion exploit

### Implement in C#
- `Items/SpecialItems.cs`:
  - Ruzeria Shoes: no ice slipping
  - Pirika Shoes: immune to Gelroid/thorns/fire
  - Silkarn Shoes: climb slopes
  - Feruza Shoes: 2x jump height
  - Asbestos Cape: immune to Burning Inferno heat
- `Items/QuestItems.cs`:
  - Hero's Crest: required to pass sentry in Bosque
  - Crest of Glory: trade for Knight's Sword
  - Elf Crest: NPCs in Llama Town speak to you
  - Lion Head's Key: opens Cavern of Arrugia
  - Tears of Esmesanti: 9 crystals from bosses
- `Combat/BluePotionExploit.cs` — Invulnerability trick when potion is healing

### Test
- **Feruza test:** Jump height doubles when equipped
- **Ruzeria test:** No sliding on ice tiles
- **Quest test:** Can't pass Bosque sentry without Hero's Crest
- **Blue Potion test:** Heal while low HP → temporary invulnerability

---

## Phase 18: Audio System
**Goal:** Extract and play music and sound effects from original binary data

### Extract from Assembly
- **Source:** `zelres1_chunks/chunk_00.asm` — sound initialization, music trigger calls
- **Source:** Sound/music driver files (`sndadlib.drv`, `sndjr.drv`, `sndstd.drv`, `mscadlib.drv`, `mscjr.drv`, `mscmt.drv`, `mscstd.drv`) in `1_ORIGINAL_DOS/`
- **Identify:** Which assembly routines trigger music/SFX, how tracks are indexed
- **Extract:** Music playback format (AdLib FM synthesis data? Custom sequence format?)
- **Extract:** Sound effect trigger points and data format

### Extract from Original Binaries
- **Source:** Data chunks from `zelres2_extracted/` (chunks 11, 18-37 — noted as containing "Sound effect data (PC speaker/AdLib)")
- **Source:** Music driver binaries (`stdply.bin`) in `1_ORIGINAL_DOS/`
- **Reverse engineer:** Music data format — likely AdLib FM register writes or custom sequence format
- **Reverse engineer:** Sound effect data format — PC speaker frequencies or AdLib patches
- **Convert:** Extracted music data → playable format (WAV/OGG via AdLib emulation or direct synthesis)
- **Convert:** Sound effect data → WAV files

### Implement in C#
- `Audio/MusicExtractor.cs` — Parse original music data format from binary chunks
- `Audio/SoundExtractor.cs` — Parse original sound effect data format
- `Audio/AdLibEmulator.cs` — (if needed) Emulate AdLib FM synthesis for authentic playback
- `Audio/MusicManager.cs` — Play music per area, handle transitions between tracks
- `Audio/SoundEffects.cs` — Trigger sound effects: sword swing, enemy hit, enemy death, pickup, spell cast, menu select
- Map tracks to locations: each town and cavern has a specific music track
- F1 toggle for music on/off (from manual)

### Test
- **Audio test:** Successfully extract and play at least one music track from binary data
- **Audio test:** Sound effects play on correct game events (attack, hit, death, pickup)
- **Audio test:** Entering each town plays correct music track
- **Audio test:** Entering cavern changes to appropriate dungeon theme
- **Audio test:** F1 toggles music off/on
- **Comparison:** Compare extracted audio against DOSBox audio output

### Key Files
- `MONOGAME_AUTHENTIC/Audio/MusicExtractor.cs` (new)
- `MONOGAME_AUTHENTIC/Audio/SoundExtractor.cs` (new)
- `MONOGAME_AUTHENTIC/Audio/MusicManager.cs` (new)
- `MONOGAME_AUTHENTIC/Audio/SoundEffects.cs` (new)

---

## Phase 19: Death, Save/Load Integration, & Polish
**Goal:** Full game loop with death/resurrection, saving, loading

### Implement in C#
- `Systems/DeathSystem.cs` — Player dies → respawn at Muralla Sage → keep items/gold
- Integrate existing SaveManager with full game state (not just raw bytes)
- `Systems/SaveLoadIntegration.cs` — Map full game state ↔ 256-byte save format
- Speed control: F9 key cycles game speed 0-9 (from documentation)
- Screen transitions: fade to black between areas

### Test
- **Death test:** Player dies → screen transition → respawn at Muralla with all items
- **Save test:** Save at Sage → quit → reload → exact state preserved
- **DOS save test:** Load original DOS .usr files → game state matches expected progression
- **Speed test:** F9 changes game speed, affects all timings proportionally

---

## Phase 20: Ending Scene & Credits
**Goal:** Reproduce the game completion scene and scrolling credits

### Extract from Assembly
- **Source:** `zelres1_chunks/chunk_00.asm` and/or `zelres2_chunks/chunk_00.asm`
- **Identify:** End-game trigger — what happens after Jashiin is defeated and 9th Tear collected
- **Identify:** Credits/ending sequence routine — look for:
  - Background image loading for ending scene
  - Text string references for credits (developer names, staff roll)
  - Scrolling credits logic (likely similar to opening scene text scroll)
  - Final screen / "THE END" display
  - Return-to-title logic after credits complete

### Extract from Original Binaries
- **Source:** Ending scene background images from data chunks
- **Source:** Credits text data (developer names, roles)
- **Identify:** Which data chunks contain ending-specific assets by tracing the ending assembly routine

### Implement in C#
- `Scenes/EndingScene.cs` — Victory sequence after collecting all 9 Tears of Esmesanti:
  - Final cutscene with story conclusion
  - Background images with text overlay (similar to opening scene system)
  - Transition effects between ending screens
- `Scenes/CreditsScene.cs` — Scrolling credits:
  - Staff names scrolling upward (reuse text scroll system from Phase 3)
  - Background image or animation during credits
  - Music track playing during credits (Credits theme)
  - ENTER key to skip/fast-forward
  - Return to title screen after credits complete

### Test
- **Visual test:** Trigger ending scene → cutscene plays with images and text
- **Visual test:** Credits scroll smoothly with correct text
- **Visual test:** ENTER skips to end of credits
- **Flow test:** Defeat Jashiin → ending scene → credits → title screen
- **Comparison:** Ending sequence matches DOSBox side-by-side

### Key Files
- `MONOGAME_AUTHENTIC/Scenes/EndingScene.cs` (new)
- `MONOGAME_AUTHENTIC/Scenes/CreditsScene.cs` (new)

---

## Phase 21: Content Population & Final Testing
**Goal:** Complete game from start to finish

### Implement
- All 8 cavern levels with authentic tile data
- All 30+ enemy types placed correctly per level
- All 10 boss encounters
- All 9 towns with correct NPCs, shops, prices
- All items obtainable at correct locations
- Complete progression: Muralla → defeat Cangrejo → Satono → ... → defeat Jashiin
- Full opening → gameplay → ending → credits flow

### Test
- **Playthrough test:** Complete game start to finish (opening scene through credits)
- **Side-by-side test:** Compare key moments against DOSBox recording
- **Save compatibility:** Load all 12 DOS save files, verify correct game state
- **Edge cases:** XP overflow, max level, equipment limits
- **Full loop:** Opening → Title → New Game → all 8 caverns → all bosses → Jashiin → Ending → Credits → Title

---

## Assembly Extraction Reference

### Global Variables (Memory addresses to map)
From assembly patterns like `mov byte [cs:0xff__],VALUE`:
| Address | Likely Purpose | Source File |
|---------|---------------|-------------|
| 0xFF1D | Game state flag | zelres1/chunk_00.asm:0x0B |
| 0xFF29 | Animation flag | zelres1/chunk_00.asm:0x11 |
| 0xFF2C | Segment pointer (ES) | zelres1/chunk_00.asm:0x2F |
| 0xFF31 | Data pointer (SI source) | zelres2/chunk_04.asm:0x46 |
| 0xFF75 | Rendering flag | zelres1/chunk_00.asm:0xFD |

### Key Assembly Patterns to Search
```
Walk speed:    add ax,0x0??? near [player_x] updates
Gravity:       add ax,0x00?? near [y_velocity] updates
Jump:          mov ax,0xF??? (negative value) to [y_velocity]
Damage:        shr bx,1 (level/2) then add ax,bx
State machine: cmp al,0x?? / jz .handler (enemy AI states)
Cinematic:     Text scroll loops, keyboard polling, chunk loads for scene images
```

### Fixed-Point Cheat Sheet
```
0x0100 = 1.0    0x0080 = 0.5
0x0200 = 2.0    0x0040 = 0.25
0x0400 = 4.0    0x0020 = 0.125
0xFE00 = -2.0   0xFC00 = -4.0
```

---

## Verification Strategy

Each phase includes specific tests. The overall verification approach:

1. **Unit tests** for formulas and data (damage calc, XP tables, item stats)
2. **Visual tests** for rendering (compare screenshots against DOSBox — pixel-level for extracted sprites)
3. **Behavioral tests** for mechanics (record DOSBox gameplay, compare frame-by-frame)
4. **Integration tests** for game flow (opening → play → save → load → continue → ending)
5. **Save file compatibility** — original DOS .usr files load correctly at every phase
6. **Audio comparison** — extracted music/SFX compared against DOSBox audio output

Run tests with: `dotnet run -- --test` (existing test infrastructure)
Run game with: `dotnet run`
