# Zeliard MonoGame - C# Implementation Roadmap

**Date**: 2026-02-11
**Current Status**: Phases 1-3 Complete (Foundation & Rendering)
**Goal**: Full authentic gameplay matching DOS assembly

---

## Executive Summary

Based on 47 assembly walkthroughs documenting the original game engine, this plan outlines **12 implementation phases** (Phases 4-15) to complete the MonoGame C# port.

**Estimated Total**: ~7,250 lines of new code across 3-5 sprints

---

## Current Implementation Status

### ✅ COMPLETED (Phases 1-3) - 100%

| System | File | Purpose | Status |
|--------|------|---------|--------|
| DOS Rendering | `Core/DOSScreen.cs` | 320×200 RenderTarget2D, 3× scaling | ✅ |
| Palette System | `Core/DOSPalette.cs` | 27-color MCGA cube (needs update) | ⚠️ Outdated |
| GRP Decoder | `Core/GrpDecoder.cs` | VGA framebuffer, verified palettes | ✅ |
| Chunk Loader | `Core/SpriteExtractor.cs` | Load .bin files, 20 decode modes | ✅ |
| Frame Timing | `Core/AnimationPlayer.cs` | DOS 18.2 FPS timing | ✅ |
| State Machine | `Core/GameStateManager.cs` | Opening→Title→Playing states | ✅ |
| Input System | `Input/InputManager.cs` | Action-based (pressed/held/released) | ✅ |
| Save/Load | `Core/SaveManager.cs` | Binary save format | ✅ |
| Opening Scene | `Scenes/OpeningScene.cs` | Story text (placeholder backgrounds) | 🚧 Partial |
| Title Screen | `UI/TitleScreen.cs` | Menu UI (New Game/Load) | ✅ |
| Debug Tools | `Scenes/ChunkExplorer.cs` | F2 chunk browser | ✅ |

**Legend**: ✅ Complete | 🚧 Partial | ⚠️ Needs Replacement | ❌ Missing

---

## Missing Critical Systems

### Player Systems (zelres1 chunks)
- ❌ Player entity class with position, velocity, state
- ❌ Movement & physics integration
- ❌ Animation state machine (11 states: idle, walk, jump, attack, etc.)
- ❌ Equipment & inventory (32 slots, 6 equip slots)
- ❌ Stats & leveling (HP/MP/ATK/DEF, level-up formulas)
- ❌ Combat (sword hitboxes, magic, damage calculation)

### Core Gameplay (zelres2 chunks)
- ❌ Main game loop (18.2 Hz fixed timestep)
- ❌ Physics engine (gravity, collisions, slopes)
- ❌ Enemy AI framework
- ❌ 14+ enemy types with unique behaviors
- ❌ Combat system (player vs enemy damage)
- ❌ HUD rendering (HP/MP bars, score, lives)

### Level Systems (zelres3 chunks)
- ❌ Level loader with animated transitions
- ❌ Tilemap renderer (background/foreground layers)
- ❌ Collision detection (tile-based)
- ❌ Spawn point system
- ❌ Trigger/event system (doors, switches)

### Graphics Systems
- ❌ .grp image decoder (two-stage RLE + bitmap/XOR)
- ❌ Gameplay sprite decoder (packed 6-bit format)
- ❌ VGA palette switching (per-scene palettes)
- ❌ 4-plane bitplane renderer

---

## Implementation Phases (4-15)

## 📋 PHASE 4: Core Player Entity
**Complexity**: 🟢 SIMPLE
**Estimated Effort**: ~300 lines, 2-3 classes
**Goal**: Player character exists in world with basic movement

### Systems to Implement

#### 1. Player.cs - Core player entity
```csharp
public class Player
{
    // Position & Velocity (from zelres1_chunk_00, offsets 0x0080-0x009F)
    public Vector2 Position { get; set; }        // 0x0080 (X), 0x0083 (Y)
    public Vector2 Velocity { get; set; }        // 0x0085/86 (VX), 0x008C (VY)

    // State Flags
    public bool FacingRight { get; set; }        // 0x0082 (direction)
    public bool OnGround { get; set; }
    public bool CanJump => OnGround;

    // Constants
    private const float WalkSpeed = 2.0f;        // pixels/frame
    private const float JumpStrength = -8.0f;    // pixels/frame

    public void Update(GameTime gameTime) { }
    public void Draw(SpriteBatch spriteBatch) { }
}
```

#### 2. PlayerController.cs - Input → movement
```csharp
public class PlayerController
{
    public void ProcessInput(InputManager input, Player player)
    {
        // Horizontal movement
        if (input.IsHeld(GameAction.Left))
        {
            player.Velocity = new Vector2(-2.0f, player.Velocity.Y);
            player.FacingRight = false;
        }
        else if (input.IsHeld(GameAction.Right))
        {
            player.Velocity = new Vector2(2.0f, player.Velocity.Y);
            player.FacingRight = true;
        }
        else
        {
            player.Velocity = new Vector2(0, player.Velocity.Y); // Friction
        }

        // Jump
        if (input.IsPressed(GameAction.Jump) && player.CanJump)
        {
            player.Velocity = new Vector2(player.Velocity.X, -8.0f);
            player.OnGround = false;
        }
    }
}
```

#### 3. Camera.cs - Follow player
```csharp
public class Camera
{
    public Vector2 Position { get; set; }

    public void Follow(Player player, int levelWidth, int levelHeight)
    {
        // Center camera on player
        float targetX = player.Position.X - DOSScreen.WIDTH / 2;
        float targetY = player.Position.Y - DOSScreen.HEIGHT / 2;

        // Clamp to level bounds
        targetX = Math.Clamp(targetX, 0, levelWidth - DOSScreen.WIDTH);
        targetY = Math.Clamp(targetY, 0, levelHeight - DOSScreen.HEIGHT);

        Position = new Vector2(targetX, targetY);
    }
}
```

### Assembly Reference
- **zelres1_chunk_00** (offsets 0x0080-0x009F) - Player position/velocity variables
- **zelres1_chunk_06** (lines 123-796) - Player movement code
- **zelres3_chunk_14** - Camera/scrolling system

### Dependencies
- **Requires**: Phases 1-3 (rendering, input, state machine)
- **Blocks**: Phase 5 (physics needs player to apply forces)

---

## 📋 PHASE 5: Physics Engine
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~600 lines, 3-4 classes
**Goal**: Gravity, collision detection, and resolution

### Systems to Implement

#### 1. PhysicsEngine.cs - Core physics loop
```csharp
public class PhysicsEngine
{
    private const float Gravity = 0.5f; // 9.8 / 18.2 FPS ≈ 0.538 px/frame²

    public void Update(Player player, CollisionMap collisionMap)
    {
        // Apply gravity
        if (!player.OnGround)
        {
            player.Velocity += new Vector2(0, Gravity);
        }

        // Apply velocity
        player.Position += player.Velocity;

        // Detect collisions
        player.OnGround = false;
        ResolveCollisions(player, collisionMap);
    }

    private void ResolveCollisions(Player player, CollisionMap map)
    {
        Rectangle playerBox = GetPlayerBounds(player);

        // Check tile collisions in 8 directions
        for (int tileY = playerBox.Top / 16; tileY <= playerBox.Bottom / 16; tileY++)
        {
            for (int tileX = playerBox.Left / 16; tileX <= playerBox.Right / 16; tileX++)
            {
                if (map.IsSolid(tileX, tileY))
                {
                    Rectangle tileBounds = map.GetTileBounds(tileX, tileY);

                    if (playerBox.Intersects(tileBounds))
                    {
                        // Resolve collision (push player out)
                        ResolveIntersection(player, playerBox, tileBounds);
                    }
                }
            }
        }
    }

    private Rectangle GetPlayerBounds(Player player)
    {
        return new Rectangle(
            (int)player.Position.X,
            (int)player.Position.Y,
            16, // Player width
            24  // Player height
        );
    }
}
```

#### 2. CollisionMap.cs - Tile-based collision
```csharp
public class CollisionMap
{
    private byte[,] tiles; // 0 = empty, 1 = solid
    private const int TileSize = 16; // 16×16 pixel tiles

    public CollisionMap(int width, int height)
    {
        tiles = new byte[height, width];
    }

    public bool IsSolid(int tileX, int tileY)
    {
        if (tileX < 0 || tileY < 0 || tileX >= tiles.GetLength(1) || tileY >= tiles.GetLength(0))
            return true; // Out of bounds = solid

        return tiles[tileY, tileX] == 1;
    }

    public Rectangle GetTileBounds(int tileX, int tileY)
    {
        return new Rectangle(tileX * TileSize, tileY * TileSize, TileSize, TileSize);
    }

    public void SetTile(int tileX, int tileY, byte value)
    {
        if (tileX >= 0 && tileY >= 0 && tileX < tiles.GetLength(1) && tileY < tiles.GetLength(0))
            tiles[tileY, tileX] = value;
    }
}
```

#### 3. PhysicsMath.cs - Fixed-point arithmetic (optional)
```csharp
public static class PhysicsMath
{
    // DOS used 8.8 fixed-point: 16-bit value where lower 8 bits = fraction
    public static float FromFixed88(short value)
    {
        return value / 256.0f;
    }

    public static short ToFixed88(float value)
    {
        return (short)(value * 256.0f);
    }

    // Slope calculation (for ramps/stairs)
    public static float CalculateSlope(int x1, int y1, int x2, int y2)
    {
        if (x2 == x1) return float.PositiveInfinity;
        return (y2 - y1) / (float)(x2 - x1);
    }
}
```

