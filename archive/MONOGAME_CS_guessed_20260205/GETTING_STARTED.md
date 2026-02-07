# Getting Started with Zeliard Modern

## What Has Been Built

A complete foundational game engine for modernizing Zeliard with authentic game mechanics from the original DOS version.

### Core Systems Implemented ✓

#### 1. **Player System** ([Player.cs](Systems/Player.cs))
- Full stat tracking (Level, Experience, Health, Gold)
- Equipment slots (Sword, Shield, Armor)
- Position and movement
- **Accurate leveling system** (0-255 levels)
- **Experience formulas** matching original game
- **Health progression** with non-linear increases

#### 2. **Combat System** ([CombatSystem.cs](Systems/CombatSystem.cs))
- Player vs Enemy combat
- **Authentic damage formulas**: `BaseDamage + (Level / 2)`
- Shield defense calculations
- Experience and gold rewards
- Enemy and Boss classes with all known bosses

#### 3. **Equipment System** ([Equipment.cs](Models/Equipment.cs))
All original weapons, shields, and armor:
- **Swords**: Training (1), Wise Man's (2), Spirit (4), Knight's (8), Enchantment (16)
- **Shields**: Leather, Bronze, Iron, Steel, Honor, Light, Titanium
- **Damage scaling** with player level (exactly as original)

#### 4. **Game State Management** ([GameState.cs](Core/GameState.cs))
- Screen management (Menu, Playing, Town, Shop, Sage, Paused, GameOver)
- Enemy tracking
- Location/area tracking

#### 5. **Game Constants** ([GameConstants.cs](Core/GameConstants.cs))
All formulas and tables from reverse-engineered documentation:
- Experience requirements per level (1-16, then 60,000 each)
- Health progression per level
- Sword base damage values
- Maximum values (Level 255, XP 65,535, HP 800)

#### 6. **Main Game Loop** ([Game1.cs](Game1.cs))
- MonoGame framework integration
- Update/Draw cycle
- Input handling
- Screen management
- Basic HUD system

## Project Structure

```
ZeliardModern/
├── Core/
│   ├── GameConstants.cs      ✓ All original game formulas
│   └── GameState.cs           ✓ Game state management
├── Models/
│   └── Equipment.cs           ✓ All weapons, shields, armor
├── Systems/
│   ├── Player.cs              ✓ Complete player system
│   ├── CombatSystem.cs        ✓ Combat and enemies
│   └── AssetManager.cs        ✓ Asset loading system
├── Tests/
│   ├── GameMechanicsTest.cs   ✓ Verification tests
│   └── GameMechanicsTest.csproj
├── Content/
│   └── Content.mgcb           ✓ MonoGame content pipeline
├── Game1.cs                   ✓ Main game class
├── Program.cs                 ✓ Entry point
├── ZeliardModern.csproj       ✓ Project file
├── README.md                  ✓ Documentation
├── GETTING_STARTED.md         ✓ This file
└── .gitignore                 ✓ Git ignore rules
```

## Installation & Setup

### Prerequisites
1. **Install .NET 8.0 SDK**: https://dotnet.microsoft.com/download
2. **Install MonoGame**: Already included via NuGet packages

### Build the Project
```bash
cd ZeliardModern
dotnet restore
dotnet build
```

### Run the Game
```bash
dotnet run
```

### Run Mechanics Verification Tests
```bash
cd Tests
dotnet run
```

This will verify that all game formulas match the original Zeliard mechanics.

## Verified Game Mechanics

