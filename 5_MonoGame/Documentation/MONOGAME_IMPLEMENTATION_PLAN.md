# Zeliard MonoGame - C# Implementation Plan

**Date**: 2026-02-11
**Status**: Clean slate - starting from scratch
**Goal**: Full authentic gameplay matching DOS assembly

---

## Current State

### ✅ Project Setup
- MonoGame 3.8.4 project configured (.NET 8.0)
- Window: 960×600 (320×200 DOS resolution × 3)
- Builds successfully
- Black screen, ESC to exit

### 📂 Current Files
```
MONOGAME_AUTHENTIC/
├── Program.cs     (13 lines) - Entry point
├── Game1.cs       (54 lines) - Minimal skeleton
└── Content/       - MonoGame content pipeline
```

**Total Code**: 67 lines
**Bad assumptions cleared**: 3,710 lines deleted ✅

---

## Implementation Overview

Based on **47 assembly walkthroughs** (~50,000 lines of documented reverse-engineered code), this plan outlines **15 implementation phases** organized into **5 sprints**.

**Total Estimated Effort**: ~7,250 new lines of code, 17-25 days

---

## Phase Dependency Chart

```
Foundation: [Phase 1] → [Phase 2] → [Phase 3]
                ↓           ↓           ↓
Combat:    [Phase 4] → [Phase 5] → [Phase 6] → [Phase 7]
                                        ↓           ↓
Level:                              [Phase 8] → [Phase 9] → [Phase 10]
                                                    ↓
HUD:                                            [Phase 11]
                                                    ↓
RPG:                                      [Phase 12] [Phase 13]
                                                    ↓
Polish:                                         [Phase 14]
                                                    ↓
Integration:                                    [Phase 15]
```

---

# SPRINT 1: Core Gameplay Foundation

## 📋 PHASE 1: Player Entity
**Complexity**: 🟢 SIMPLE
**Estimated Effort**: ~300 lines, 3 classes
**Goal**: Player character exists in world with basic movement

### Implementation

#### 1. Create `Player.cs`
```csharp
namespace ZeliardAuthentic.Entities
{
    public class Player
    {
        // Position & Velocity (from zelres1_chunk_00, offsets 0x0080-0x009F)
        public Vector2 Position { get; set; }        // 0x0080 (X), 0x0083 (Y)
        public Vector2 Velocity { get; set; }        // 0x0085/86 (VX), 0x008C (VY)

        // State
        public bool FacingRight { get; set; } = true;
        public bool OnGround { get; set; } = false;
        public bool CanJump => OnGround;

        // Constants from assembly
        private const float WalkSpeed = 2.0f;        // pixels/frame at 18.2 FPS
        private const float JumpStrength = -8.0f;    // pixels/frame (negative = up)

        public Player()
        {
            Position = new Vector2(50, 150);         // Default spawn
            Velocity = Vector2.Zero;
        }

        public void Update(GameTime gameTime)
        {
            // Apply velocity to position
            Position += Velocity;

            // Apply friction when grounded
            if (OnGround)
            {
                Velocity = new Vector2(Velocity.X * 0.8f, Velocity.Y);
            }
        }

        public Rectangle GetBounds()
        {
            return new Rectangle((int)Position.X, (int)Position.Y, 16, 24);
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            // Temporary: Draw colored rectangle
            Rectangle bounds = GetBounds();
            // TODO: Replace with actual sprite rendering
        }
    }
}
```

#### 2. Create `Input/InputManager.cs`
```csharp
namespace ZeliardAuthentic.Input
{
    public enum GameAction
    {
        Left, Right, Up, Down,
        Jump, Attack, Magic,
        Pause, Inventory, Confirm, Cancel
    }

    public class InputManager
    {
        private KeyboardState currentKeyState;
        private KeyboardState previousKeyState;

        public void Update()
        {
            previousKeyState = currentKeyState;
            currentKeyState = Keyboard.GetState();
        }

        public bool IsPressed(GameAction action)
        {
            Keys key = MapActionToKey(action);
            return currentKeyState.IsKeyDown(key) && !previousKeyState.IsKeyDown(key);
        }

        public bool IsHeld(GameAction action)
        {
            Keys key = MapActionToKey(action);
            return currentKeyState.IsKeyDown(key);
        }

        public bool IsReleased(GameAction action)
        {
            Keys key = MapActionToKey(action);
            return !currentKeyState.IsKeyDown(key) && previousKeyState.IsKeyDown(key);
        }

        private Keys MapActionToKey(GameAction action)
        {
            return action switch
            {
                GameAction.Left => Keys.Left,
                GameAction.Right => Keys.Right,
                GameAction.Up => Keys.Up,
                GameAction.Down => Keys.Down,
                GameAction.Jump => Keys.Space,
                GameAction.Attack => Keys.Z,
                GameAction.Magic => Keys.X,
                GameAction.Pause => Keys.Escape,
                GameAction.Inventory => Keys.I,
                GameAction.Confirm => Keys.Enter,
                GameAction.Cancel => Keys.Escape,
                _ => Keys.None
            };
        }
    }
}
```

#### 3. Create `PlayerController.cs`
```csharp
namespace ZeliardAuthentic.Entities
{
    public class PlayerController
    {
        public void ProcessInput(InputManager input, Player player)
        {
            // Horizontal movement
            float moveX = 0f;

            if (input.IsHeld(GameAction.Left))
            {
                moveX = -2.0f;
                player.FacingRight = false;
            }
            else if (input.IsHeld(GameAction.Right))
            {
                moveX = 2.0f;
                player.FacingRight = true;
            }

            player.Velocity = new Vector2(moveX, player.Velocity.Y);

            // Jump
            if (input.IsPressed(GameAction.Jump) && player.CanJump)
            {
                player.Velocity = new Vector2(player.Velocity.X, -8.0f);
                player.OnGround = false;
            }
        }
    }
}
```