### Assembly Reference
- **zelres2_chunk_04** (lines 1-500) - Physics engine main loop
- **zelres2_chunk_03** (lines 100-400) - Collision resolution
- **zelres3_chunk_16** - Tile collision data structure

### Dependencies
- **Requires**: Phase 4 (player entity)
- **Blocks**: Phase 6 (animation states depend on physics)

---

## 📋 PHASE 6: Player Animation System
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~400 lines, 3 classes
**Goal**: Player sprite changes based on state (walk, jump, attack)

### Systems to Implement

#### 1. PlayerAnimator.cs - State machine
```csharp
public enum AnimationState
{
    Idle = 0,       // 0x00 (standing still)
    Walk = 1,       // 0x01 (walking)
    Run = 2,        // 0x02 (running, faster)
    JumpUp = 3,     // 0x03 (rising in air)
    JumpPeak = 4,   // 0x04 (apex of jump)
    JumpDown = 5,   // 0x05 (falling)
    Attack1 = 6,    // 0x06 (sword swing)
    Attack2 = 7,    // 0x07 (alternate attack)
    Hit = 8,        // 0x08 (damage reaction)
    Death = 9,      // 0x09 (death animation)
    Crouch = 10     // 0x0A (crouching)
}

public class PlayerAnimator
{
    private AnimationState currentState = AnimationState.Idle;
    private int currentFrame = 0;         // 0x0083 (animation frame counter 0-27)
    private float frameTimer = 0f;
    private const float FrameTime = 1f / 18.2f; // DOS 18.2 FPS

    private static readonly int[] FrameCounts = new int[]
    {
        2,  // Idle: 2 frames
        8,  // Walk: 8 frames
        8,  // Run: 8 frames
        1,  // JumpUp: 1 frame (held)
        1,  // JumpPeak: 1 frame
        1,  // JumpDown: 1 frame (held)
        6,  // Attack1: 6 frames
        6,  // Attack2: 6 frames
        3,  // Hit: 3 frames
        8,  // Death: 8 frames (no loop)
        1   // Crouch: 1 frame
    };

    public void SetState(AnimationState newState)
    {
        if (currentState != newState)
        {
            currentState = newState;
            currentFrame = 0;
            frameTimer = 0f;
        }
    }

    public void Update(GameTime gameTime, Player player)
    {
        // Determine state from player physics
        if (player.Velocity.Y < 0)
            SetState(AnimationState.JumpUp);
        else if (player.Velocity.Y > 0 && !player.OnGround)
            SetState(AnimationState.JumpDown);
        else if (Math.Abs(player.Velocity.X) > 0.1f)
            SetState(AnimationState.Walk);
        else
            SetState(AnimationState.Idle);

        // Advance frame
        frameTimer += (float)gameTime.ElapsedGameTime.TotalSeconds;
        if (frameTimer >= FrameTime)
        {
            frameTimer -= FrameTime;
            currentFrame++;

            int maxFrames = FrameCounts[(int)currentState];
            if (currentFrame >= maxFrames)
            {
                if (currentState == AnimationState.Death)
                    currentFrame = maxFrames - 1; // Hold on last frame
                else
                    currentFrame = 0; // Loop
            }
        }
    }

    public int GetCurrentFrame()
    {
        // Calculate absolute frame index in sprite sheet
        int baseFrame = 0;
        for (int i = 0; i < (int)currentState; i++)
            baseFrame += FrameCounts[i];

        return baseFrame + currentFrame;
    }
}
```

#### 2. SpriteSheet.cs - Sprite frame storage
```csharp
public class SpriteSheet
{
    private Texture2D[] frames;

    public SpriteSheet(GraphicsDevice device, byte[] chunkData)
    {
        // Load sprite frames from zelres2 chunks 18-35
        // Each chunk contains 7 animation frames horizontally
        // 16×48 pixel sprites (16 wide, 48 tall per frame row)

        frames = ExtractFrames(device, chunkData);
    }

    private Texture2D[] ExtractFrames(GraphicsDevice device, byte[] data)
    {
        // TODO: Implement packed 6-bit sprite decoding
        // Reference: MEMORY.md "Gameplay Sprites" section

        var frameList = new List<Texture2D>();
        // ... extraction logic ...
        return frameList.ToArray();
    }

    public Texture2D GetFrame(int index)
    {
        if (index < 0 || index >= frames.Length)
            return frames[0]; // Default to first frame

        return frames[index];
    }
}
```

#### 3. Update PlayingState.cs - Integrate animator
```csharp
public class PlayingState : IGameStateHandler
{
    private Player player;
    private PlayerController controller;
    private PlayerAnimator animator; // NEW
    private SpriteSheet playerSprites; // NEW

    public void Update(GameTime gameTime, GameStateManager manager)
    {
        controller.ProcessInput(input, player);
        player.Update(gameTime);
        animator.Update(gameTime, player); // NEW
    }

    public void Draw(SpriteBatch spriteBatch, GameStateManager manager)
    {
        int frameIndex = animator.GetCurrentFrame();
        Texture2D sprite = playerSprites.GetFrame(frameIndex);

        // Flip sprite if facing left
        SpriteEffects flip = player.FacingRight ? SpriteEffects.None : SpriteEffects.FlipHorizontally;

        spriteBatch.Draw(sprite, player.Position, null, Color.White, 0f, Vector2.Zero, 1f, flip, 0f);
    }
}
```

### Assembly Reference
- **zelres1_chunk_00** (offsets 0x0A20-0x0CCF) - Animation state machine
- **zelres1_chunk_00** (offset 0x0083) - Animation frame counter (0-27)
- **zelres2 chunks 18-35** - Gameplay sprite data (7 frames × multiple rows)

### Dependencies
- **Requires**: Phase 4 (player entity), Phase 5 (physics for state determination)
- **Blocks**: Phase 7 (combat needs attack animation)

---

## 📋 PHASE 7: Combat System
**Complexity**: 🔴 COMPLEX
**Estimated Effort**: ~800 lines, 4-5 classes
**Goal**: Player can attack enemies, take damage

### Systems to Implement

#### 1. PlayerStats.cs - HP, MP, attack, defense
```csharp
public class PlayerStats
{
    // From zelres1_chunk_04 (offsets 0x6000-0x6050)
    public int Level { get; set; } = 1;              // 0x6000
    public uint Experience { get; set; } = 0;        // 0x6002 (32-bit)
    public uint Gold { get; set; } = 0;              // 0x6006

    public int CurrentHP { get; set; } = 50;         // 0x600A
    public int MaxHP { get; set; } = 50;             // 0x600C
    public int CurrentMP { get; set; } = 10;         // 0x600E
    public int MaxMP { get; set; } = 10;             // 0x6010

    public int BaseAttack { get; set; } = 5;         // 0x6012
    public int BaseDefense { get; set; } = 3;        // 0x6014
    public int BaseSpeed { get; set; } = 5;          // 0x6016
    public int BaseMagic { get; set; } = 2;          // 0x6018

    // Total stats (base + equipment bonuses)
    public int TotalAttack => BaseAttack + EquipmentAttackBonus;
    public int TotalDefense => BaseDefense + EquipmentDefenseBonus;

    // Equipment bonuses (set by EquipmentSlots in Phase 12)
    public int EquipmentAttackBonus { get; set; } = 0;
    public int EquipmentDefenseBonus { get; set; } = 0;

    // Status effects
    public ushort StatusFlags { get; set; } = 0;     // 0x6026 (bit flags)
    public byte PoisonTimer { get; set; } = 0;       // 0x6028
    public byte RegenTimer { get; set; } = 0;        // 0x6029
    public ushort InvincibleTimer { get; set; } = 0; // 0x602A

    public int CalculateDamage(int targetDefense)
    {
        // From zelres2_chunk_02 (damage formula)
        int baseDamage = TotalAttack - targetDefense;
        if (baseDamage < 1) baseDamage = 1; // Minimum 1 damage

        // ±10% variance
        float variance = (Random.Shared.NextSingle() * 0.2f) - 0.1f; // -0.1 to +0.1
        int finalDamage = (int)(baseDamage * (1.0f + variance));

        return Math.Max(1, finalDamage);
    }

    public void TakeDamage(int damage)
    {
        if (InvincibleTimer > 0) return; // I-frames active

        CurrentHP -= damage;
        if (CurrentHP < 0) CurrentHP = 0;

        // Set invincibility frames (60 frames = ~3.3 seconds at 18.2 FPS)
        InvincibleTimer = 60;
    }

    public void Update(GameTime gameTime)
    {
        // Update status effect timers
        if (InvincibleTimer > 0)
            InvincibleTimer--;

        if (PoisonTimer > 0)
        {
            PoisonTimer--;
            if (PoisonTimer % 18 == 0) // Every ~1 second
                TakeDamage(2); // Poison deals 2 HP/sec
        }

        if (RegenTimer > 0)
        {
            RegenTimer--;
            if (RegenTimer % 18 == 0) // Every ~1 second
            {
                CurrentHP = Math.Min(CurrentHP + 1, MaxHP); // Restore 1 HP/sec
            }
        }
    }
}
```

