# Zeliard Gameplay Summary

Based on the official Sierra On-Line manual for Zeliard by Game Arts.

## Story Overview

Players control **Duke Garland** on a mission in the land of Zeliard. The game involves exploring caverns, visiting towns, and battling enemies while collecting items and leveling up character abilities.

---

## Core Gameplay Loop

1. **Explore Caverns** - Navigate dangerous underground areas filled with enemies
2. **Visit Towns** - Interact with NPCs, purchase items, save progress
3. **Level Up** - Gain experience and receive new spells from the Sage
4. **Progress** - Advance through the game world after completing objectives

---

## Controls

### Movement
- **Arrow Keys / Joystick**: 8-directional movement
  - Left/Right: Walk horizontally
  - Up: Jump
  - Down: Kneel
  - Diagonals: Diagonal movement

### Combat
- **Spacebar**: Use weapon (in caverns only)
- **Up Arrow + Attack**: Swing sword upward
- **Up Arrow + Down Arrow + Attack**: Thrust sword downward (difficult, requires practice)

### Interface
- **[ENTER]**: Access Inventory Screen
- **[ALT]**: Cast selected spell
- **[ESC]**: Pause game
- **[Spacebar]**: Unpause game (also: scroll through messages, select options, activate items in inventory)
- **[F1]**: Toggle music on/off
- **[F2]**: Toggle sound effects on/off
- **[F9]**: Adjust game speed (0=Slow, 9=Fast)
- **[F7]**: Restore saved game
- **[Ctrl-J]**: Select joystick control
- **[Ctrl-K]**: Select keyboard control
- **[Ctrl-Q]**: Quit game
- **[Ctrl-R]**: Restart game (demo mode only)

---

## Combat System

### Weapons & Armor
- Purchase weapons at the **Weapons shop** in each town
- Purchase shields at the **Weapons shop**
- Each shield has a specific number of **damage points** that decrease as you take damage
- Weapons Master in town can repair damaged armor
- **ARMOR window** displays remaining damage points on current shield

### Combat Mechanics
- Swing sword with spacebar
- Use directional attacks for different enemy positions:
  - Upward swing for airborne enemies
  - Downward thrust for low enemies
- Armor absorbs damage until depleted
- Death results in game over (restore from save)

---

## Magic System

### Acquiring Magic
- **Magic potions and items** purchased at Magic shop
- **Sage** at each level (after Muralla Town) rewards you with new **spells**
- Magic becomes available as you progress through the game

### Using Magic
1. Press **[ENTER]** to open the **INVENTORY screen**
2. Use **[Arrow]** keys or joystick to select a magic item or spell
3. Press **[Spacebar]** to activate selection
4. Press **[ENTER]** to return to game screen
5. Press **[ALT]** to cast the active spell

### Magic Categories
- **SPELL window**: Active spell displayed here
- Magic potions and items take effect automatically when used
- Special items available in SPECIAL ITEMS area of inventory

---

## Town Activities

### In Town
Towns are safe zones where Duke Garland can:
- Talk to townspeople for information and hints
- Visit various buildings and shops
- Save the game at the Sage's hut
- Manage inventory and equipment
- Exchange currency at the bank

### Talking to NPCs
- Press **[Spacebar]** when near a person to approach and scroll through dialogue
- Use **[Arrow]** keys to select options when presented
- **Beware**: Some townspeople may be under the Dark One's spell and will mislead you
- Visit each location in town to gather advice and supplies

### The Bank
Located in towns, the bank provides:
- **Deposit and withdraw gold**
- **Exchange almas for gold** (currency conversion)
- Use **[Arrow]** keys or joystick to select an option
- Use up and down **[Arrows]** to increase/decrease amounts by ten
- Use left and right **[Arrows]** to increase/decrease amounts by one

---

## Inventory System

### Accessing Inventory
Press **[ENTER]** to open the Inventory Screen, which displays:

1. **PLACE** - Current location name
2. **LIFE** - Current health points / Maximum health
3. **GOLD** - Current gold amount
4. **ALMAS** - Current almas (secondary currency)
5. **SELECT-MAGIC** - Currently selected spell (e.g., "Espada")
6. **WEAR** - Currently equipped armor
7. **INVENTORY** - Items and weapons carried
8. **USE** - Special items area
9. **Wise Man's Shield** - Current shield indicator

### Using Items
- Items in **SPELLS and MAGIC ITEMS** sections are used automatically as needed
- Other items can be selected with joystick or **[Arrow]** keys
- Press **[Spacebar]** or fire button to select
- Press **[ENTER]** to exit inventory and return to game

---

## Save/Load System

### Saving Your Game
1. Visit the **Sage's hut** (usually the only unmarked building in town)
2. Approach the Sage
3. Enter your character name and press **[ENTER]**
4. Game saves to current disk/directory with **.USR** file extension
5. **Save file naming**: Maximum 8 characters (DOS 8.3 format)

### Loading Your Game
**In-game method:**
- Press **[F7]** key
- Use joystick or **[Arrow]** keys to select saved game from list
- Press **[Spacebar]** to activate
- Press **[ENTER]** to load

**From DOS:**
- Type `zeliard` followed by the save game name
- Example: `zeliard game1`
- Game loads, bypassing opening sequence

---

## Progression System

### Leveling Up
- After reaching Muralla Town (first major town), the Sage rewards players with new spells
- Each subsequent level/area has a Sage who provides new magical abilities
- Character stats improve as you progress
- Maximum health (LIFE) increases through gameplay

### Exploration Tips
- Watch opening cartoon at least once to understand the story
- Can bypass opening by pressing **[Spacebar]** on subsequent plays
- Visit each building in town (stop before door, press Up to enter)
- Check ARMOR window frequently to monitor shield durability
- Talk to everyone - information is crucial for progression

---

## Technical Notes

### Game Speed
- Adjust speed with **[F9]** key (0-9 scale)
- 0 = Slowest speed
- 9 = Fastest speed
- Useful for adapting to different hardware capabilities

### Display
- Original DOS resolution: 320x200 (VGA)
- Side-scrolling platform action gameplay
- HUD displays: Weapon, Magic, Life, Score

---

## Key Gameplay Features

✓ **Side-scrolling action-RPG hybrid**
✓ **Town exploration with NPC interaction**
✓ **Dungeon/cavern combat with platforming**
✓ **Weapon and armor upgrade system**
✓ **Magic spell progression**
✓ **Banking/currency system (Gold and Almas)**
✓ **Save/load system with multiple save slots**
✓ **Equipment durability (shield damage points)**
✓ **Directional combat (up/down sword attacks)**
✓ **Progressive difficulty across multiple levels/areas**

---

## Game Structure

```
START
  ↓
[Opening Sequence]
  ↓
[First Area/Tutorial]
  ↓
[Muralla Town] ← First Save Point
  ↓
[Cavern Exploration] ← Combat & Platforming
  ↓
[Visit Sage] ← Receive New Spell
  ↓
[Next Level Town]
  ↓
... (repeats)
  ↓
[Final Area]
```

---

## Important Warnings from Manual

⚠️ **Disk Protection**: When installing to hard disk, DISK 1 MUST NOT BE WRITE PROTECTED
⚠️ **Save File Management**: Save files are stored with .USR extension in current directory
⚠️ **Misleading NPCs**: Some townspeople are under the Dark One's spell and will give false information
⚠️ **Shield Durability**: Always monitor ARMOR window - running out of armor makes you vulnerable
⚠️ **Downward Thrust**: The downward sword attack is difficult and requires practice

---

*Summary compiled from Zeliard Manual (Sierra On-Line, 1990)*
*Game developed by Game Arts (Japanese version: Mitsuhiro Mazda)*
*English version produced by Josh Mandel*