#### 4. Create `Camera.cs`
```csharp
namespace ZeliardAuthentic.Rendering
{
    public class Camera
    {
        public Vector2 Position { get; set; }

        private const int ScreenWidth = 320;
        private const int ScreenHeight = 200;

        public void Follow(Player player, int levelWidth, int levelHeight)
        {
            // Center camera on player
            float targetX = player.Position.X - ScreenWidth / 2;
            float targetY = player.Position.Y - ScreenHeight / 2;

            // Clamp to level bounds
            targetX = Math.Clamp(targetX, 0, levelWidth - ScreenWidth);
            targetY = Math.Clamp(targetY, 0, levelHeight - ScreenHeight);

            Position = new Vector2(targetX, targetY);
        }

        public Matrix GetTransformMatrix()
        {
            return Matrix.CreateTranslation(-Position.X, -Position.Y, 0);
        }
    }
}
```

#### 5. Update `Game1.cs`
```csharp
public class Game1 : Game
{
    private GraphicsDeviceManager _graphics;
    private SpriteBatch _spriteBatch;

    // Core systems
    private Player _player;
    private PlayerController _playerController;
    private InputManager _input;
    private Camera _camera;

    public Game1()
    {
        _graphics = new GraphicsDeviceManager(this);
        Content.RootDirectory = "Content";
        IsMouseVisible = true;

        _graphics.PreferredBackBufferWidth = 960;
        _graphics.PreferredBackBufferHeight = 600;
    }

    protected override void Initialize()
    {
        _player = new Player();
        _playerController = new PlayerController();
        _input = new InputManager();
        _camera = new Camera();

        base.Initialize();
    }

    protected override void LoadContent()
    {
        _spriteBatch = new SpriteBatch(GraphicsDevice);
    }

    protected override void Update(GameTime gameTime)
    {
        _input.Update();

        if (_input.IsPressed(GameAction.Cancel))
            Exit();

        _playerController.ProcessInput(_input, _player);
        _player.Update(gameTime);
        _camera.Follow(_player, 320, 200); // Temp level size

        base.Update(gameTime);
    }

    protected override void Draw(GameTime gameTime)
    {
        GraphicsDevice.Clear(Color.Black);

        _spriteBatch.Begin(transformMatrix: _camera.GetTransformMatrix());
        _player.Draw(_spriteBatch);
        _spriteBatch.End();

        base.Draw(gameTime);
    }
}
```

### Assembly References
- **zelres1_chunk_00** (offsets 0x0080-0x009F) - Player position/velocity
- **zelres1_chunk_06** (lines 123-796) - Player input processing

### Testing
- Player visible as colored rectangle
- Arrow keys move player left/right
- Space jumps (no gravity yet)
- Camera follows player

### Dependencies
- **Requires**: Clean project
- **Blocks**: Phase 2 (physics needs player to apply forces)

---

## 📋 PHASE 2: Physics Engine
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~600 lines, 3 classes
**Goal**: Gravity, collision detection, and resolution

### Implementation

#### 1. Create `Physics/PhysicsEngine.cs`
```csharp
namespace ZeliardAuthentic.Physics
{
    public class PhysicsEngine
    {
        // From zelres2_chunk_04: Gravity = 9.8 pixels/sec² ÷ 18.2 FPS = 0.538
        private const float Gravity = 0.5f;

        public void Update(Player player, CollisionMap collisionMap)
        {
            // Apply gravity
            if (!player.OnGround)
            {
                player.Velocity += new Vector2(0, Gravity);

                // Terminal velocity
                if (player.Velocity.Y > 10.0f)
                    player.Velocity = new Vector2(player.Velocity.X, 10.0f);
            }

            // Apply velocity
            player.Position += player.Velocity;

            // Detect & resolve collisions
            player.OnGround = false;
            ResolveCollisions(player, collisionMap);
        }

        private void ResolveCollisions(Player player, CollisionMap map)
        {
            Rectangle playerBounds = player.GetBounds();

            // Check tiles in 3x3 grid around player
            int tileSize = 16;
            int startTileX = playerBounds.Left / tileSize - 1;
            int endTileX = playerBounds.Right / tileSize + 1;
            int startTileY = playerBounds.Top / tileSize - 1;
            int endTileY = playerBounds.Bottom / tileSize + 1;

            for (int tileY = startTileY; tileY <= endTileY; tileY++)
            {
                for (int tileX = startTileX; tileX <= endTileX; tileX++)
                {
                    if (map.IsSolid(tileX, tileY))
                    {
                        Rectangle tileBounds = map.GetTileBounds(tileX, tileY);

                        if (playerBounds.Intersects(tileBounds))
                        {
                            ResolveIntersection(player, playerBounds, tileBounds);
                        }
                    }
                }
            }
        }

        private void ResolveIntersection(Player player, Rectangle playerBounds, Rectangle tileBounds)
        {
            // Calculate overlap on each axis
            int overlapX = Math.Min(playerBounds.Right - tileBounds.Left,
                                     tileBounds.Right - playerBounds.Left);
            int overlapY = Math.Min(playerBounds.Bottom - tileBounds.Top,
                                     tileBounds.Bottom - playerBounds.Top);

            // Resolve on axis with least overlap
            if (overlapX < overlapY)
            {
                // Horizontal collision
                if (player.Velocity.X > 0) // Moving right
                    player.Position -= new Vector2(overlapX, 0);
                else // Moving left
                    player.Position += new Vector2(overlapX, 0);

                player.Velocity = new Vector2(0, player.Velocity.Y);
            }
            else
            {
                // Vertical collision
                if (player.Velocity.Y > 0) // Falling
                {
                    player.Position -= new Vector2(0, overlapY);
                    player.Velocity = new Vector2(player.Velocity.X, 0);
                    player.OnGround = true;
                }
                else // Rising
                {
                    player.Position += new Vector2(0, overlapY);
                    player.Velocity = new Vector2(player.Velocity.X, 0);
                }
            }
        }
    }
}
```