#### 2. CombatSystem.cs - Damage calculation & hitboxes
```csharp
public class CombatSystem
{
    public void Update(Player player, List<Enemy> enemies)
    {
        // Player attacks enemies
        if (player.IsAttacking) // Set by PlayerController when attack button pressed
        {
            Rectangle swordHitbox = GetSwordHitbox(player);

            foreach (Enemy enemy in enemies)
            {
                if (!enemy.IsDead && swordHitbox.Intersects(enemy.GetBounds()))
                {
                    int damage = player.Stats.CalculateDamage(enemy.Defense);
                    enemy.TakeDamage(damage);
                }
            }
        }

        // Enemies attack player
        foreach (Enemy enemy in enemies)
        {
            if (!enemy.IsDead && enemy.GetBounds().Intersects(player.GetBounds()))
            {
                int damage = enemy.Attack - player.Stats.TotalDefense;
                if (damage < 1) damage = 1;
                player.Stats.TakeDamage(damage);
            }
        }
    }

    private Rectangle GetSwordHitbox(Player player)
    {
        // From zelres1_chunk_06 (offsets 0x024B-0x028B)
        // Sword extends 24 pixels from player in facing direction

        int swordReach = 24;
        int swordWidth = 16;
        int swordHeight = 32;

        Rectangle hitbox;
        if (player.FacingRight)
        {
            hitbox = new Rectangle(
                (int)player.Position.X + 16, // Right of player
                (int)player.Position.Y,
                swordReach,
                swordHeight
            );
        }
        else
        {
            hitbox = new Rectangle(
                (int)player.Position.X - swordReach, // Left of player
                (int)player.Position.Y,
                swordReach,
                swordHeight
            );
        }

        return hitbox;
    }
}
```

#### 3. Update Player.cs - Add combat state
```csharp
public class Player
{
    // ... existing fields ...

    public PlayerStats Stats { get; set; } = new PlayerStats();
    public bool IsAttacking { get; set; } = false;
    public int AttackFrameCounter { get; set; } = 0;

    public void Update(GameTime gameTime)
    {
        Stats.Update(gameTime);

        // Update attack state
        if (IsAttacking)
        {
            AttackFrameCounter++;
            if (AttackFrameCounter >= 6) // Attack animation = 6 frames
            {
                IsAttacking = false;
                AttackFrameCounter = 0;
            }
        }
    }

    public Rectangle GetBounds()
    {
        return new Rectangle((int)Position.X, (int)Position.Y, 16, 24);
    }
}
```

#### 4. Update PlayerController.cs - Attack input
```csharp
public class PlayerController
{
    public void ProcessInput(InputManager input, Player player)
    {
        // ... existing movement code ...

        // Attack
        if (input.IsPressed(GameAction.Attack) && !player.IsAttacking)
        {
            player.IsAttacking = true;
            player.AttackFrameCounter = 0;
        }
    }
}
```

### Assembly Reference
- **zelres1_chunk_04** (lines 1-700) - Player stats structure & damage formulas
- **zelres2_chunk_02** (lines 100-400) - Damage calculation
- **zelres1_chunk_06** (offsets 0x024B-0x028B) - Sword hitbox calculation

### Dependencies
- **Requires**: Phase 6 (attack animation state)
- **Blocks**: Phase 8 (enemies need combat system to deal damage)

---

## 📋 PHASE 8: Enemy AI Framework
**Complexity**: 🔴 COMPLEX
**Estimated Effort**: ~1500 lines, 10+ classes
**Goal**: Enemies spawn, move, attack, and die

### Systems to Implement

#### 1. Enemy.cs - Base enemy class
```csharp
public abstract class Enemy
{
    public Vector2 Position { get; set; }
    public Vector2 Velocity { get; set; }
    public int HP { get; set; }
    public int Attack { get; set; }
    public int Defense { get; set; }
    public bool IsDead => HP <= 0;

    protected AIState currentState = AIState.Patrol;
    protected int stateTimer = 0;

    public abstract void UpdateAI(Player player, GameTime gameTime);

    public virtual void TakeDamage(int damage)
    {
        HP -= damage;
        if (HP < 0) HP = 0;

        if (IsDead)
        {
            OnDeath();
        }
    }

    protected virtual void OnDeath()
    {
        // Drop XP/items
    }

    public abstract Rectangle GetBounds();
    public abstract void Draw(SpriteBatch spriteBatch, Camera camera);
}

public enum AIState
{
    Patrol,    // Walking back and forth
    Chase,     // Pursuing player
    Attack,    // In range, attacking
    Retreat,   // Low HP, fleeing
    Stunned    // Hit reaction
}
```

#### 2. EnemyManager.cs - Spawn and manage enemies
```csharp
public class EnemyManager
{
    private List<Enemy> activeEnemies = new List<Enemy>();
    private List<SpawnPoint> spawnPoints = new List<SpawnPoint>();

    public void LoadSpawnPoints(LevelData levelData)
    {
        spawnPoints.Clear();
        spawnPoints.AddRange(levelData.SpawnPoints);
    }

    public void SpawnEnemies()
    {
        foreach (var spawn in spawnPoints)
        {
            Enemy enemy = CreateEnemy(spawn.EnemyType, spawn.Position);
            if (enemy != null)
                activeEnemies.Add(enemy);
        }
    }

    private Enemy CreateEnemy(int enemyType, Vector2 position)
    {
        // From zelres2_enemy_types_walkthrough.md
        return enemyType switch
        {
            0x00 => new Slime(position),
            0x01 => new Bat(position),
            0x02 => new Spider(position),
            0x03 => new Skeleton(position),
            // ... more enemy types
            _ => null
        };
    }

    public void Update(Player player, GameTime gameTime)
    {
        // Update all enemies
        for (int i = activeEnemies.Count - 1; i >= 0; i--)
        {
            Enemy enemy = activeEnemies[i];

            if (enemy.IsDead)
            {
                activeEnemies.RemoveAt(i);
                continue;
            }

            enemy.UpdateAI(player, gameTime);
        }
    }

    public void Draw(SpriteBatch spriteBatch, Camera camera)
    {
        foreach (Enemy enemy in activeEnemies)
        {
            if (!enemy.IsDead)
                enemy.Draw(spriteBatch, camera);
        }
    }

    public List<Enemy> GetActiveEnemies()
    {
        return activeEnemies;
    }
}

public struct SpawnPoint
{
    public int EnemyType;
    public Vector2 Position;
}
```

#### 3. Example Enemy: Slime.cs - Ground patrol enemy
```csharp
public class Slime : Enemy
{
    private bool movingRight = true;
    private const float Speed = 1.0f;

    public Slime(Vector2 position)
    {
        Position = position;
        HP = 10;
        Attack = 3;
        Defense = 1;
    }

    public override void UpdateAI(Player player, GameTime gameTime)
    {
        float distanceToPlayer = Vector2.Distance(Position, player.Position);

        switch (currentState)
        {
            case AIState.Patrol:
                Patrol();

                // Transition to chase if player nearby (within 100 pixels)
                if (distanceToPlayer < 100f)
                    currentState = AIState.Chase;
                break;

            case AIState.Chase:
                Chase(player);

                // Transition to patrol if player far away (>150 pixels)
                if (distanceToPlayer > 150f)
                    currentState = AIState.Patrol;
                break;
        }

        // Apply velocity
        Position += Velocity;
    }

    private void Patrol()
    {
        // Simple back-and-forth movement
        Velocity = new Vector2(movingRight ? Speed : -Speed, 0);

        // TODO: Check for walls/ledges and turn around
    }

    private void Chase(Player player)
    {
        // Move toward player
        if (player.Position.X > Position.X)
        {
            Velocity = new Vector2(Speed, 0);
            movingRight = true;
        }
        else
        {
            Velocity = new Vector2(-Speed, 0);
            movingRight = false;
        }
    }

    public override Rectangle GetBounds()
    {
        return new Rectangle((int)Position.X, (int)Position.Y, 16, 16);
    }

    public override void Draw(SpriteBatch spriteBatch, Camera camera)
    {
        // TODO: Draw slime sprite
        // Temporary: draw red rectangle
        Rectangle bounds = GetBounds();
        bounds.X -= (int)camera.Position.X;
        bounds.Y -= (int)camera.Position.Y;

        // spriteBatch.Draw(slimeTexture, bounds, Color.White);
    }
}
```

#### 4. More Enemy Types (simplified examples)
```csharp
// Bat - Flying enemy with sine wave movement
public class Bat : Enemy
{
    private float waveTimer = 0f;

    public override void UpdateAI(Player player, GameTime gameTime)
    {
        waveTimer += (float)gameTime.ElapsedGameTime.TotalSeconds;

        // Sine wave flight pattern
        float waveY = (float)Math.Sin(waveTimer * 3.0f) * 2.0f;
        Velocity = new Vector2(-2.0f, waveY); // Fly left with wave

        Position += Velocity;
    }

    public override Rectangle GetBounds() => new Rectangle((int)Position.X, (int)Position.Y, 16, 16);
    public override void Draw(SpriteBatch spriteBatch, Camera camera) { /* TODO */ }
}

// Skeleton - Aggressive chaser
public class Skeleton : Enemy
{
    public override void UpdateAI(Player player, GameTime gameTime)
    {
        // Always chase player (no patrol state)
        Vector2 direction = player.Position - Position;
        direction.Normalize();

        Velocity = direction * 2.5f; // Faster than slime
        Position += Velocity;
    }

    public override Rectangle GetBounds() => new Rectangle((int)Position.X, (int)Position.Y, 16, 24);
    public override void Draw(SpriteBatch spriteBatch, Camera camera) { /* TODO */ }
}
```

