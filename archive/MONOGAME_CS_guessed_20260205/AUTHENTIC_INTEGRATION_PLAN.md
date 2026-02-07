# Authentic Logic Integration Plan

## Goal
Replace "guessed" mechanics in ZeliardModern with **authentic logic** from decompiled C sources.

## What You Now Have

### ZeliardModern (MonoGame Implementation)
- ✅ Complete game engine structure
- ✅ Asset pipeline and rendering
- ✅ UI and menu systems
- ⚠️ **Mechanics based on educated guesses** (needs replacement)

### Zeliard2026 (Decompiled C)
- ✅ **Authentic game logic** from original assembly
- ✅ 4 working compiled executables
- ✅ Complete source code (0 compilation errors)
- ✅ **Ground truth** for all mechanics

## Integration Strategy

### Phase 1: Identify Guessed Mechanics

**Files to Audit in ZeliardModern:**
```
Systems/PlayerSystem.cs      - Player movement, jumping, physics
Systems/CombatSystem.cs       - Damage calculation, attacks
Systems/EnemyAI.cs            - Enemy behavior patterns
Models/Player.cs              - Stats, leveling, XP formulas
Physics/PhysicsEngine.cs      - Gravity, velocity, collisions
```

**Compare Against Decompiled:**
```
zeliard2026/src/core/        - Core player mechanics
zeliard2026/src/systems/     - Combat, movement systems
zeliard2026/src/levels/      - Level/enemy behavior
```

### Phase 2: Extract Authentic Constants

#### From Decompiled C → MonoGame C#

**Example: Player Movement**

**Decompiled C** (search in zelres1_chunk files):
```c
// Find player velocity/acceleration constants
#define WALK_SPEED 0x0200    // Fixed-point (256 = 1.0)
#define JUMP_VELOCITY 0x0400
#define GRAVITY 0x0020
```

**MonoGame C#** (Systems/PlayerSystem.cs):
```csharp
// Replace guessed values with authentic constants
public const float WALK_SPEED = 2.0f;        // From 0x0200 >> 8
public const float JUMP_VELOCITY = 4.0f;     // From 0x0400 >> 8
public const float GRAVITY = 0.125f;         // From 0x0020 >> 8
```

### Phase 3: Port Authentic Algorithms

#### Example: Damage Calculation

**Step 1: Find in Decompiled C**
```bash
cd zeliard2026
grep -r "damage\|attack\|sword" src/systems/ src/core/
```

**Step 2: Locate Function**
Look for damage calculation functions (e.g., `FUN_0000_xxxx`)

**Step 3: Port to C#**

**Decompiled C** (simplified example):
```c
int calculate_damage(int base_dmg, int player_level, int weapon_bonus) {
    int damage = base_dmg;
    damage += (player_level >> 1);  // Level / 2
    damage += weapon_bonus;

    // Random variance ±25%
    int variance = (rand() % (damage >> 2)) - (damage >> 3);
    damage += variance;

    return damage;
}
```

**MonoGame C#** (Systems/CombatSystem.cs):
```csharp
public int CalculateDamage(int baseDamage, int playerLevel, int weaponBonus)
{
    int damage = baseDamage;
    damage += (playerLevel >> 1);  // Exact same bit shift!
    damage += weaponBonus;

    // Match original random variance
    int variance = (random.Next() % (damage >> 2)) - (damage >> 3);
    damage += variance;

    return damage;
}
```

**Key: Match the exact bit operations!**

### Phase 4: Verify Against C Executable

#### Create Instrumented C Build

**1. Add Logging to Decompiled C**

Edit `zeliard2026/src/systems/zelres2_chunk_00_decompiled.c`:
```c
#include <stdio.h>

// Add logging to damage function
int calculate_damage(int base, int level, int bonus) {
    int result = /* original calculation */;

    // Log for comparison
    fprintf(stderr, "DAMAGE: base=%d level=%d bonus=%d result=%d\n",
            base, level, bonus, result);

    return result;
}
```