#### 2. Create `Physics/CollisionMap.cs`
```csharp
namespace ZeliardAuthentic.Physics
{
    public class CollisionMap
    {
        private byte[,] tiles; // 0 = empty, 1 = solid
        private const int TileSize = 16;

        public int Width => tiles.GetLength(1);
        public int Height => tiles.GetLength(0);

        public CollisionMap(int width, int height)
        {
            tiles = new byte[height, width];
        }

        public bool IsSolid(int tileX, int tileY)
        {
            // Out of bounds = solid (prevent falling off world)
            if (tileX < 0 || tileY < 0 || tileX >= Width || tileY >= Height)
                return true;

            return tiles[tileY, tileX] == 1;
        }

        public Rectangle GetTileBounds(int tileX, int tileY)
        {
            return new Rectangle(tileX * TileSize, tileY * TileSize, TileSize, TileSize);
        }

        public void SetTile(int tileX, int tileY, byte value)
        {
            if (tileX >= 0 && tileY >= 0 && tileX < Width && tileY < Height)
                tiles[tileY, tileX] = value;
        }

        // For testing: create a simple level
        public static CollisionMap CreateTestLevel()
        {
            // 20 tiles wide × 13 tiles tall = 320×200 at 16px tiles
            var map = new CollisionMap(20, 13);

            // Floor at bottom
            for (int x = 0; x < 20; x++)
            {
                map.SetTile(x, 11, 1); // Solid floor
                map.SetTile(x, 12, 1);
            }

            // Platform in middle
            for (int x = 5; x < 10; x++)
            {
                map.SetTile(x, 8, 1);
            }

            // Walls on sides
            for (int y = 0; y < 13; y++)
            {
                map.SetTile(0, y, 1);
                map.SetTile(19, y, 1);
            }

            return map;
        }
    }
}
```

#### 3. Update `Game1.cs`
```csharp
private PhysicsEngine _physics;
private CollisionMap _collisionMap;

protected override void Initialize()
{
    _player = new Player();
    _playerController = new PlayerController();
    _input = new InputManager();
    _camera = new Camera();
    _physics = new PhysicsEngine();
    _collisionMap = CollisionMap.CreateTestLevel();

    base.Initialize();
}

protected override void Update(GameTime gameTime)
{
    _input.Update();
    if (_input.IsPressed(GameAction.Cancel)) Exit();

    _playerController.ProcessInput(_input, _player);
    _physics.Update(_player, _collisionMap);        // NEW: Apply physics
    _player.Update(gameTime);
    _camera.Follow(_player, 320, 200);

    base.Update(gameTime);
}
```

### Assembly References
- **zelres2_chunk_04** (lines 1-500) - Physics engine
- **zelres2_chunk_03** (lines 100-400) - Collision resolution
- **zelres3_chunk_16** - Tile collision

### Testing
- Player falls due to gravity
- Player lands on floor and platforms
- Player can jump off platforms
- Wall collisions prevent movement through tiles

### Dependencies
- **Requires**: Phase 1 (player entity)
- **Blocks**: Phase 3 (animation needs physics for state)

---

## 📋 PHASE 3: Player Animation
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~400 lines, 2 classes
**Goal**: Player sprite animates based on state

### Implementation

#### 1. Create `Animation/PlayerAnimator.cs`
```csharp
namespace ZeliardAuthentic.Animation
{
    public enum AnimationState
    {
        Idle = 0,
        Walk = 1,
        JumpUp = 3,
        JumpDown = 5,
        Attack = 6
    }

    public class PlayerAnimator
    {
        private AnimationState _currentState = AnimationState.Idle;
        private int _currentFrame = 0;
        private float _frameTimer = 0f;

        // DOS 18.2 FPS timing
        private const float FrameTime = 1f / 18.2f;

        private static readonly int[] FrameCounts = new int[]
        {
            2,  // Idle: 2 frames
            8,  // Walk: 8 frames
            0, 0, // (unused states)
            1,  // JumpUp: 1 frame
            0,  // (unused)
            1,  // JumpDown: 1 frame
            6   // Attack: 6 frames
        };

        public AnimationState CurrentState => _currentState;
        public int CurrentFrame => _currentFrame;

        public void Update(GameTime gameTime, Player player)
        {
            // Determine state from player physics
            AnimationState newState = DetermineState(player);

            if (newState != _currentState)
            {
                SetState(newState);
            }

            // Advance frame timer
            _frameTimer += (float)gameTime.ElapsedGameTime.TotalSeconds;

            if (_frameTimer >= FrameTime)
            {
                _frameTimer -= FrameTime;
                _currentFrame++;

                int maxFrames = FrameCounts[(int)_currentState];
                if (_currentFrame >= maxFrames)
                {
                    _currentFrame = 0; // Loop animation
                }
            }
        }

        private AnimationState DetermineState(Player player)
        {
            // Jumping/falling takes priority
            if (!player.OnGround)
            {
                return player.Velocity.Y < 0 ? AnimationState.JumpUp : AnimationState.JumpDown;
            }

            // Walking
            if (Math.Abs(player.Velocity.X) > 0.1f)
            {
                return AnimationState.Walk;
            }

            // Idle
            return AnimationState.Idle;
        }

        private void SetState(AnimationState newState)
        {
            _currentState = newState;
            _currentFrame = 0;
            _frameTimer = 0f;
        }
    }
}
```

#### 2. Update `Player.cs`
```csharp
public class Player
{
    // ... existing fields ...

    private Texture2D _debugTexture; // Temporary colored rectangle

    public void LoadContent(GraphicsDevice device)
    {
        // Create 16×24 colored rectangle (temporary)
        _debugTexture = new Texture2D(device, 16, 24);
        Color[] colors = new Color[16 * 24];
        for (int i = 0; i < colors.Length; i++)
            colors[i] = Color.Blue;
        _debugTexture.SetData(colors);
    }

    public void Draw(SpriteBatch spriteBatch, PlayerAnimator animator)
    {
        SpriteEffects flip = FacingRight ? SpriteEffects.None : SpriteEffects.FlipHorizontally;

        // TODO: Replace with actual sprite frames based on animator.CurrentState/CurrentFrame
        spriteBatch.Draw(_debugTexture, Position, null, Color.White, 0f, Vector2.Zero, 1f, flip, 0f);
    }
}
```