### Assembly Reference
- **zelres2_chunk_06** (lines 1-600) - AI behavior patterns (patrol, chase, attack)
- **zelres2_enemy_types_walkthrough.md** - 14+ enemy type descriptions
- **zelres3_chunk_32** (lines 200-400) - Enemy manager/spawning

### Dependencies
- **Requires**: Phase 7 (combat system for damage)
- **Blocks**: Phase 9 (level loading needs spawn points)

---

## 📋 PHASE 9: Level Loading System
**Complexity**: 🔴 COMPLEX
**Estimated Effort**: ~1000 lines, 5+ classes
**Goal**: Load levels with tilemaps, spawn points, transitions

### Systems to Implement

#### 1. LevelData.cs - Data structures
```csharp
public class LevelData
{
    public int LevelID { get; set; }
    public string Name { get; set; }

    public int[,] Tilemap { get; set; }          // Tile IDs (background layer)
    public int[,] ForegroundMap { get; set; }    // Optional foreground layer
    public CollisionMap CollisionMap { get; set; }

    public List<SpawnPoint> SpawnPoints { get; set; } = new();
    public List<Trigger> Triggers { get; set; } = new();

    public int PaletteID { get; set; }
    public int MusicTrack { get; set; }

    public int Width => Tilemap?.GetLength(1) ?? 0;
    public int Height => Tilemap?.GetLength(0) ?? 0;
}

public struct Trigger
{
    public int TriggerID;
    public Rectangle Area;
    public TriggerType Type;
    public int Parameter; // Door ID, switch ID, etc.
}

public enum TriggerType
{
    Door,
    Switch,
    LevelExit,
    Checkpoint,
    BossRoom
}
```

#### 2. LevelLoader.cs - Load level data from ZELRES3
```csharp
public class LevelLoader
{
    private string chunksPath;

    public LevelLoader(string basePath)
    {
        chunksPath = Path.Combine(basePath, "2_EXTRACTED_CHUNKS", "zelres3_extracted");
    }

    public LevelData LoadLevel(int levelIndex)
    {
        // From zelres3_chunk_00_level_loader_walkthrough.md

        LevelData level = new LevelData();
        level.LevelID = levelIndex;
        level.Name = GetLevelName(levelIndex);

        // Load chunk data (zelres3 chunk 00 contains level loader)
        string chunkPath = Path.Combine(chunksPath, $"chunk_{levelIndex:D2}.bin");
        if (!File.Exists(chunkPath))
        {
            Console.WriteLine($"Warning: Level chunk not found: {chunkPath}");
            return CreateDefaultLevel();
        }

        byte[] chunkData = File.ReadAllBytes(chunkPath);

        // Parse tilemap (offset varies by level)
        level.Tilemap = ParseTilemap(chunkData);
        level.CollisionMap = GenerateCollisionMap(level.Tilemap);

        // Parse spawn points
        level.SpawnPoints = ParseSpawnPoints(chunkData);

        // Parse triggers (doors, switches, etc.)
        level.Triggers = ParseTriggers(chunkData);

        // Load palette ID and music track
        level.PaletteID = chunkData[0x00A0]; // From zelres3_chunk_00 offset 0x00A0
        level.MusicTrack = levelIndex; // Assume level ID = music track ID

        return level;
    }

    private int[,] ParseTilemap(byte[] chunkData)
    {
        // TODO: Implement tilemap parsing based on zelres3_chunk_14
        // Temporary: return empty 40×25 tilemap (320÷8 = 40 tiles wide, 200÷8 = 25 tall)

        int[,] tilemap = new int[25, 40];

        // Fill with test pattern (solid floor at bottom)
        for (int y = 0; y < 25; y++)
        {
            for (int x = 0; x < 40; x++)
            {
                if (y >= 23)
                    tilemap[y, x] = 1; // Solid tile
                else
                    tilemap[y, x] = 0; // Empty
            }
        }

        return tilemap;
    }

    private CollisionMap GenerateCollisionMap(int[,] tilemap)
    {
        int height = tilemap.GetLength(0);
        int width = tilemap.GetLength(1);

        CollisionMap collision = new CollisionMap(width, height);

        for (int y = 0; y < height; y++)
        {
            for (int x = 0; x < width; x++)
            {
                // Tile ID 1 = solid
                if (tilemap[y, x] == 1)
                    collision.SetTile(x, y, 1);
            }
        }

        return collision;
    }

    private List<SpawnPoint> ParseSpawnPoints(byte[] chunkData)
    {
        // TODO: Parse spawn points from zelres3 chunk data
        // Temporary: return test spawn

        return new List<SpawnPoint>
        {
            new SpawnPoint { EnemyType = 0x00, Position = new Vector2(100, 150) },
            new SpawnPoint { EnemyType = 0x01, Position = new Vector2(200, 100) }
        };
    }

    private List<Trigger> ParseTriggers(byte[] chunkData)
    {
        // TODO: Parse triggers
        return new List<Trigger>();
    }

    private string GetLevelName(int levelIndex)
    {
        // From zelres3_chunk_00 level names
        string[] levelNames = new string[]
        {
            "Cavern 1",
            "Cavern 2",
            "Cavern 3",
            // ... more levels
        };

        if (levelIndex >= 0 && levelIndex < levelNames.Length)
            return levelNames[levelIndex];

        return $"Level {levelIndex}";
    }

    private LevelData CreateDefaultLevel()
    {
        // Fallback test level
        LevelData level = new LevelData();
        level.LevelID = 0;
        level.Name = "Test Level";
        level.Tilemap = new int[25, 40];
        level.CollisionMap = new CollisionMap(40, 25);
        return level;
    }
}
```

#### 3. LevelTransition.cs - Animated transitions
```csharp
public class LevelTransition
{
    private enum TransitionState
    {
        None,
        FadeIn,
        Descent,
        Banner,
        Complete
    }

    private TransitionState state = TransitionState.None;
    private int frameCounter = 0;
    private Action onComplete;

    public bool IsActive => state != TransitionState.None;

    public void PlayFadeIn(Action onComplete)
    {
        this.onComplete = onComplete;
        state = TransitionState.FadeIn;
        frameCounter = 0;
    }

    public void Update(GameTime gameTime)
    {
        if (state == TransitionState.None)
            return;

        frameCounter++;

        switch (state)
        {
            case TransitionState.FadeIn:
                // From zelres3_chunk_00 (offsets 0x010B-0x0154)
                // Fade-in: 2 frames
                if (frameCounter >= 2)
                {
                    state = TransitionState.Descent;
                    frameCounter = 0;
                }
                break;

            case TransitionState.Descent:
                // Player descent animation: 2 frames
                if (frameCounter >= 2)
                {
                    state = TransitionState.Banner;
                    frameCounter = 0;
                }
                break;

            case TransitionState.Banner:
                // Level name banner: 4 frames
                if (frameCounter >= 4)
                {
                    state = TransitionState.Complete;
                    onComplete?.Invoke();
                }
                break;
        }
    }

    public void Draw(SpriteBatch spriteBatch)
    {
        if (state == TransitionState.None)
            return;

        // TODO: Draw transition graphics based on state
        // Temporary: draw black fade

        float alpha = state switch
        {
            TransitionState.FadeIn => 1.0f - (frameCounter / 2.0f),
            TransitionState.Banner => 0.5f,
            _ => 0f
        };

        // Draw black overlay
        // spriteBatch.Draw(blackTexture, new Rectangle(0, 0, 320, 200), Color.White * alpha);
    }
}
```

### Assembly Reference
- **zelres3_chunk_00** (lines 1-1000) - Level loader main code
- **zelres3_chunk_14** - Tilemap rendering
- **zelres3_level_maps_reference.md** - Level data format

### Dependencies
- **Requires**: Phase 8 (enemy manager for spawning)
- **Blocks**: Phase 10 (renderer needs loaded level)

---

## 📋 PHASE 10: Tilemap Renderer
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~400 lines, 2 classes
**Goal**: Draw level backgrounds from tilemap data

### Systems to Implement

#### 1. TilemapRenderer.cs
```csharp
public class TilemapRenderer
{
    private TileSet tileSet;

    public TilemapRenderer(GraphicsDevice device, int tileSetID)
    {
        tileSet = new TileSet(device, tileSetID);
    }

    public void Draw(SpriteBatch spriteBatch, LevelData level, Camera camera)
    {
        if (level == null || level.Tilemap == null)
            return;

        int tileSize = 16; // 16×16 pixel tiles

        // Calculate visible tile range (camera culling)
        int startTileX = Math.Max(0, (int)camera.Position.X / tileSize);
        int endTileX = Math.Min(level.Width - 1, (int)(camera.Position.X + DOSScreen.WIDTH) / tileSize + 1);

        int startTileY = Math.Max(0, (int)camera.Position.Y / tileSize);
        int endTileY = Math.Min(level.Height - 1, (int)(camera.Position.Y + DOSScreen.HEIGHT) / tileSize + 1);

        // Draw visible tiles
        for (int tileY = startTileY; tileY <= endTileY; tileY++)
        {
            for (int tileX = startTileX; tileX <= endTileX; tileX++)
            {
                int tileID = level.Tilemap[tileY, tileX];
                if (tileID == 0)
                    continue; // Empty tile

                Texture2D tileTexture = tileSet.GetTile(tileID);

                Vector2 screenPos = new Vector2(
                    tileX * tileSize - camera.Position.X,
                    tileY * tileSize - camera.Position.Y
                );

                spriteBatch.Draw(tileTexture, screenPos, Color.White);
            }
        }
    }
}
```

