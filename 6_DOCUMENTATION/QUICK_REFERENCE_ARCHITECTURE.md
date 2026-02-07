# Quick Reference: Zeliard Architecture

## One-Page Visual Reference

```
┌──────────────────────────────────────────────────────────────────────┐
│                          ZELIARD ARCHITECTURE                         │
└──────────────────────────────────────────────────────────────────────┘

DOS LAUNCH
    ↓
┌─────────────┐
│ ZELIAD.EXE  │ ← You type: ZELIAD
│   (3KB)     │   Entry point, DOS loader
└──────┬──────┘
       │ Loads ↓
┌─────────────┐
│  GAME.BIN   │ ← Main dispatcher & chunk loader
│   (1.2KB)   │   Orchestrates everything
└──────┬──────┘
       │
       ├─ Loads Graphics Driver ──→ ┌────────────┐
       │                             │ GM*.BIN    │ CGA/EGA/VGA
       │                             │  (60KB)    │ Low-level gfx
       │                             └────────────┘
       │
       ├─ Opens SAR Archives ──→ ┌──────────────────────────────┐
       │                          │ ZELRES1.SAR (251KB)          │
       │                          │ ZELRES2.SAR (338KB)          │
       │                          │ ZELRES3.SAR (335KB)          │
       │                          └──────────────────────────────┘
       │
       └─ Starts Main Loop ──→ ┌────────────────────────────────────┐
                                │  MAIN GAME LOOP                    │
                                │  (ZELRES2/Chunk 00)                │
                                │                                    │
                                │  1. Input  ────→ ZELRES1/00        │
                                │  2. Update ────→ ZELRES2/00-17     │
                                │  3. Render ────→ GM*.BIN           │
                                │  4. Wait   ────→ Timer             │
                                │                                    │
                                │  (Loops at ~18 FPS)                │
                                └────────────────────────────────────┘
```

## Critical Files for Porting

```
┌──────────────────┬───────────────────┬─────────────┬────────────────┐
│ Component        │ Assembly File     │ Size        │ Priority       │
├──────────────────┼───────────────────┼─────────────┼────────────────┤
│ Player Core      │ zelres1/chunk_00  │ 240KB asm   │ ⭐⭐⭐ CRITICAL │
│ Main Systems     │ zelres2/chunk_00  │ 266KB asm   │ ⭐⭐⭐ CRITICAL │
│ Player Advanced  │ zelres1/chunk_06  │ 119KB asm   │ ⭐⭐⭐ CRITICAL │
│ Combat/Damage    │ zelres2/chunk_02  │ 162KB asm   │ ⭐⭐⭐ CRITICAL │
│ Physics Engine   │ zelres2/chunk_04  │ 163KB asm   │ ⭐⭐⭐ CRITICAL │
│ Enemy AI Core    │ zelres2/chunk_05  │ 180KB asm   │ ⭐⭐⭐ CRITICAL │
│ Enemy AI Advanced│ zelres2/chunk_06  │ 166KB asm   │ ⭐⭐⭐ CRITICAL │
│ Combat Support   │ zelres2/chunk_01  │  60KB asm   │ ⭐⭐ HIGH      │
│ Physics Support  │ zelres2/chunk_03  │ 166KB asm   │ ⭐⭐ HIGH      │
│ Enemy Types      │ zelres2/chunks 07-17│  ~150KB  │ ⭐⭐ HIGH      │
│ Level Loader     │ zelres3/chunk_00  │  53KB asm   │ ⭐ MEDIUM     │
│ Level Renderer   │ zelres3/chunk_14  │  82KB asm   │ ⭐ MEDIUM     │
└──────────────────┴───────────────────┴─────────────┴────────────────┘
```

## Memory Layout Simplified

```
┌────────────────────────────────────────┐
│ CS:0000  GAME.BIN (orchestrator)       │
├────────────────────────────────────────┤
│ CS:3000  Graphics Driver (GM*.BIN)     │
├────────────────────────────────────────┤
│ CS:6000  ZELRES1 Chunks (Player)       │ ← chunk_00 loads here
├────────────────────────────────────────┤
│ CS:9000  ZELRES2 Chunks (Systems)      │ ← chunk_00 loads here
├────────────────────────────────────────┤
│ CS:C000  ZELRES3 Chunks (Levels)       │ ← Level data
├────────────────────────────────────────┤
│ CS:E200  Additional Chunks             │ ← Dynamic loading
├────────────────────────────────────────┤
│ CS:FF00  Global Variables (256 bytes)  │ ← Player stats, flags
└────────────────────────────────────────┘
```

## Game Loop Expanded