#### 3. Update `Game1.cs`
```csharp
private PlayerAnimator _animator;

protected override void Initialize()
{
    // ... existing ...
    _animator = new PlayerAnimator();
    base.Initialize();
}

protected override void LoadContent()
{
    _spriteBatch = new SpriteBatch(GraphicsDevice);
    _player.LoadContent(GraphicsDevice);
}

protected override void Update(GameTime gameTime)
{
    // ... existing ...
    _animator.Update(gameTime, _player);  // NEW
    base.Update(gameTime);
}

protected override void Draw(GameTime gameTime)
{
    GraphicsDevice.Clear(Color.Black);

    _spriteBatch.Begin(transformMatrix: _camera.GetTransformMatrix());
    _player.Draw(_spriteBatch, _animator);  // Pass animator
    _spriteBatch.End();

    base.Draw(gameTime);
}
```

### Assembly References
- **zelres1_chunk_00** (offsets 0x0A20-0x0CCF) - Animation state machine
- **zelres1_chunk_00** (offset 0x0083) - Animation frame counter

### Testing
- Player sprite flips when changing direction
- Animation state changes: idle → walk → jump
- Frame timing runs at 18.2 FPS

### Dependencies
- **Requires**: Phase 2 (physics for state determination)
- **Blocks**: Phase 4 (combat needs attack animation)

---

# SPRINT 2: Combat & Enemies

## 📋 PHASE 4: Combat System
**Complexity**: 🔴 COMPLEX
**Estimated Effort**: ~800 lines, 4 classes
**Goal**: Player can attack, enemies take damage

### Implementation

#### 1. Create `Stats/PlayerStats.cs`
```csharp
namespace ZeliardAuthentic.Stats
{
    public class PlayerStats
    {
        // From zelres1_chunk_04 (offsets 0x6000-0x6050)
        public int Level { get; set; } = 1;
        public uint Experience { get; set; } = 0;
        public uint Gold { get; set; } = 0;

        public int CurrentHP { get; set; } = 50;
        public int MaxHP { get; set; } = 50;
        public int CurrentMP { get; set; } = 10;
        public int MaxMP { get; set; } = 10;

        public int BaseAttack { get; set; } = 5;
        public int BaseDefense { get; set; } = 3;

        // Total stats (base + equipment bonuses, set later in Phase 12)
        public int TotalAttack => BaseAttack;
        public int TotalDefense => BaseDefense;

        // Invincibility frames
        public ushort InvincibleTimer { get; set; } = 0;

        public void Update(GameTime gameTime)
        {
            if (InvincibleTimer > 0)
                InvincibleTimer--;
        }

        public int CalculateDamage(int targetDefense)
        {
            // From zelres2_chunk_02 (damage formula)
            int baseDamage = TotalAttack - targetDefense;
            if (baseDamage < 1) baseDamage = 1;

            // ±10% variance
            float variance = (Random.Shared.NextSingle() * 0.2f) - 0.1f;
            int finalDamage = (int)(baseDamage * (1.0f + variance));

            return Math.Max(1, finalDamage);
        }

        public void TakeDamage(int damage)
        {
            if (InvincibleTimer > 0) return;

            CurrentHP -= damage;
            if (CurrentHP < 0) CurrentHP = 0;

            // 60 frames = ~3.3 seconds at 18.2 FPS
            InvincibleTimer = 60;
        }
    }
}
```

#### 2. Create `Combat/CombatSystem.cs`
```csharp
namespace ZeliardAuthentic.Combat
{
    public class CombatSystem
    {
        public void Update(Player player, List<Enemy> enemies)
        {
            // Player attacks enemies
            if (player.IsAttacking)
            {
                Rectangle swordHitbox = GetSwordHitbox(player);

                foreach (var enemy in enemies)
                {
                    if (!enemy.IsDead && swordHitbox.Intersects(enemy.GetBounds()))
                    {
                        int damage = player.Stats.CalculateDamage(enemy.Defense);
                        enemy.TakeDamage(damage);
                    }
                }
            }

            // Enemies attack player
            foreach (var enemy in enemies)
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
            int swordReach = 24;
            int swordHeight = 32;

            if (player.FacingRight)
            {
                return new Rectangle(
                    (int)player.Position.X + 16,
                    (int)player.Position.Y,
                    swordReach,
                    swordHeight
                );
            }
            else
            {
                return new Rectangle(
                    (int)player.Position.X - swordReach,
                    (int)player.Position.Y,
                    swordReach,
                    swordHeight
                );
            }
        }
    }
}
```

#### 3. Update `Player.cs`
```csharp
public class Player
{
    // ... existing fields ...

    public PlayerStats Stats { get; set; } = new PlayerStats();
    public bool IsAttacking { get; set; } = false;
    public int AttackFrameCounter { get; set; } = 0;

    public void Update(GameTime gameTime)
    {
        // ... existing ...

        Stats.Update(gameTime);

        // Update attack state
        if (IsAttacking)
        {
            AttackFrameCounter++;
            if (AttackFrameCounter >= 6) // 6 frames attack animation
            {
                IsAttacking = false;
                AttackFrameCounter = 0;
            }
        }
    }
}
```

#### 4. Update `PlayerController.cs`
```csharp
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
```

### Assembly References
- **zelres1_chunk_04** - Player stats & damage formulas
- **zelres2_chunk_02** - Damage calculation
- **zelres1_chunk_06** (0x024B-0x028B) - Sword hitbox

### Testing
- Player can press Z to attack
- Attack hitbox visible (debug)
- Damage numbers calculated correctly

### Dependencies
- **Requires**: Phase 3 (attack animation)
- **Blocks**: Phase 5 (enemies need combat to take damage)

---

## 📋 PHASE 5: Enemy AI Framework
**Complexity**: 🔴 COMPLEX
**Estimated Effort**: ~1500 lines, 8+ classes
**Goal**: Enemies spawn, move, attack, and die

### Implementation

#### 1. Create `Entities/Enemy.cs` (base class)
```csharp
namespace ZeliardAuthentic.Entities
{
    public enum AIState
    {
        Patrol,
        Chase,
        Attack,
        Stunned
    }

    public abstract class Enemy
    {
        public Vector2 Position { get; set; }
        public Vector2 Velocity { get; set; }
        public int HP { get; set; }
        public int Attack { get; set; }
        public int Defense { get; set; }
        public bool IsDead => HP <= 0;

        protected AIState _currentState = AIState.Patrol;

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
            // TODO: Drop XP/items
        }

        public abstract Rectangle GetBounds();
        public abstract void Draw(SpriteBatch spriteBatch);
    }
}
```