**2. Rebuild**
```bash
cd zeliard2026/cmake-build-debug-fullgame
cmake --build . --target zeliard
```

**3. Run and Capture Output**
```bash
./zeliard.exe 2> damage_log.txt
```

**4. Compare MonoGame Output**
```csharp
// In ZeliardModern CombatSystem.cs
var damage = CalculateDamage(base, level, bonus);
Console.WriteLine($"DAMAGE: base={baseDmg} level={level} bonus={bonus} result={damage}");
```

**5. Side-by-Side Comparison**
```bash
# C executable output
DAMAGE: base=10 level=5 bonus=3 result=15

# MonoGame output
DAMAGE: base=10 level=5 bonus=3 result=15
```

If they match ✅ - you have authentic behavior!

### Phase 5: Priority Mechanics to Replace

#### High Priority (Core Gameplay)

**1. Player Movement**
- Walking speed
- Jump velocity and arc
- Gravity constant
- Air control
- Friction values

**Find in:** `zelres1_chunk_00_decompiled.c` (player movement functions)
**Replace in:** `ZeliardModern/Systems/PlayerSystem.cs`

**2. Combat Damage**
- Base damage formula
- Level scaling
- Weapon bonuses
- Critical hits
- Enemy defense

**Find in:** `zelres2_chunk_*_decompiled.c` (combat functions)
**Replace in:** `ZeliardModern/Systems/CombatSystem.cs`

**3. Enemy AI Behavior**
- Movement patterns
- Chase triggers
- Attack ranges
- State transitions

**Find in:** `zelres2_chunk_*_decompiled.c` (enemy AI)
**Replace in:** `ZeliardModern/Systems/EnemyAI.cs`

**4. Experience & Leveling**
- XP requirements per level
- Stat increases per level
- HP/MP gains

**Find in:** `zelres1_chunk_*_decompiled.c` (player stats)
**Replace in:** `ZeliardModern/Models/Player.cs`

#### Medium Priority

**5. Collision Detection**
- Hitbox sizes
- Collision responses
- Platform detection

**6. Item Effects**
- Potion healing amounts
- Equipment stat bonuses
- Magic costs

#### Low Priority

**7. UI Positioning**
- HUD layouts
- Menu coordinates
- Text positioning

### Phase 6: Automated Comparison Testing

#### Create Test Harness

**zeliard2026/test_harness.c**:
```c
// Run specific scenarios and output results
void test_jump_arc() {
    float pos_y = 0;
    float vel_y = JUMP_VELOCITY;

    for (int frame = 0; frame < 60; frame++) {
        vel_y += GRAVITY;
        pos_y += vel_y;
        printf("FRAME:%d POS:%.2f VEL:%.2f\n", frame, pos_y, vel_y);
    }
}
```

**ZeliardModern/Tests/JumpArcTest.cs**:
```csharp
public void TestJumpArc()
{
    float posY = 0;
    float velY = PlayerSystem.JUMP_VELOCITY;

    for (int frame = 0; frame < 60; frame++)
    {
        velY += PlayerSystem.GRAVITY;
        posY += velY;
        Console.WriteLine($"FRAME:{frame} POS:{posY:F2} VEL:{velY:F2}");
    }
}
```

**Compare outputs** - they should match exactly!

### Phase 7: Document Authentic Sources

#### Create Reference Document

**ZeliardModern/AUTHENTIC_SOURCES.md**:
```markdown
# Authentic Mechanics Sources

## Player Movement
- **C Source:** `zelres1_chunk_00_decompiled.c:1234` - FUN_0000_1234
- **Constants:** WALK_SPEED=0x0200, JUMP=0x0400, GRAVITY=0x0020
- **Verified:** ✅ 2025-02-01

## Damage Calculation
- **C Source:** `zelres2_chunk_04_decompiled.c:5678` - FUN_0000_5678
- **Formula:** base + (level>>1) + weapon + rand_variance
- **Verified:** ✅ 2025-02-01
```