#### 2. TileSet.cs
```csharp
public class TileSet
{
    private Texture2D[] tiles;

    public TileSet(GraphicsDevice device, int tileSetID)
    {
        tiles = LoadTileSet(device, tileSetID);
    }

    private Texture2D[] LoadTileSet(GraphicsDevice device, int tileSetID)
    {
        // TODO: Load tile graphics from zelres3 chunks
        // Temporary: create colored placeholder tiles

        Texture2D[] tileArray = new Texture2D[256];

        // Tile 0 = empty (transparent)
        tileArray[0] = CreateSolidTile(device, Color.Transparent);

        // Tile 1 = solid (gray)
        tileArray[1] = CreateSolidTile(device, Color.Gray);

        // Fill remaining with test colors
        for (int i = 2; i < 256; i++)
        {
            Color tileColor = new Color(i * 10 % 255, i * 20 % 255, i * 30 % 255);
            tileArray[i] = CreateSolidTile(device, tileColor);
        }

        return tileArray;
    }

    private Texture2D CreateSolidTile(GraphicsDevice device, Color color)
    {
        Texture2D texture = new Texture2D(device, 16, 16);
        Color[] colorData = new Color[16 * 16];
        for (int i = 0; i < colorData.Length; i++)
            colorData[i] = color;
        texture.SetData(colorData);
        return texture;
    }

    public Texture2D GetTile(int tileID)
    {
        if (tileID < 0 || tileID >= tiles.Length)
            return tiles[0]; // Default to empty

        return tiles[tileID];
    }
}
```

### Assembly Reference
- **zelres3_chunk_14** (lines 1-800) - Tilemap rendering system
- **zelres3_level_maps_reference.md** - Tilemap data format

### Dependencies
- **Requires**: Phase 9 (loaded level data), Phase 4 (camera)
- **Blocks**: Phase 11 (HUD draws over tilemap)

---

## 📋 PHASE 11: HUD System
**Complexity**: 🟢 SIMPLE
**Estimated Effort**: ~250 lines, 1 class
**Goal**: Display HP/MP bars, score, lives

### Systems to Implement

#### 1. HUD.cs
```csharp
public class HUD
{
    private Texture2D pixel; // 1×1 white pixel for drawing bars

    public HUD(GraphicsDevice device)
    {
        pixel = new Texture2D(device, 1, 1);
        pixel.SetData(new[] { Color.White });
    }

    public void Draw(SpriteBatch spriteBatch, PlayerStats stats)
    {
        // HP Bar (top-left, red/green)
        DrawHPBar(spriteBatch, stats.CurrentHP, stats.MaxHP, new Vector2(10, 10));

        // MP Bar (below HP bar, blue)
        DrawMPBar(spriteBatch, stats.CurrentMP, stats.MaxMP, new Vector2(10, 20));

        // Score (top-right)
        DrawScore(spriteBatch, (int)stats.Gold, new Vector2(260, 10));

        // Lives (top-right, below score)
        // DrawLives(spriteBatch, stats.Lives, new Vector2(260, 20));
    }

    private void DrawHPBar(SpriteBatch spriteBatch, int current, int max, Vector2 position)
    {
        int barWidth = 100;
        int barHeight = 6;

        // Background (black)
        spriteBatch.Draw(pixel, new Rectangle((int)position.X, (int)position.Y, barWidth, barHeight), Color.Black);

        // Fill (red → yellow → green based on percentage)
        float percentage = (float)current / max;
        int fillWidth = (int)(barWidth * percentage);

        Color fillColor;
        if (percentage > 0.5f)
            fillColor = Color.Green;
        else if (percentage > 0.25f)
            fillColor = Color.Yellow;
        else
            fillColor = Color.Red;

        spriteBatch.Draw(pixel, new Rectangle((int)position.X, (int)position.Y, fillWidth, barHeight), fillColor);

        // Border (white)
        DrawRectangleBorder(spriteBatch, new Rectangle((int)position.X, (int)position.Y, barWidth, barHeight), Color.White);
    }

    private void DrawMPBar(SpriteBatch spriteBatch, int current, int max, Vector2 position)
    {
        int barWidth = 100;
        int barHeight = 6;

        // Background (black)
        spriteBatch.Draw(pixel, new Rectangle((int)position.X, (int)position.Y, barWidth, barHeight), Color.Black);

        // Fill (blue)
        float percentage = (float)current / max;
        int fillWidth = (int)(barWidth * percentage);

        spriteBatch.Draw(pixel, new Rectangle((int)position.X, (int)position.Y, fillWidth, barHeight), Color.Blue);

        // Border (white)
        DrawRectangleBorder(spriteBatch, new Rectangle((int)position.X, (int)position.Y, barWidth, barHeight), Color.White);
    }

    private void DrawScore(SpriteBatch spriteBatch, int score, Vector2 position)
    {
        // TODO: Draw score using DOS font
        // Temporary: use debug text
        // string scoreText = $"${score:D6}";
        // spriteBatch.DrawString(font, scoreText, position, Color.White);
    }

    private void DrawRectangleBorder(SpriteBatch spriteBatch, Rectangle rect, Color color)
    {
        // Top
        spriteBatch.Draw(pixel, new Rectangle(rect.X, rect.Y, rect.Width, 1), color);
        // Bottom
        spriteBatch.Draw(pixel, new Rectangle(rect.X, rect.Y + rect.Height - 1, rect.Width, 1), color);
        // Left
        spriteBatch.Draw(pixel, new Rectangle(rect.X, rect.Y, 1, rect.Height), color);
        // Right
        spriteBatch.Draw(pixel, new Rectangle(rect.X + rect.Width - 1, rect.Y, 1, rect.Height), color);
    }
}
```

### Assembly Reference
- **zelres2_chunk_00** (lines 800-1000) - HUD rendering code
- **gmmcga_walkthrough.md** (offset 0x03CC) - Lives display

### Dependencies
- **Requires**: Phase 7 (PlayerStats), Phase 10 (renders after tilemap)
- **Blocks**: None

---

## 📋 PHASE 12: Equipment & Inventory
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~700 lines, 5 classes
**Goal**: 32-slot inventory with equipment system

### Systems to Implement

#### 1. InventorySystem.cs
```csharp
public class InventorySystem
{
    private ItemSlot[] inventory = new ItemSlot[32];

    public InventorySystem()
    {
        // Initialize empty slots
        for (int i = 0; i < 32; i++)
        {
            inventory[i] = new ItemSlot { ItemID = 0xFFFF, Quantity = 0 };
        }
    }

    public bool AddItem(int itemID, int quantity)
    {
        // Try to stack with existing item
        for (int i = 0; i < 32; i++)
        {
            if (inventory[i].ItemID == itemID && inventory[i].Quantity < 99)
            {
                int canAdd = Math.Min(quantity, 99 - inventory[i].Quantity);
                inventory[i].Quantity += canAdd;
                quantity -= canAdd;

                if (quantity == 0)
                    return true;
            }
        }

        // Find empty slot
        for (int i = 0; i < 32; i++)
        {
            if (inventory[i].ItemID == 0xFFFF)
            {
                inventory[i].ItemID = itemID;
                inventory[i].Quantity = Math.Min(quantity, 99);
                return true;
            }
        }

        return false; // Inventory full
    }

    public bool RemoveItem(int itemID, int quantity)
    {
        for (int i = 0; i < 32; i++)
        {
            if (inventory[i].ItemID == itemID)
            {
                if (inventory[i].Quantity >= quantity)
                {
                    inventory[i].Quantity -= quantity;

                    if (inventory[i].Quantity == 0)
                    {
                        inventory[i].ItemID = 0xFFFF; // Clear slot
                    }

                    return true;
                }
            }
        }

        return false; // Not enough items
    }

    public ItemSlot GetSlot(int index)
    {
        if (index < 0 || index >= 32)
            return new ItemSlot { ItemID = 0xFFFF, Quantity = 0 };

        return inventory[index];
    }
}

public struct ItemSlot
{
    public int ItemID;          // 0xFFFF = empty
    public byte Quantity;       // 1-99
    public byte Flags;          // Bit 0=equipped, bit 1=cursed
    public short Durability;    // For weapons/armor
    public byte Enchantment;    // +1, +2, etc.
}
```