```
┌────────────────────────────────────────────────────────────┐
│ while (playing) {                                          │
│                                                            │
│   ┌─── INPUT ──────────────────────────────────────────┐ │
│   │ Read keyboard (INT 16h)                           │ │
│   │ Update input flags                                │ │
│   │ Check for menu/pause                              │ │
│   └───────────────────────────────────────────────────┘ │
│                                                            │
│   ┌─── UPDATE ─────────────────────────────────────────┐ │
│   │                                                     │ │
│   │ Player Update (ZELRES1/00):                        │ │
│   │   • Process input → movement                       │ │
│   │   • Apply physics (gravity, velocity)              │ │
│   │   • Check collisions with tiles                    │ │
│   │   • Update animation frame                         │ │
│   │                                                     │ │
│   │ Enemy Update (ZELRES2/05-17):                      │ │
│   │   For each enemy:                                  │ │
│   │     • Run AI state machine                         │ │
│   │     • Calculate movement                           │ │
│   │     • Check attack range                           │ │
│   │     • Update animation                             │ │
│   │                                                     │ │
│   │ Combat Update (ZELRES2/01-02):                     │ │
│   │   • Check player attack input                      │ │
│   │   • Calculate damage (base + level + weapon)       │ │
│   │   • Check hit detection (AABB)                     │ │
│   │   • Apply damage                                   │ │
│   │                                                     │ │
│   │ Physics Update (ZELRES2/03-04):                    │ │
│   │   • Update all velocities                          │ │
│   │   • Apply gravity                                  │ │
│   │   • Check collisions                               │ │
│   │   • Resolve penetrations                           │ │
│   │                                                     │ │
│   └─────────────────────────────────────────────────────┘ │
│                                                            │
│   ┌─── RENDER ─────────────────────────────────────────┐ │
│   │ Clear back buffer                                  │ │
│   │ Draw background tiles (ZELRES3)                    │ │
│   │ Draw enemies                                       │ │
│   │ Draw player                                        │ │
│   │ Draw projectiles/effects                           │ │
│   │ Draw HUD                                           │ │
│   │ Flip buffers (call GM*.BIN)                        │ │
│   └─────────────────────────────────────────────────────┘ │
│                                                            │
│   ┌─── TIMING ─────────────────────────────────────────┐ │
│   │ Wait for timer tick (~55ms for 18.2 FPS)          │ │
│   └─────────────────────────────────────────────────────┘ │
│                                                            │
│ }                                                          │
└────────────────────────────────────────────────────────────┘
```

## Chunk Organization

```
ZELRES1.SAR ─ Player Code & Resources
    ├─ chunk_00.bin ⭐ Main player mechanics (14KB)
    ├─ chunk_06.bin ⭐ Advanced player (12KB)
    ├─ chunk_02,04,24,30 ─ Support code
    └─ chunk_01,03,05,07-39 ─ Data/Graphics

ZELRES2.SAR ─ Combat, AI, Physics
    ├─ chunk_00.bin ⭐ Main systems (16KB)
    ├─ chunk_01.bin ⭐ Combat (11KB)
    ├─ chunk_02.bin ⭐ Damage calc (24KB)
    ├─ chunk_03.bin ⭐ Physics support (23KB)
    ├─ chunk_04.bin ⭐ Physics engine (20KB)
    ├─ chunk_05.bin ⭐ AI framework (25KB)
    ├─ chunk_06.bin ⭐ AI behaviors (21KB)
    ├─ chunk_07-17.bin ─ Enemy types
    ├─ chunk_38-39.bin ─ Utilities
    └─ chunk_11,18-37 ─ Data/Effects

ZELRES3.SAR ─ Level Data
    ├─ chunk_00.bin ─ Level loader (3KB)
    ├─ chunk_14.bin ─ Level renderer (7KB)
    ├─ chunk_16,31.bin ─ Utilities
    ├─ chunk_01-13.bin ─ 8 level maps
    └─ chunk_15,17-39 ─ Tiles/Graphics
```

## Where to Find Things

```
Need player walk speed?
    → 4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres1_chunks/chunk_00.asm
    → Search for: "0x0200" or "add.*player"

Need damage formula?
    → 4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres2_chunks/chunk_02.asm
    → Search for: "damage" or "attack" patterns

Need enemy AI?
    → 4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres2_chunks/chunk_05.asm
    → Look for state machine (cmp, jz patterns)

Need physics constants?
    → 4_ASSEMBLY_DISASSEMBLY/assembly_output/zelres2_chunks/chunk_04.asm
    → Search for: "0x0020" (gravity) or velocity updates
```

## MonoGame Porting Checklist

```
Phase 1: Core Player (Week 1)
□ Walk speed (zelres1/00)
□ Jump velocity (zelres1/00)
□ Gravity constant (zelres2/04)
□ Collision detection (zelres2/04)
□ Animation states (zelres1/00)

Phase 2: Combat (Week 2)
□ Damage formula (zelres2/02)
□ Hit detection (zelres2/01)
□ Attack animations (zelres1/06)
□ XP/leveling (zelres2/00)

Phase 3: Enemy AI (Week 3)
□ AI state machine (zelres2/05)
□ Chase behavior (zelres2/06)
□ Attack patterns (zelres2/07-17)
□ Enemy physics (zelres2/04)

Phase 4: Polish (Week 4)
□ Projectiles
□ Items/pickups
□ Sound effects
□ Menu systems
```

## Key Assembly Patterns to Recognize

```assembly
; Movement pattern
mov ax,[player_x]        ; Load position
add ax,0x0200            ; Add velocity (2.0 fixed-point)
mov [player_x],ax        ; Store position

; Damage pattern
mov ax,[base_damage]     ; Load base
mov bx,[player_level]    ; Load level
shr bx,1                 ; Divide by 2
add ax,bx                ; Add to damage

; AI pattern
mov al,[enemy_state]     ; Load state
cmp al,0x02              ; Check if chasing
je .chase_handler        ; Jump to handler
```

## Fixed-Point Math Cheat Sheet

```
0x0100 = 256 = 1.0
0x0200 = 512 = 2.0
0x0020 = 32 = 0.125 (typical gravity)
0x0400 = 1024 = 4.0 (typical jump)

To convert to float:
C#: float value = assemblyValue / 256.0f;
```

---

**Start your port here:**
1. Read [EXECUTION_FLOW_MAP.md](EXECUTION_FLOW_MAP.md) for complete details
2. Open `zelres1_chunks/chunk_00.asm` (player code)
3. Extract constants and port to `MONOGAME_CS/Systems/PlayerSystem.cs`
4. Verify behavior matches original

🎮 **You have everything you need for an authentic port!**