## Tools & Workflow

### Recommended IDE Setup

**1. Side-by-Side Development**
```
Monitor 1: CLion (zeliard2026 C code)
Monitor 2: Rider/VS (ZeliardModern C# code)
```

**2. Quick Reference Workflow**
```bash
# Find mechanics in C
cd zeliard2026
grep -rn "keyword" src/

# Port to C#
cd ZeliardModern
# Edit Systems/*.cs

# Test C version
cd zeliard2026/cmake-build-debug-fullgame
./zeliard.exe > test_c.log

# Test C# version
cd ZeliardModern
dotnet run > test_cs.log

# Compare
diff test_c.log test_cs.log
```

### Search Patterns for Key Mechanics

**Player Stats:**
```bash
grep -rn "level.*xp\|experience" src/
grep -rn "health.*max\|hp" src/
```

**Combat:**
```bash
grep -rn "damage\|attack\|sword" src/
grep -rn "enemy.*health\|enemy.*damage" src/
```

**Physics:**
```bash
grep -rn "velocity\|gravity\|jump" src/
grep -rn "collision\|hitbox" src/
```

**Movement:**
```bash
grep -rn "walk.*speed\|move.*speed" src/
grep -rn "friction\|acceleration" src/
```

## Success Criteria

### ✅ Mechanics Match When:

1. **Constants Match**
   - Walk speed
   - Jump height
   - Gravity
   - Attack ranges

2. **Formulas Match**
   - Damage calculations
   - XP requirements
   - Stat scaling

3. **Behavior Matches**
   - Jump arcs identical
   - Enemy AI patterns match
   - Collision responses match

4. **Frame-by-Frame Match**
   - Record C executable gameplay
   - Record MonoGame gameplay
   - Compare side-by-side
   - Physics should be identical

## Quick Start Checklist

- [ ] 1. Identify first mechanic to replace (start with player movement)
- [ ] 2. Find corresponding function in decompiled C
- [ ] 3. Extract constants and formula
- [ ] 4. Port to MonoGame C#
- [ ] 5. Add logging to both versions
- [ ] 6. Compare outputs
- [ ] 7. Adjust until outputs match exactly
- [ ] 8. Document in AUTHENTIC_SOURCES.md
- [ ] 9. Move to next mechanic

## Example: Complete Player Movement Port

### Step-by-Step

**1. Find in C** (`zelres1_chunk_00_decompiled.c`):
```c
#define WALK_SPEED 0x0200
player_x += (input_left ? -WALK_SPEED : input_right ? WALK_SPEED : 0);
```

**2. Port to C#** (`PlayerSystem.cs`):
```csharp
public const float WALK_SPEED = 2.0f; // 0x0200 >> 8
player.Position.X += (input.Left ? -WALK_SPEED : input.Right ? WALK_SPEED : 0);
```

**3. Test**:
- Press RIGHT for 60 frames in C version
- Press RIGHT for 60 frames in C# version
- Player should be at SAME position

**4. Document**:
```markdown
## Player Walking
- Source: zelres1_chunk_00_decompiled.c:1234
- Constant: 0x0200 (2.0 pixels/frame)
- Verified: Positions match after 60 frames
```

## Benefits of This Approach

1. **Authenticity Guaranteed** - Logic comes from original assembly
2. **Verifiable** - Can compare against compiled C executable
3. **Incremental** - Replace one mechanic at a time
4. **Documented** - Track what's been replaced
5. **Testable** - Automated comparison tests

## Next Steps

1. Start with **player movement** (most visible, easiest to test)
2. Move to **jump physics** (critical for feel)
3. Then **combat damage** (core gameplay)
4. Finally **enemy AI** (most complex)

---

**You now have:**
- ✅ Complete MonoGame structure (ZeliardModern)
- ✅ Authentic game logic (zeliard2026)
- ✅ Working executables for comparison
- ✅ This integration plan

**Time to make ZeliardModern truly authentic!** 🎮