#### 2. EquipmentSlots.cs
```csharp
public class EquipmentSlots
{
    public ItemSlot Weapon { get; set; } = new ItemSlot { ItemID = 0xFFFF };
    public ItemSlot Armor { get; set; } = new ItemSlot { ItemID = 0xFFFF };
    public ItemSlot Shield { get; set; } = new ItemSlot { ItemID = 0xFFFF };
    public ItemSlot Helmet { get; set; } = new ItemSlot { ItemID = 0xFFFF };
    public ItemSlot Accessory1 { get; set; } = new ItemSlot { ItemID = 0xFFFF };
    public ItemSlot Accessory2 { get; set; } = new ItemSlot { ItemID = 0xFFFF };

    public void Equip(ItemSlot item, EquipSlot slot, PlayerStats stats)
    {
        ItemSlot oldItem = GetSlot(slot);

        // Unequip old item
        if (oldItem.ItemID != 0xFFFF)
        {
            Unequip(slot, stats);
        }

        // Equip new item
        SetSlot(slot, item);
        ApplyBonuses(item, stats, apply: true);
    }

    public void Unequip(EquipSlot slot, PlayerStats stats)
    {
        ItemSlot item = GetSlot(slot);
        if (item.ItemID == 0xFFFF)
            return;

        ApplyBonuses(item, stats, apply: false);
        SetSlot(slot, new ItemSlot { ItemID = 0xFFFF });
    }

    private void ApplyBonuses(ItemSlot item, PlayerStats stats, bool apply)
    {
        ItemStats itemStats = ItemDatabase.GetStats(item.ItemID);

        int multiplier = apply ? 1 : -1;

        stats.EquipmentAttackBonus += itemStats.AttackBonus * multiplier;
        stats.EquipmentDefenseBonus += itemStats.DefenseBonus * multiplier;
        // ... other bonuses
    }

    private ItemSlot GetSlot(EquipSlot slot)
    {
        return slot switch
        {
            EquipSlot.Weapon => Weapon,
            EquipSlot.Armor => Armor,
            EquipSlot.Shield => Shield,
            EquipSlot.Helmet => Helmet,
            EquipSlot.Accessory1 => Accessory1,
            EquipSlot.Accessory2 => Accessory2,
            _ => new ItemSlot { ItemID = 0xFFFF }
        };
    }

    private void SetSlot(EquipSlot slot, ItemSlot item)
    {
        switch (slot)
        {
            case EquipSlot.Weapon: Weapon = item; break;
            case EquipSlot.Armor: Armor = item; break;
            case EquipSlot.Shield: Shield = item; break;
            case EquipSlot.Helmet: Helmet = item; break;
            case EquipSlot.Accessory1: Accessory1 = item; break;
            case EquipSlot.Accessory2: Accessory2 = item; break;
        }
    }
}

public enum EquipSlot
{
    Weapon,
    Armor,
    Shield,
    Helmet,
    Accessory1,
    Accessory2
}
```

#### 3. ItemDatabase.cs
```csharp
public static class ItemDatabase
{
    private static readonly Dictionary<int, ItemStats> items = new()
    {
        // Weapons (from zelres1_chunk_02)
        { 0x0001, new ItemStats { Name = "Bronze Sword", AttackBonus = 5, Price = 50 } },
        { 0x0002, new ItemStats { Name = "Iron Sword", AttackBonus = 10, Price = 150 } },
        { 0x0003, new ItemStats { Name = "Steel Sword", AttackBonus = 20, Price = 500 } },

        // Armor
        { 0x0010, new ItemStats { Name = "Leather Armor", DefenseBonus = 3, Price = 80 } },
        { 0x0011, new ItemStats { Name = "Chain Mail", DefenseBonus = 8, Price = 200 } },

        // ... more items
    };

    public static ItemStats GetStats(int itemID)
    {
        if (items.TryGetValue(itemID, out ItemStats stats))
            return stats;

        return new ItemStats { Name = "Unknown", AttackBonus = 0, DefenseBonus = 0, Price = 0 };
    }

    public static string GetName(int itemID)
    {
        return GetStats(itemID).Name;
    }
}

public struct ItemStats
{
    public string Name;
    public int AttackBonus;
    public int DefenseBonus;
    public int SpeedBonus;
    public int MagicBonus;
    public int Price;
}
```

#### 4. InventoryUI.cs
```csharp
public class InventoryUI
{
    private InventorySystem inventory;
    private EquipmentSlots equipment;
    private int selectedSlot = 0;

    public InventoryUI(InventorySystem inventory, EquipmentSlots equipment)
    {
        this.inventory = inventory;
        this.equipment = equipment;
    }

    public void Update(InputManager input)
    {
        // Navigate inventory (4×8 grid)
        if (input.IsPressed(GameAction.Up))
            selectedSlot = Math.Max(0, selectedSlot - 8);
        else if (input.IsPressed(GameAction.Down))
            selectedSlot = Math.Min(31, selectedSlot + 8);
        else if (input.IsPressed(GameAction.Left))
            selectedSlot = Math.Max(0, selectedSlot - 1);
        else if (input.IsPressed(GameAction.Right))
            selectedSlot = Math.Min(31, selectedSlot + 1);

        // Equip/use item
        if (input.IsPressed(GameAction.Confirm))
        {
            ItemSlot item = inventory.GetSlot(selectedSlot);
            if (item.ItemID != 0xFFFF)
            {
                // TODO: Determine slot and equip
                // equipment.Equip(item, EquipSlot.Weapon, playerStats);
            }
        }
    }

    public void Draw(SpriteBatch spriteBatch)
    {
        // Draw 4×8 item grid
        for (int row = 0; row < 4; row++)
        {
            for (int col = 0; col < 8; col++)
            {
                int index = row * 8 + col;
                ItemSlot item = inventory.GetSlot(index);

                int x = 20 + col * 32;
                int y = 40 + row * 32;

                // Draw item icon or empty slot
                // TODO: Draw actual item graphics

                // Draw selection cursor
                if (index == selectedSlot)
                {
                    // Draw cursor
                }
            }
        }

        // Draw equipment slots (right side)
        DrawEquipmentSlots(spriteBatch, new Vector2(280, 40));
    }

    private void DrawEquipmentSlots(SpriteBatch spriteBatch, Vector2 position)
    {
        // TODO: Draw 6 equipment slots with equipped items
    }
}
```

### Assembly Reference
- **zelres1_chunk_02** (lines 1-3500) - Complete equipment & inventory system

### Dependencies
- **Requires**: Phase 7 (PlayerStats for stat bonuses)
- **Blocks**: None (optional system)

---

## 📋 PHASE 13: Leveling & Progression
**Complexity**: 🟢 SIMPLE
**Estimated Effort**: ~200 lines, 1 class extension
**Goal**: XP system with level-up formulas

### Systems to Implement

#### 1. Extend PlayerStats.cs - Add XP/leveling
```csharp
public partial class PlayerStats
{
    // XP thresholds (exponential curve from zelres1_chunk_04)
    private static readonly uint[] XPThresholds = new uint[]
    {
        0,      // Level 1
        100,    // Level 2
        300,    // Level 3
        600,    // Level 4
        1000,   // Level 5
        1500,   // Level 6
        2100,   // Level 7
        2800,   // Level 8
        3600,   // Level 9
        4500,   // Level 10
        // ... up to level 99
    };

    public void AddExperience(uint amount)
    {
        Experience += amount;

        // Check for level up(s)
        while (Level < 99 && Experience >= XPThresholds[Level])
        {
            LevelUp();
        }
    }

    private void LevelUp()
    {
        Level++;

        // Stat growth formulas (from zelres1_chunk_04, offset 0x0251-0x02D0)
        int hpGain = Level * 5 + 10;      // HP: level × 5 + 10 (15-505 per level)
        int mpGain = Level * 3 + 5;       // MP: level × 3 + 5 (8-302 per level)
        byte atkGain = (byte)(Level / 3); // ATK: level ÷ 3 (0-33 total)
        byte defGain = (byte)(Level / 4); // DEF: level ÷ 4 (0-24 total)
        byte spdGain = (byte)(Level / 5); // SPD: level ÷ 5 (0-19 total)
        byte magGain = (byte)(Level / 4); // MAG: level ÷ 4 (0-24 total)

        MaxHP += hpGain;
        MaxMP += mpGain;
        BaseAttack += atkGain;
        BaseDefense += defGain;
        BaseSpeed += spdGain;
        BaseMagic += magGain;

        // Fully restore HP/MP on level up
        CurrentHP = MaxHP;
        CurrentMP = MaxMP;

        // Trigger level-up effect
        OnLevelUp();
    }

    private void OnLevelUp()
    {
        // TODO: Trigger visual/audio effect
        Console.WriteLine($"LEVEL UP! Now level {Level}");
    }
}
```

#### 2. LevelUpEffect.cs - Visual feedback
```csharp
public class LevelUpEffect
{
    private bool isActive = false;
    private int frameCounter = 0;
    private const int EffectDuration = 60; // ~3.3 seconds at 18.2 FPS

    public void Trigger()
    {
        isActive = true;
        frameCounter = 0;
    }

    public void Update(GameTime gameTime)
    {
        if (!isActive)
            return;

        frameCounter++;
        if (frameCounter >= EffectDuration)
        {
            isActive = false;
        }
    }

    public void Draw(SpriteBatch spriteBatch, Player player)
    {
        if (!isActive)
            return;

        // Flash player sprite (alternate white/normal every 4 frames)
        bool flash = (frameCounter / 4) % 2 == 0;

        // TODO: Draw "LEVEL UP!" message above player

        // TODO: Play sparkle effect around player
    }
}
```

### Assembly Reference
- **zelres1_chunk_04** (lines 100-300) - Level-up formulas & XP thresholds

### Dependencies
- **Requires**: Phase 7 (PlayerStats), Phase 8 (enemies grant XP)
- **Blocks**: None

---

## 📋 PHASE 14: .grp Image Decoder
**Complexity**: 🔴 COMPLEX
**Estimated Effort**: ~600 lines, 2 class expansions
**Goal**: Decode opening/ending scene images

### Systems to Implement

