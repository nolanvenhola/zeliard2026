# Zeliard Music Files

MIDI music tracks extracted from Zeliard, available in multiple formats.

## Available Formats

### General MIDI (GM/)
Standard MIDI format compatible with most MIDI players and synthesizers.
- 14 tracks total
- `.ogg` format (converted from MIDI)
- Compatible with modern audio players

### Roland MT-32 (MT32/)
Optimized for Roland MT-32 synthesizer (the original hardware Zeliard used).
- 14 tracks total
- `.ogg` format
- Best played with MT-32 emulation (Munt)

## Track List

1. **Zeliard-01-Opening.ogg** - Opening cutscene theme
2. **Zeliard-02-FelishikaCastle.ogg** - Castle theme
3. **Zeliard-03-EscoVillage.ogg** - Starting village
4. **Zeliard-04-DoradoTown.ogg** - First major town
5. **Zeliard-05-SatonoTown.ogg** - Second town
6. **Zeliard-06-BosqueVillage.ogg** - Forest village
7. **Zeliard-07-TumbaTown.ogg** - Desert town
8. **Zeliard-08-CavernOfPeligro.ogg** - Danger cavern
9. **Zeliard-09-CavernOfCorroer.ogg** - Corrosion cavern
10. **Zeliard-10-CavernOfMadera.ogg** - Wood cavern
11. **Zeliard-11-CavernOfEscarcha.ogg** - Frost cavern
12. **Zeliard-12-CavernOfCaliente.ogg** - Hot cavern
13. **Zeliard-13-CavernOfTesoro.ogg** - Treasure cavern
14. **Zeliard-14-CavernOfAbsor.ogg** - Absorption cavern

## Original Format

The original DOS game used:
- **AdLib/Sound Blaster** for PC
- **Roland MT-32** for enhanced audio (recommended)
- **PC Speaker** for basic audio

## Usage in MonoGame Port

The MonoGame port (`../../5_MonoGame/MONOGAME_AUTHENTIC/`) can use these tracks:
- Convert `.ogg` to MonoGame-compatible format
- Use as background music via `MediaPlayer` class
- Implement music switching per level/town

## Playing the Music

### Windows Media Player
Double-click any `.ogg` file

### VLC Media Player
```bash
vlc <track-name>.ogg
```

### MT-32 Emulation (for MT32 folder)
Use Munt MT-32 emulator for authentic sound:
- Download: https://github.com/munt/munt
- Load MT-32 ROM files
- Play via MIDI player with Munt as output device