#### 2. Create `Entities/Enemies/Slime.cs`
```csharp
namespace ZeliardAuthentic.Entities.Enemies
{
    public class Slime : Enemy
    {
        private bool _movingRight = true;
        private const float Speed = 1.0f;
        private Texture2D _debugTexture;

        public Slime(Vector2 position, GraphicsDevice device)
        {
            Position = position;
            HP = 10;
            Attack = 3;
            Defense = 1;

            // Temporary debug texture
            _debugTexture = new Texture2D(device, 16, 16);
            Color[] colors = new Color[16 * 16];
            for (int i = 0; i < colors.Length; i++)
                colors[i] = Color.Green;
            _debugTexture.SetData(colors);
        }

        public override void UpdateAI(Player player, GameTime gameTime)
        {
            float distanceToPlayer = Vector2.Distance(Position, player.Position);

            switch (_currentState)
            {
                case AIState.Patrol:
                    Patrol();
                    if (distanceToPlayer < 100f)
                        _currentState = AIState.Chase;
                    break;

                case AIState.Chase:
                    Chase(player);
                    if (distanceToPlayer > 150f)
                        _currentState = AIState.Patrol;
                    break;
            }

            Position += Velocity;
        }

        private void Patrol()
        {
            Velocity = new Vector2(_movingRight ? Speed : -Speed, 0);
            // TODO: Check for walls and turn around
        }

        private void Chase(Player player)
        {
            if (player.Position.X > Position.X)
            {
                Velocity = new Vector2(Speed, 0);
                _movingRight = true;
            }
            else
            {
                Velocity = new Vector2(-Speed, 0);
                _movingRight = false;
            }
        }

        public override Rectangle GetBounds()
        {
            return new Rectangle((int)Position.X, (int)Position.Y, 16, 16);
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            spriteBatch.Draw(_debugTexture, Position, Color.White);
        }
    }
}
```

#### 3. Create `Entities/EnemyManager.cs`
```csharp
namespace ZeliardAuthentic.Entities
{
    public class EnemyManager
    {
        private List<Enemy> _activeEnemies = new List<Enemy>();

        public void AddEnemy(Enemy enemy)
        {
            _activeEnemies.Add(enemy);
        }

        public void Update(Player player, GameTime gameTime)
        {
            for (int i = _activeEnemies.Count - 1; i >= 0; i--)
            {
                var enemy = _activeEnemies[i];

                if (enemy.IsDead)
                {
                    _activeEnemies.RemoveAt(i);
                    continue;
                }

                enemy.UpdateAI(player, gameTime);
            }
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            foreach (var enemy in _activeEnemies)
            {
                if (!enemy.IsDead)
                    enemy.Draw(spriteBatch);
            }
        }

        public List<Enemy> GetActiveEnemies()
        {
            return _activeEnemies;
        }

        public void Clear()
        {
            _activeEnemies.Clear();
        }
    }
}
```

#### 4. Update `Game1.cs`
```csharp
private EnemyManager _enemyManager;
private CombatSystem _combatSystem;

protected override void Initialize()
{
    // ... existing ...
    _enemyManager = new EnemyManager();
    _combatSystem = new CombatSystem();

    // Spawn test enemies
    _enemyManager.AddEnemy(new Slime(new Vector2(150, 150), GraphicsDevice));
    _enemyManager.AddEnemy(new Slime(new Vector2(200, 150), GraphicsDevice));

    base.Initialize();
}

protected override void Update(GameTime gameTime)
{
    // ... existing ...
    _enemyManager.Update(_player, gameTime);
    _combatSystem.Update(_player, _enemyManager.GetActiveEnemies());
    base.Update(gameTime);
}

protected override void Draw(GameTime gameTime)
{
    GraphicsDevice.Clear(Color.Black);

    _spriteBatch.Begin(transformMatrix: _camera.GetTransformMatrix());
    _enemyManager.Draw(_spriteBatch);
    _player.Draw(_spriteBatch, _animator);
    _spriteBatch.End();

    base.Draw(gameTime);
}
```

### Assembly References
- **zelres2_chunk_06** - AI behaviors (patrol/chase/attack)
- **zelres2_enemy_types_walkthrough.md** - 14 enemy types
- **zelres3_chunk_32** - Enemy manager/spawning

### Testing
- Slimes patrol back and forth
- Slimes chase player when close
- Player can attack and kill slimes
- Dead enemies disappear

### Dependencies
- **Requires**: Phase 4 (combat system)
- **Blocks**: Phase 8 (level loading needs spawn points)

---

## 📋 PHASE 6: HUD System
**Complexity**: 🟢 SIMPLE
**Estimated Effort**: ~250 lines, 1 class
**Goal**: Display HP/MP bars, score

### Implementation