#### 1. Expand GrpDecoder.cs - Two-stage decompression
```csharp
public class GrpDecoder
{
    // ... existing code ...

    public byte[] DecodeStage1(byte[] chunkData)
    {
        // From zelres1_chunk_07 (VGA decompressor)

        if (chunkData.Length < 6)
            return chunkData;

        byte format = chunkData[5]; // Byte 5 = format type

        return format switch
        {
            0x00 => chunkData, // Raw format (no compression)
            0x05 => DecodeFormat5_EscapeRLE(chunkData),
            0x06 => DecodeFormat6_TableRLE(chunkData),
            0x07 => DecodeFormat7_MarkerRLE(chunkData),
            _ => chunkData
        };
    }

    private byte[] DecodeFormat5_EscapeRLE(byte[] data)
    {
        // Format 5: Escape-byte RLE
        // [escape][value][count] → repeat value (count+1) times

        List<byte> output = new List<byte>();
        byte escapeMarker = data[0]; // First byte is escape marker

        for (int i = 6; i < data.Length; i++)
        {
            if (data[i] == escapeMarker && i + 2 < data.Length)
            {
                byte value = data[i + 1];
                byte count = data[i + 2];

                for (int j = 0; j < count + 1; j++)
                    output.Add(value);

                i += 2; // Skip value and count bytes
            }
            else
            {
                output.Add(data[i]);
            }
        }

        return output.ToArray();
    }

    private byte[] DecodeFormat6_TableRLE(byte[] data)
    {
        // Format 6: Table-based RLE
        // Prefix table of [match,replace] pairs + 0xFFFF terminator, then data

        Dictionary<byte, byte> replaceTable = new Dictionary<byte, byte>();

        int offset = 6; // Start after header

        // Read replacement table
        while (offset + 1 < data.Length)
        {
            byte match = data[offset];
            byte replace = data[offset + 1];

            if (match == 0xFF && replace == 0xFF)
            {
                offset += 2; // Skip terminator
                break;
            }

            replaceTable[match] = replace;
            offset += 2;
        }

        // Decode data using table
        List<byte> output = new List<byte>();
        for (int i = offset; i < data.Length; i++)
        {
            byte b = data[i];
            if (replaceTable.ContainsKey(b))
                output.Add(replaceTable[b]);
            else
                output.Add(b);
        }

        return output.ToArray();
    }

    private byte[] DecodeFormat7_MarkerRLE(byte[] data)
    {
        // Format 7: Marker-byte RLE
        // First byte = marker, [marker][value][count] → repeat value (count+3) times

        List<byte> output = new List<byte>();
        byte marker = data[6]; // First data byte is marker

        for (int i = 7; i < data.Length; i++)
        {
            if (data[i] == marker && i + 2 < data.Length)
            {
                byte value = data[i + 1];
                byte count = data[i + 2];

                for (int j = 0; j < count + 3; j++)
                    output.Add(value);

                i += 2;
            }
            else
            {
                output.Add(data[i]);
            }
        }

        return output.ToArray();
    }

    public byte[] DecodeStage2(byte[] stage1Data)
    {
        // From zelres1_chunk_08/09 (bitmap + XOR decode at offset 0x6D62)

        List<byte> output = new List<byte>();

        // Read control count (word at start)
        if (stage1Data.Length < 2)
            return stage1Data;

        ushort ctrlCount = BitConverter.ToUInt16(stage1Data, 0);
        int offset = 2;

        // Read control bytes (1=literal, 0=zero)
        List<byte> ctrlBytes = new List<byte>();
        for (int i = 0; i < ctrlCount; i++)
        {
            if (offset >= stage1Data.Length)
                break;
            ctrlBytes.Add(stage1Data[offset++]);
        }

        // Read literal bytes
        List<byte> literalBytes = new List<byte>();
        while (offset < stage1Data.Length)
        {
            literalBytes.Add(stage1Data[offset++]);
        }

        // Decode using control + literal bytes
        int literalIndex = 0;
        foreach (byte ctrl in ctrlBytes)
        {
            for (int bit = 0; bit < 8; bit++)
            {
                bool isLiteral = ((ctrl >> bit) & 1) == 1;

                if (isLiteral)
                {
                    if (literalIndex < literalBytes.Count)
                        output.Add(literalBytes[literalIndex++]);
                }
                else
                {
                    output.Add(0); // Zero byte
                }
            }
        }

        // XOR differential decode (on 2-bit pairs)
        byte state = 0;
        for (int i = 0; i < output.Count; i++)
        {
            byte value = output[i];

            // XOR with running state
            byte decoded = (byte)(value ^ state);
            output[i] = decoded;

            // Update state for next iteration
            state = (byte)((state << 2) | (decoded & 0x03));
        }

        return output.ToArray();
    }

    public Texture2D RenderBitplanes(GraphicsDevice device, byte[] decodedData, int width, int height)
    {
        // From zelres1_chunk_10/11 (4-plane bitplane renderer)

        Texture2D texture = new Texture2D(device, width, height);
        Color[] pixels = new Color[width * height];

        int planeSize = (width * height) / 8; // Each plane is 1 bit per pixel

        for (int y = 0; y < height; y++)
        {
            for (int x = 0; x < width; x++)
            {
                int pixelIndex = y * width + x;
                int byteIndex = pixelIndex / 8;
                int bitIndex = 7 - (pixelIndex % 8);

                byte colorIndex = 0;

                // Read 1 bit from each of 4 planes
                for (int plane = 0; plane < 4; plane++)
                {
                    int planeOffset = plane * planeSize;
                    if (planeOffset + byteIndex < decodedData.Length)
                    {
                        byte planeByte = decodedData[planeOffset + byteIndex];
                        byte bit = (byte)((planeByte >> bitIndex) & 1);
                        colorIndex |= (byte)(bit << plane);
                    }
                }

                // Map to palette color
                pixels[pixelIndex] = GetPaletteColor(colorIndex);
            }
        }

        texture.SetData(pixels);
        return texture;
    }

    private Color GetPaletteColor(byte index)
    {
        // TODO: Use actual palette from chunk_05 offset 0x128D
        // Temporary: use MCGA approximation

        if (index < DOSPalette.MCGA.Length)
            return DOSPalette.MCGA[index];

        return Color.Black;
    }
}
```

#### 2. Update OpeningScene.cs - Real backgrounds
```csharp
public class OpeningScene : IGameStateHandler
{
    private GrpDecoder decoder;
    private Texture2D[] backgroundImages;

    public void LoadContent(GraphicsDevice device)
    {
        decoder = new GrpDecoder();

        // Load opening scene images (chunks 14, 25, 27, 34)
        backgroundImages = new Texture2D[4];

        backgroundImages[0] = LoadAndDecodeImage(device, "chunk_14.bin", 48, 34);
        backgroundImages[1] = LoadAndDecodeImage(device, "chunk_25.bin", 48, 34);
        backgroundImages[2] = LoadAndDecodeImage(device, "chunk_27.bin", 48, 34);
        backgroundImages[3] = LoadAndDecodeImage(device, "chunk_34.bin", 48, 34);
    }

    private Texture2D LoadAndDecodeImage(GraphicsDevice device, string filename, int width, int height)
    {
        string path = Path.Combine(@"c:\Projects\Zeliard\2_EXTRACTED_CHUNKS\zelres1_extracted", filename);

        if (!File.Exists(path))
            return null;

        byte[] chunkData = File.ReadAllBytes(path);

        // Two-stage decompression
        byte[] stage1 = decoder.DecodeStage1(chunkData);
        byte[] stage2 = decoder.DecodeStage2(stage1);

        // Render bitplanes to texture
        return decoder.RenderBitplanes(device, stage2, width * 8, height * 8);
    }

    public void Draw(SpriteBatch spriteBatch, GameStateManager manager)
    {
        // Draw current background image
        if (currentSlide >= 0 && currentSlide < backgroundImages.Length)
        {
            Texture2D bg = backgroundImages[currentSlide];
            if (bg != null)
            {
                spriteBatch.Draw(bg, Vector2.Zero, Color.White);
            }
        }

        // Draw story text on top
        DrawStoryText(spriteBatch);
    }
}
```

### Assembly Reference
- **zelres1_chunk_07** - VGA decompressor (stage 1 RLE formats)
- **zelres1_chunk_08/09** - Bitmap + XOR decoder (stage 2)
- **zelres1_chunk_10/11** - 4-plane bitplane renderer
- **OPENING_SCENE_ANALYSIS.md** - Complete decode walkthrough

### Dependencies
- **Requires**: Phase 3 (GrpDecoder foundation)
- **Blocks**: None (visual polish)

---

## 📋 PHASE 15: Game Loop Integration
**Complexity**: 🔴 COMPLEX
**Estimated Effort**: ~500 lines, 2 class expansions
**Goal**: Wire everything together with authentic DOS timing

### Systems to Implement

#### 1. GameLoop.cs - 18.2 Hz fixed timestep
```csharp
public class GameLoop
{
    private const float DOSFrameTime = 1f / 18.2f; // 54.945ms per frame
    private float accumulator = 0f;

    public void Update(GameTime gameTime, GameStateManager stateManager)
    {
        // Accumulate elapsed time
        accumulator += (float)gameTime.ElapsedGameTime.TotalSeconds;

        // Update in fixed timestep increments
        while (accumulator >= DOSFrameTime)
        {
            // Create fixed timestep GameTime
            GameTime fixedTime = new GameTime(
                gameTime.TotalGameTime,
                TimeSpan.FromSeconds(DOSFrameTime)
            );

            stateManager.Update(fixedTime);

            accumulator -= DOSFrameTime;
        }
    }
}
```

