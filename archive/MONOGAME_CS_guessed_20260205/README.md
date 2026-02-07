# Zeliard Modern

A modern C# recreation of the classic DOS game Zeliard using MonoGame.

## About

Zeliard is a classic action RPG/platformer originally released for DOS in 1990. This project aims to recreate the game with modern technology while preserving the original gameplay mechanics and feel.

## Features Implemented

### Core Systems
- **Player System**: Complete player stats, leveling, and progression
  - Level system (0-255) with accurate experience formulas from original game
  - Health progression matching original values
  - Equipment system (swords, shields, armor)

- **Combat System**: Faithful recreation of original damage formulas
  - Sword damage: `BaseDamage + (Level / 2)` - exactly as in original
  - Shield defense with special handling for Light/Titanium shields
  - Enemy and boss encounters

- **Experience System**: Authentic leveling mechanics
  - Experience requirements per level match original game
  - Proper experience carryover preventing instant double-level-ups
  - Sage messages based on progress: "You must persevere" (< 50%), "You must accumulate more experience" (50-75%), "I see the faint light of the spirits" (> 75%)

### Equipment
All original weapons with authentic base damage:
- Training Sword (1)
- Wise Man's Sword (2)
- Spirit Sword (4)
- Knight's Sword (8)
- Enchantment Sword (16)

All original shields:
- Leather, Bronze, Iron, Steel, Honor, Light, Titanium

## Game Mechanics Reference

This implementation is based on extensive reverse engineering documented in:
- **Source/Zeliard_ Game Internals.pdf**: Complete breakdown of formulas and mechanics
- **zeliad.reko/**: Decompiled original executable for reference

### Key Mechanics
- **Level Ups**: Visit Sage Indihar when you have enough experience
- **Sword Scaling**: All swords gain `+level/2` damage as you level up
- **Max Experience**: 65,535 (16-bit limit from original)
- **Max Level**: 255
- **Full Health**: 800 HP at level 15+

## Building

### Prerequisites
- .NET 8.0 SDK or later
- MonoGame 3.8.1

### Build Instructions
```bash
cd ZeliardModern
dotnet restore
dotnet build
```

### Run
```bash
dotnet run
```

## Controls (Planned)
- **Arrow Keys / WASD**: Move
- **Space / Z**: Attack
- **S**: Visit Sage (debug)
- **P**: Pause
- **ESC**: Exit

## Project Structure
```
ZeliardModern/
├── Core/
│   ├── GameConstants.cs    # All game formulas and constants from original
│   └── GameState.cs         # Game state management
├── Models/
│   └── Equipment.cs         # Swords, shields, armor definitions
├── Systems/
│   ├── Player.cs           # Player stats, leveling, equipment
│   └── CombatSystem.cs     # Combat mechanics and enemies
├── Content/                # Game assets (sprites, music, etc.)
├── Game1.cs               # Main game loop
└── Program.cs             # Entry point
```

## TODO
- [ ] Load and display original sprite assets from Source/Sprites/
- [ ] Implement level/map system using extracted maps
- [ ] Add music system using Source/Music/
- [ ] Implement full enemy AI
- [ ] Add town and shop systems
- [ ] Implement magic/spells system
- [ ] Add save/load functionality
- [ ] Port remaining game mechanics from original

## Credits
- **Original Game**: Game Arts (1990)
- **Reverse Engineering**: Crystal and the Zeliard community
- **Documentation**: zeliardgame.com
- **Modern Recreation**: This project

## License
This is a fan recreation for educational purposes. Original Zeliard is © Game Arts.