#### 1. Create `UI/HUD.cs`
```csharp
namespace ZeliardAuthentic.UI
{
    public class HUD
    {
        private Texture2D _pixel;

        public HUD(GraphicsDevice device)
        {
            _pixel = new Texture2D(device, 1, 1);
            _pixel.SetData(new[] { Color.White });
        }

        public void Draw(SpriteBatch spriteBatch, PlayerStats stats, Vector2 cameraPos)
        {
            // Draw in screen space (not affected by camera)
            Vector2 hudPos = cameraPos; // Top-left of screen

            DrawHPBar(spriteBatch, stats.CurrentHP, stats.MaxHP, hudPos + new Vector2(10, 10));
            DrawMPBar(spriteBatch, stats.CurrentMP, stats.MaxMP, hudPos + new Vector2(10, 20));
        }

        private void DrawHPBar(SpriteBatch spriteBatch, int current, int max, Vector2 position)
        {
            int barWidth = 100;
            int barHeight = 6;

            // Background (black)
            spriteBatch.Draw(_pixel, new Rectangle((int)position.X, (int)position.Y, barWidth, barHeight), Color.Black);

            // Fill (red → yellow → green based on %)
            float percentage = (float)current / max;
            int fillWidth = (int)(barWidth * percentage);

            Color fillColor = percentage > 0.5f ? Color.Green :
                              percentage > 0.25f ? Color.Yellow : Color.Red;

            spriteBatch.Draw(_pixel, new Rectangle((int)position.X, (int)position.Y, fillWidth, barHeight), fillColor);

            // Border (white)
            DrawRectangleBorder(spriteBatch, new Rectangle((int)position.X, (int)position.Y, barWidth, barHeight), Color.White);
        }

        private void DrawMPBar(SpriteBatch spriteBatch, int current, int max, Vector2 position)
        {
            int barWidth = 100;
            int barHeight = 6;

            spriteBatch.Draw(_pixel, new Rectangle((int)position.X, (int)position.Y, barWidth, barHeight), Color.Black);

            float percentage = (float)current / max;
            int fillWidth = (int)(barWidth * percentage);

            spriteBatch.Draw(_pixel, new Rectangle((int)position.X, (int)position.Y, fillWidth, barHeight), Color.Blue);

            DrawRectangleBorder(spriteBatch, new Rectangle((int)position.X, (int)position.Y, barWidth, barHeight), Color.White);
        }

        private void DrawRectangleBorder(SpriteBatch spriteBatch, Rectangle rect, Color color)
        {
            spriteBatch.Draw(_pixel, new Rectangle(rect.X, rect.Y, rect.Width, 1), color); // Top
            spriteBatch.Draw(_pixel, new Rectangle(rect.X, rect.Y + rect.Height - 1, rect.Width, 1), color); // Bottom
            spriteBatch.Draw(_pixel, new Rectangle(rect.X, rect.Y, 1, rect.Height), color); // Left
            spriteBatch.Draw(_pixel, new Rectangle(rect.X + rect.Width - 1, rect.Y, 1, rect.Height), color); // Right
        }
    }
}
```

#### 2. Update `Game1.cs`
```csharp
private HUD _hud;

protected override void Initialize()
{
    // ... existing ...
    _hud = new HUD(GraphicsDevice);
    base.Initialize();
}

protected override void Draw(GameTime gameTime)
{
    GraphicsDevice.Clear(Color.Black);

    // Draw game world
    _spriteBatch.Begin(transformMatrix: _camera.GetTransformMatrix());
    _enemyManager.Draw(_spriteBatch);
    _player.Draw(_spriteBatch, _animator);
    _spriteBatch.End();

    // Draw HUD (no camera transform)
    _spriteBatch.Begin();
    _hud.Draw(_spriteBatch, _player.Stats, _camera.Position);
    _spriteBatch.End();

    base.Draw(gameTime);
}
```

### Assembly References
- **zelres2_chunk_00** (lines 800-1000) - HUD rendering
- **gmmcga_walkthrough.md** (offset 0x03CC) - Lives display