#### 2. Update PlayingState.cs - Full integration
```csharp
public class PlayingState : IGameStateHandler
{
    // Core systems
    private Player player;
    private PlayerController controller;
    private PlayerAnimator animator;
    private PhysicsEngine physics;
    private CombatSystem combat;
    private EnemyManager enemies;
    private Camera camera;

    // Level & rendering
    private LevelData currentLevel;
    private LevelLoader levelLoader;
    private TilemapRenderer levelRenderer;
    private LevelTransition transition;

    // UI
    private HUD hud;
    private SpriteSheet playerSprites;

    private InputManager input;

    public PlayingState(InputManager input, GraphicsDevice device)
    {
        this.input = input;

        // Initialize systems
        player = new Player();
        controller = new PlayerController();
        animator = new PlayerAnimator();
        physics = new PhysicsEngine();
        combat = new CombatSystem();
        enemies = new EnemyManager();
        camera = new Camera();

        levelLoader = new LevelLoader(@"c:\Projects\Zeliard");
        transition = new LevelTransition();
        hud = new HUD(device);

        // Load initial level
        LoadLevel(0);
    }

    private void LoadLevel(int levelIndex)
    {
        currentLevel = levelLoader.LoadLevel(levelIndex);
        levelRenderer = new TilemapRenderer(GraphicsDevice, currentLevel.PaletteID);

        // Reset player position
        player.Position = new Vector2(50, 150); // TODO: Load from level spawn point
        player.Velocity = Vector2.Zero;

        // Spawn enemies
        enemies.LoadSpawnPoints(currentLevel);
        enemies.SpawnEnemies();

        // Play transition
        transition.PlayFadeIn(() => { /* Level ready */ });
    }

    public void Update(GameTime gameTime, GameStateManager manager)
    {
        // Update transition
        if (transition.IsActive)
        {
            transition.Update(gameTime);
            return; // Don't update game during transition
        }

        // Process input → player
        controller.ProcessInput(input, player);

        // Update systems (CRITICAL ORDER!)
        player.Update(gameTime);                          // 1. Update player state
        physics.Update(player, currentLevel.CollisionMap); // 2. Apply physics
        animator.Update(gameTime, player);                // 3. Update animation
        enemies.Update(player, gameTime);                 // 4. Update enemies
        combat.Update(player, enemies.GetActiveEnemies()); // 5. Process combat
        camera.Follow(player, currentLevel.Width * 16, currentLevel.Height * 16); // 6. Update camera

        // Check state transitions
        if (player.Stats.CurrentHP <= 0)
        {
            manager.TransitionTo(GameState.Dead);
        }

        if (input.IsPressed(GameAction.Pause))
        {
            manager.TransitionTo(GameState.Paused);
        }

        if (input.IsPressed(GameAction.Inventory))
        {
            manager.TransitionTo(GameState.Inventory);
        }

        // Check for level exit triggers
        foreach (Trigger trigger in currentLevel.Triggers)
        {
            if (trigger.Type == TriggerType.LevelExit &&
                trigger.Area.Contains(player.Position))
            {
                LoadLevel(trigger.Parameter); // Load next level
                break;
            }
        }
    }

    public void Draw(SpriteBatch spriteBatch, GameStateManager manager)
    {
        // Render order (back to front):

        // 1. Draw tilemap (background)
        levelRenderer.Draw(spriteBatch, currentLevel, camera);

        // 2. Draw enemies
        enemies.Draw(spriteBatch, camera);

        // 3. Draw player
        DrawPlayer(spriteBatch);

        // 4. Draw HUD (overlay)
        hud.Draw(spriteBatch, player.Stats);

        // 5. Draw transition (if active)
        if (transition.IsActive)
        {
            transition.Draw(spriteBatch);
        }
    }

    private void DrawPlayer(SpriteBatch spriteBatch)
    {
        int frameIndex = animator.GetCurrentFrame();
        // Texture2D sprite = playerSprites.GetFrame(frameIndex);

        Vector2 screenPos = player.Position - camera.Position;

        SpriteEffects flip = player.FacingRight ?
            SpriteEffects.None :
            SpriteEffects.FlipHorizontally;

        // TODO: Draw actual sprite
        // spriteBatch.Draw(sprite, screenPos, null, Color.White, 0f, Vector2.Zero, 1f, flip, 0f);

        // Temporary: draw colored rectangle
        Rectangle playerRect = new Rectangle((int)screenPos.X, (int)screenPos.Y, 16, 24);
        // spriteBatch.Draw(pixelTexture, playerRect, Color.Blue);
    }
}
```

#### 3. Update Game1.cs - Use GameLoop
```csharp
public class Game1 : Game
{
    // ... existing fields ...
    private GameLoop gameLoop; // NEW

    protected override void Initialize()
    {
        // ... existing code ...
        gameLoop = new GameLoop(); // NEW
        base.Initialize();
    }

    protected override void Update(GameTime gameTime)
    {
        _input.Update();

        // Global hotkeys
        if (_input.IsKeyPressed(Keys.F1)) { /* ... */ }
        if (_input.IsKeyPressed(Keys.F2)) { /* ... */ }

        // Use fixed timestep game loop
        gameLoop.Update(gameTime, _stateManager); // CHANGED

        base.Update(gameTime);
    }
}
```

### Assembly Reference
- **zelres2_chunk_00** (lines 1-2000) - Main game loop structure
- All previous phases integrated

### Dependencies
- **Requires**: All previous phases (4-14)
- **Blocks**: None (final integration)

---

## Implementation Order Recommendation

### 🎯 Sprint 1: Core Gameplay Foundation (Phases 4-6)
**Goal**: Player can move, jump, and animate

1. ✅ **Phase 4**: Player entity (Player.cs, PlayerController.cs, Camera.cs)
2. ✅ **Phase 5**: Physics engine (PhysicsEngine.cs, CollisionMap.cs)
3. ✅ **Phase 6**: Player animation (PlayerAnimator.cs, SpriteSheet.cs)

**Deliverable**: Playable character in test level (no enemies)
**Estimated Time**: 2-3 days

---

### 🎯 Sprint 2: Combat & Enemies (Phases 7-8, 11)
**Goal**: Combat system working with enemies

4. ✅ **Phase 7**: Combat system (PlayerStats.cs, CombatSystem.cs)
5. ✅ **Phase 8**: Enemy AI (Enemy.cs, EnemyManager.cs, Slime/Bat/Skeleton)
6. ✅ **Phase 11**: HUD (HUD.cs)

**Deliverable**: Player can fight enemies, see HP/MP bars
**Estimated Time**: 3-4 days

---

### 🎯 Sprint 3: Level Systems (Phases 9-10, 15)
**Goal**: Full gameplay loop

7. ✅ **Phase 9**: Level loading (LevelData.cs, LevelLoader.cs, LevelTransition.cs)
8. ✅ **Phase 10**: Tilemap renderer (TilemapRenderer.cs, TileSet.cs)
9. ✅ **Phase 15**: Game loop integration (GameLoop.cs, update PlayingState.cs)

**Deliverable**: Complete gameplay (levels, enemies, combat, transitions)
**Estimated Time**: 4-5 days

---

### 🎯 Sprint 4: RPG Systems - OPTIONAL (Phases 12-13)
**Goal**: Equipment & leveling

10. ✅ **Phase 12**: Equipment/inventory (InventorySystem.cs, EquipmentSlots.cs, ItemDatabase.cs)
11. ✅ **Phase 13**: Leveling (extend PlayerStats.cs)

**Deliverable**: Full RPG mechanics (gear, level-ups)
**Estimated Time**: 2-3 days

---

### 🎯 Sprint 5: Visual Polish - OPTIONAL (Phase 14)
**Goal**: Authentic opening scene

12. ✅ **Phase 14**: .grp decoder (expand GrpDecoder.cs, update OpeningScene.cs)

**Deliverable**: Beautiful opening/ending cinematics
**Estimated Time**: 2-3 days

---

## Total Project Estimate

- **Minimum Viable Product** (Sprints 1-3): **9-12 days** of development
- **Full Game** (Sprints 1-5): **17-25 days** of development
- **Total Code**: ~7,250 lines across 50+ new classes

---

## Critical Assembly References by Phase

| Phase | Primary Assembly Files |
|-------|------------------------|
| 4 | zelres1_chunk_00 (0x0080-0x009F), zelres1_chunk_06 |
| 5 | zelres2_chunk_04, zelres2_chunk_03, zelres3_chunk_16 |
| 6 | zelres1_chunk_00 (0x0A20-0x0CCF), zelres2 chunks 18-35 |
| 7 | zelres1_chunk_04, zelres2_chunk_02, zelres1_chunk_06 |
| 8 | zelres2_chunk_06, zelres2_enemy_types, zelres3_chunk_32 |
| 9 | zelres3_chunk_00, zelres3_level_maps_reference |
| 10 | zelres3_chunk_14 |
| 11 | zelres2_chunk_00 (HUD section), gmmcga |
| 12 | zelres1_chunk_02 (complete file) |
| 13 | zelres1_chunk_04 (leveling section) |
| 14 | zelres1_chunks 07/08/09/10/11, OPENING_SCENE_ANALYSIS |
| 15 | zelres2_chunk_00 (main loop) |

---

## Success Criteria

### ✅ Minimum Viable Product (After Sprint 3)
- Player can walk, jump, attack
- Enemies spawn and move with AI
- Combat damage calculation works
- Level loads with tilemap
- Camera follows player
- HUD displays HP/MP
- Game loop runs at authentic 18.2 FPS

### ✅ Full Game (After Sprint 5)
- All 14+ enemy types implemented
- Equipment & inventory functional
- Level-up system working
- Opening scene plays with real graphics
- Save/load works with full game state
- All 19 cavern maps loadable

---

*This implementation plan is based on 47 assembly walkthroughs totaling ~50,000 lines of documented reverse-engineered code from the original DOS game.*