All systems are based on documented reverse-engineering from:
- **Source/Zeliard_ Game Internals.pdf**
- **zeliad.reko/** (decompiled code)

### Key Verified Mechanics:

1. **Sword Damage Scaling** ✓
   - Formula: `BaseDamage + (Level / 2)`
   - A level 4 Training Sword = level 2 Wise Man's Sword (verified)

2. **Experience System** ✓
   - Level 1: 50 XP, Level 2: 150 XP, ... Level 16: 60,000 XP
   - Levels 17+: 60,000 XP each
   - Max XP: 65,535

3. **Level Up Carryover** ✓
   - Prevents keeping enough XP to instantly level up again
   - Caps carryover to (next_level_requirement - 1)

4. **Sage Messages** ✓
   - < 50%: "You must persevere"
   - 50-75%: "You must accumulate more experience"
   - > 75%: "I see the faint light of the spirits"

5. **Health Progression** ✓
   - Non-linear growth from 80 HP (level 0) to 800 HP (level 15)
   - Exact values match original game

6. **Shield Defense** ✓
   - Light Shield and Titanium Shield have enhanced protection
   - Other shields provide base defense reduction

## Next Steps

### Phase 1: Visual Assets
1. Convert extracted sprites from `../Source/Sprites/` to MonoGame-compatible format
2. Add sprites to Content pipeline
3. Implement sprite rendering in Game1.cs

### Phase 2: Level/Map System
1. Import map data from `../Source/Maps/`
2. Create tilemap rendering system
3. Implement collision detection
4. Add platforming physics

### Phase 3: Enemy AI
1. Implement enemy movement patterns
2. Add enemy spawn system
3. Create boss battle mechanics
4. Add enemy animations

### Phase 4: Towns & Shops
1. Create town screens
2. Implement shop interface
3. Add item purchasing
4. Implement Sage Indihar leveling interface

### Phase 5: Advanced Features
1. Magic/spell system
2. Music and sound effects
3. Save/load system
4. Menu system
5. Inventory management

## Testing Your Changes

The test program verifies core mechanics:
```bash
cd Tests
dotnet run
```

Expected output:
- Sword damage formulas at various levels
- Experience requirements for all levels
- Health progression table
- Level-up carryover mechanics
- Sage message system

## Resources Available

Your existing resources that can be integrated:

### Sprites
- `../Source/Sprites/` - All enemy and boss sprites
- Already extracted and categorized by area

### Maps
- `../Source/Maps/` - Complete level maps (.bmp format)
- 8 main caverns/areas

### Documentation
- `../Source/Zeliard_ *.pdf` - Comprehensive game info
  - Game Internals (formulas)
  - Enemies (stats and behavior)
  - Bosses (patterns)
  - Items, Weapons, Armor
  - Towns and NPCs
  - Translations

### Music
- `../Source/Music/` - Original game music

## Code Examples

### Creating and Leveling a Player
```csharp
var player = new Player();
player.AddExperience(500);

if (player.CanLevelUp())
{
    player.LevelUp();
    Console.WriteLine($"Level {player.Level}! HP: {player.MaxHealth}");
}
```

### Equipping Weapons
```csharp
player.EquippedSword = Sword.CreateSpiritSword();
int damage = player.GetAttackDamage(); // BaseDamage + Level/2
```

### Combat
```csharp
var enemy = new Enemy("Goblin", 50, 10, 100, 20);
var result = CombatSystem.PlayerAttackEnemy(player, enemy);

if (result.TargetDefeated)
{
    Console.WriteLine($"Defeated! +{result.ExperienceGained} XP, +{result.GoldGained} Gold");
}
```

### Sage Interaction
```csharp
string message = player.GetSageMessage();
Console.WriteLine($"Sage says: {message}");
```

## Development Tips

1. **Test mechanics frequently** - Run the test program to ensure formulas stay accurate
2. **Reference the PDFs** - All game behavior is documented in Source/*.pdf
3. **Check decompiled code** - zeliad.reko/ has the original logic for complex behaviors
4. **Keep it authentic** - Preserve the original game feel and mechanics

## Support

For questions about the original game mechanics, refer to:
- https://zeliardgame.com/
- Source documentation PDFs
- Decompiled code in zeliad.reko/

## License

This is a fan recreation for educational purposes. Original Zeliard © Game Arts (1990).