### Testing
- HP bar shows current/max HP
- MP bar shows current/max MP
- Bars change color based on percentage
- HUD stays fixed to screen (doesn't scroll with camera)

### Dependencies
- **Requires**: Phase 4 (PlayerStats)
- **Blocks**: None

---

## 📋 PHASE 7: DOS Fixed Timestep
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~200 lines, 1 class
**Goal**: Authentic 18.2 Hz game loop timing

### Implementation

#### 1. Create `Core/DOSGameLoop.cs`
```csharp
namespace ZeliardAuthentic.Core
{
    public class DOSGameLoop
    {
        // DOS PIT timer: 1193182 Hz ÷ 65536 = 18.2065 Hz
        private const float DOSFrameTime = 1f / 18.2065f; // 54.925ms per frame
        private float _accumulator = 0f;
        private int _frameCount = 0;

        public int FrameCount => _frameCount;

        public void Update(GameTime gameTime, Action<GameTime> updateCallback)
        {
            _accumulator += (float)gameTime.ElapsedGameTime.TotalSeconds;

            // Update in fixed 18.2 Hz increments
            while (_accumulator >= DOSFrameTime)
            {
                GameTime fixedTime = new GameTime(
                    gameTime.TotalGameTime,
                    TimeSpan.FromSeconds(DOSFrameTime)
                );

                updateCallback(fixedTime);

                _accumulator -= DOSFrameTime;
                _frameCount++;
            }
        }
    }
}
```

#### 2. Update `Game1.cs`
```csharp
private DOSGameLoop _dosLoop;

protected override void Initialize()
{
    // ... existing ...
    _dosLoop = new DOSGameLoop();

    // IMPORTANT: Disable MonoGame's variable timestep
    IsFixedTimeStep = false;

    base.Initialize();
}

protected override void Update(GameTime gameTime)
{
    _input.Update();
    if (_input.IsPressed(GameAction.Cancel)) Exit();

    // Run game logic at DOS 18.2 Hz
    _dosLoop.Update(gameTime, (fixedTime) =>
    {
        _playerController.ProcessInput(_input, _player);
        _physics.Update(_player, _collisionMap);
        _player.Update(fixedTime);
        _animator.Update(fixedTime, _player);
        _enemyManager.Update(_player, fixedTime);
        _combatSystem.Update(_player, _enemyManager.GetActiveEnemies());
        _camera.Follow(_player, 320, 200);
    });

    base.Update(gameTime);
}
```

### Assembly References
- **zelres2_chunk_00** (lines 1-100) - Main game loop with DOS timer

### Testing
- Game runs at consistent 18.2 FPS internally
- Rendering can run at any framerate (uncoupled)
- Frame counter increments at 18.2 Hz

### Dependencies
- **Requires**: Phases 1-6 (all game systems)
- **Blocks**: Phase 8 (level loading needs consistent timing)

---

# SPRINT 3: Level Systems

## 📋 PHASE 8: Level Loading
**Complexity**: 🔴 COMPLEX
**Estimated Effort**: ~1000 lines, 5 classes
**Goal**: Load levels from ZELRES3 chunks

### Implementation

#### 1. Create `Level/LevelData.cs`
```csharp
namespace ZeliardAuthentic.Level
{
    public class LevelData
    {
        public int LevelID { get; set; }
        public string Name { get; set; }

        public int[,] Tilemap { get; set; }
        public CollisionMap CollisionMap { get; set; }

        public List<SpawnPoint> SpawnPoints { get; set; } = new();

        public int Width => Tilemap?.GetLength(1) ?? 0;
        public int Height => Tilemap?.GetLength(0) ?? 0;
    }

    public struct SpawnPoint
    {
        public int EnemyType;
        public Vector2 Position;
    }
}
```

#### 2. Create `Level/LevelLoader.cs`
```csharp
namespace ZeliardAuthentic.Level
{
    public class LevelLoader
    {
        private string _chunksPath;

        public LevelLoader(string projectPath)
        {
            _chunksPath = Path.Combine(projectPath, "2_EXTRACTED_CHUNKS", "zelres3_extracted");
        }

        public LevelData LoadLevel(int levelIndex)
        {
            var level = new LevelData
            {
                LevelID = levelIndex,
                Name = $"Cavern {levelIndex + 1}"
            };

            // TODO: Parse actual zelres3 chunks
            // For now, create test level
            level.Tilemap = CreateTestTilemap();
            level.CollisionMap = GenerateCollisionMap(level.Tilemap);
            level.SpawnPoints = CreateTestSpawns();

            return level;
        }

        private int[,] CreateTestTilemap()
        {
            // 20×13 tiles (320×200 at 16px tiles)
            int[,] tilemap = new int[13, 20];

            // Floor
            for (int x = 0; x < 20; x++)
            {
                tilemap[11, x] = 1;
                tilemap[12, x] = 1;
            }

            // Platform
            for (int x = 5; x < 10; x++)
                tilemap[8, x] = 1;

            // Walls
            for (int y = 0; y < 13; y++)
            {
                tilemap[y, 0] = 1;
                tilemap[y, 19] = 1;
            }

            return tilemap;
        }

        private CollisionMap GenerateCollisionMap(int[,] tilemap)
        {
            int height = tilemap.GetLength(0);
            int width = tilemap.GetLength(1);

            var collision = new CollisionMap(width, height);

            for (int y = 0; y < height; y++)
            {
                for (int x = 0; x < width; x++)
                {
                    if (tilemap[y, x] == 1)
                        collision.SetTile(x, y, 1);
                }
            }

            return collision;
        }

        private List<SpawnPoint> CreateTestSpawns()
        {
            return new List<SpawnPoint>
            {
                new SpawnPoint { EnemyType = 0, Position = new Vector2(100, 150) },
                new SpawnPoint { EnemyType = 0, Position = new Vector2(200, 150) }
            };
        }
    }
}
```

#### 3. Update `Game1.cs`
```csharp
private LevelLoader _levelLoader;
private LevelData _currentLevel;

protected override void Initialize()
{
    _player = new Player();
    _playerController = new PlayerController();
    _input = new InputManager();
    _camera = new Camera();
    _physics = new PhysicsEngine();
    _animator = new PlayerAnimator();
    _enemyManager = new EnemyManager();
    _combatSystem = new CombatSystem();
    _hud = new HUD(GraphicsDevice);
    _dosLoop = new DOSGameLoop();

    _levelLoader = new LevelLoader(@"c:\Projects\Zeliard");
    LoadLevel(0);

    IsFixedTimeStep = false;
    base.Initialize();
}

private void LoadLevel(int levelIndex)
{
    _currentLevel = _levelLoader.LoadLevel(levelIndex);
    _collisionMap = _currentLevel.CollisionMap;

    // Spawn enemies
    _enemyManager.Clear();
    foreach (var spawn in _currentLevel.SpawnPoints)
    {
        if (spawn.EnemyType == 0)
            _enemyManager.AddEnemy(new Slime(spawn.Position, GraphicsDevice));
    }

    // Reset player position
    _player.Position = new Vector2(50, 150);
    _player.Velocity = Vector2.Zero;
}

protected override void Update(GameTime gameTime)
{
    // ... use _currentLevel.CollisionMap in physics ...
    _camera.Follow(_player, _currentLevel.Width * 16, _currentLevel.Height * 16);
    base.Update(gameTime);
}
```

### Assembly References
- **zelres3_chunk_00** (lines 1-1000) - Level loader
- **zelres3_level_maps_reference.md** - Level data format

### Testing
- Level loads from LevelData
- Collision map generated from tilemap
- Enemies spawn at defined locations
- Camera respects level boundaries

### Dependencies
- **Requires**: Phases 1-7 (all core systems)
- **Blocks**: Phase 9 (tilemap renderer)

---

## 📋 PHASE 9: Tilemap Renderer
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~400 lines, 2 classes
**Goal**: Draw level backgrounds

### Implementation

#### 1. Create `Rendering/TilemapRenderer.cs`
```csharp
namespace ZeliardAuthentic.Rendering
{
    public class TilemapRenderer
    {
        private Texture2D[] _tiles;

        public TilemapRenderer(GraphicsDevice device)
        {
            // Temporary: Create colored placeholder tiles
            _tiles = new Texture2D[256];

            _tiles[0] = CreateSolidTile(device, Color.Transparent); // Empty
            _tiles[1] = CreateSolidTile(device, Color.Gray);        // Solid

            for (int i = 2; i < 256; i++)
            {
                Color tileColor = new Color(i * 10 % 255, i * 20 % 255, i * 30 % 255);
                _tiles[i] = CreateSolidTile(device, tileColor);
            }
        }

        private Texture2D CreateSolidTile(GraphicsDevice device, Color color)
        {
            var texture = new Texture2D(device, 16, 16);
            Color[] colors = new Color[16 * 16];
            for (int i = 0; i < colors.Length; i++)
                colors[i] = color;
            texture.SetData(colors);
            return texture;
        }

        public void Draw(SpriteBatch spriteBatch, LevelData level, Camera camera)
        {
            if (level?.Tilemap == null) return;

            const int TileSize = 16;

            // Calculate visible tile range (camera culling)
            int startX = Math.Max(0, (int)camera.Position.X / TileSize);
            int endX = Math.Min(level.Width - 1, (int)(camera.Position.X + 320) / TileSize + 1);
            int startY = Math.Max(0, (int)camera.Position.Y / TileSize);
            int endY = Math.Min(level.Height - 1, (int)(camera.Position.Y + 200) / TileSize + 1);

            // Draw visible tiles
            for (int tileY = startY; tileY <= endY; tileY++)
            {
                for (int tileX = startX; tileX <= endX; tileX++)
                {
                    int tileID = level.Tilemap[tileY, tileX];
                    if (tileID == 0) continue;

                    Vector2 position = new Vector2(tileX * TileSize, tileY * TileSize);
                    spriteBatch.Draw(_tiles[tileID], position, Color.White);
                }
            }
        }
    }
}
```

#### 2. Update `Game1.cs`
```csharp
private TilemapRenderer _tilemapRenderer;

protected override void Initialize()
{
    // ... existing ...
    _tilemapRenderer = new TilemapRenderer(GraphicsDevice);
    base.Initialize();
}

protected override void Draw(GameTime gameTime)
{
    GraphicsDevice.Clear(Color.Black);

    // Draw game world
    _spriteBatch.Begin(transformMatrix: _camera.GetTransformMatrix(), samplerState: SamplerState.PointClamp);
    _tilemapRenderer.Draw(_spriteBatch, _currentLevel, _camera);  // NEW: Draw tilemap first
    _enemyManager.Draw(_spriteBatch);
    _player.Draw(_spriteBatch, _animator);
    _spriteBatch.End();

    // Draw HUD
    _spriteBatch.Begin();
    _hud.Draw(_spriteBatch, _player.Stats, _camera.Position);
    _spriteBatch.End();

    base.Draw(gameTime);
}
```

### Assembly References
- **zelres3_chunk_14** (lines 1-800) - Tilemap rendering

### Testing
- Level background visible
- Only visible tiles drawn (camera culling works)
- PointClamp sampling (no texture filtering)

### Dependencies
- **Requires**: Phase 8 (level loading)
- **Blocks**: None

---

# SPRINT 4: RPG Systems (Optional)

## 📋 PHASE 10-13: Equipment, Inventory, Leveling
**Status**: Documented in full plan but OPTIONAL for MVP
**See**: Original MONOGAME_IMPLEMENTATION_PLAN.md for complete implementation details

---

# SPRINT 5: Polish (Optional)

## 📋 PHASE 14: .grp Image Decoder
**Status**: Documented in full plan but OPTIONAL for MVP
**See**: Original MONOGAME_IMPLEMENTATION_PLAN.md for two-stage decompression details

---

## 📋 PHASE 15: Final Integration & Polish
**Complexity**: 🟡 MEDIUM
**Estimated Effort**: ~300 lines
**Goal**: Clean up, optimize, add game states

### Tasks
1. Add game state machine (Title → Playing → Paused → Dead)
2. Add respawn system
3. Add score tracking
4. Optimize rendering (batch sprite draws)
5. Add sound effects hooks (prepare for Phase 16+ audio)

---

## Summary: Sprint Deliverables

### 🎯 Sprint 1 (Phases 1-3) - Core Foundation
**Time**: 4-5 days
**Code**: ~1,300 lines
**Deliverable**: Player moves, jumps, animates in test level

**Features**:
- ✅ Player entity with position/velocity
- ✅ Arrow key controls
- ✅ Physics (gravity, collisions)
- ✅ Animation state machine
- ✅ Camera following player

---

### 🎯 Sprint 2 (Phases 4-7) - Combat & Gameplay
**Time**: 5-6 days
**Code**: ~2,750 lines
**Deliverable**: Full combat system, enemies, HUD

**Features**:
- ✅ Combat damage calculation
- ✅ Enemy AI (patrol, chase)
- ✅ HP/MP bars
- ✅ DOS 18.2 Hz timing

---

### 🎯 Sprint 3 (Phases 8-9) - Level Systems
**Time**: 4-5 days
**Code**: ~1,400 lines
**Deliverable**: **MINIMUM VIABLE PRODUCT**

**Features**:
- ✅ Level loading from data
- ✅ Tilemap rendering
- ✅ Enemy spawning system
- ✅ Complete gameplay loop

---

### 🎯 Sprint 4 (Phases 10-13) - RPG Systems [OPTIONAL]
**Time**: 3-4 days
**Code**: ~1,100 lines
**Deliverable**: Equipment, inventory, leveling

---

### 🎯 Sprint 5 (Phases 14-15) - Polish [OPTIONAL]
**Time**: 3-4 days
**Code**: ~900 lines
**Deliverable**: Opening cinematics, final integration

---

## Total Project Timeline

| Milestone | Sprints | Days | Code | Status |
|-----------|---------|------|------|--------|
| **MVP** | 1-3 | **13-16 days** | **~5,450 lines** | Ready to start |
| **Full RPG** | 1-4 | 16-20 days | ~6,550 lines | Optional |
| **Complete** | 1-5 | 19-24 days | ~7,350 lines | Optional |

---

## Critical Assembly References

| Phase | Primary Files |
|-------|---------------|
| 1 | zelres1_chunk_00 (0x0080-0x009F), zelres1_chunk_06 |
| 2 | zelres2_chunk_04, zelres2_chunk_03 |
| 3 | zelres1_chunk_00 (0x0A20-0x0CCF) |
| 4 | zelres1_chunk_04, zelres2_chunk_02 |
| 5 | zelres2_chunk_06, zelres2_enemy_types |
| 6 | zelres2_chunk_00 (HUD section) |
| 7 | zelres2_chunk_00 (main loop) |
| 8 | zelres3_chunk_00 |
| 9 | zelres3_chunk_14 |

---

## Next Steps

**Recommended Start**: Phase 1 (Player Entity)

1. Create folder structure:
   ```
   MONOGAME_AUTHENTIC/
   ├── Entities/
   ├── Input/
   ├── Rendering/
   ├── Physics/
   └── Animation/
   ```

2. Implement Player.cs, InputManager.cs, PlayerController.cs, Camera.cs

3. Test in Game1.cs with arrow key movement

Ready to begin implementation! 🚀
