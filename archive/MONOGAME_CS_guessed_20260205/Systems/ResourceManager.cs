using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Media;
using Microsoft.Xna.Framework.Audio;
using ZeliardModern.Graphics;
using ZeliardModern.Data;
using ZeliardModern.Audio;
using System.Collections.Generic;

namespace ZeliardModern.Systems
{
    /// <summary>
    /// Centralized resource manager for loading and caching game assets
    /// </summary>
    public class ResourceManager
    {
        private ContentManager _content;
        private Dictionary<string, Texture2D> _textures;
        private Dictionary<string, SpriteSheet> _spriteSheets;
        private AudioSystem _audioSystem;

        public AudioSystem AudioSystem => _audioSystem;

        public ResourceManager(ContentManager content)
        {
            _content = content;
            _textures = new Dictionary<string, Texture2D>();
            _spriteSheets = new Dictionary<string, SpriteSheet>();
            _audioSystem = new AudioSystem();
        }

        /// <summary>
        /// Load all game resources
        /// </summary>
        public void LoadAll()
        {
            LoadTextures();
            LoadSpriteSheets();
            LoadAudio();
        }

        private void LoadTextures()
        {
            // Player sprites
            LoadTexture("PlayerSword", "Sprites/PlayerSword");

            // Enemy sprites (all 8 areas)
            for (int i = 1; i <= 8; i++)
            {
                LoadTexture($"Area{i}Enemies", $"Sprites/Area{i}Enemies");
            }

            // Boss sprites (all 9 bosses)
            LoadTexture("Boss1Cangreo", "Sprites/Boss1Cangreo");
            LoadTexture("Boss2Pulpo", "Sprites/Boss2Pulpo");
            LoadTexture("Boss3Pollo", "Sprites/Boss3Pollo");
            LoadTexture("Boss4Agar", "Sprites/Boss4Agar");
            LoadTexture("Boss5Vista", "Sprites/Boss5Vista");
            LoadTexture("Boss6Tarso", "Sprites/Boss6Tarso");
            LoadTexture("Boss7Dragon", "Sprites/Boss7Dragon");
            LoadTexture("Boss8Alguien", "Sprites/Boss8Alguien");
            LoadTexture("Boss9Archfiend", "Sprites/Boss9Archfiend");

            // Additional sprites
            LoadTexture("SpellAnimations", "Sprites/SpellAnimations");
            LoadTexture("LabyrinthSprites", "Sprites/LabyrinthSprites");
            LoadTexture("ConnectingTunnels", "Sprites/ConnectingTunnels");
            LoadTexture("NPCs", "Sprites/NPCs");
            LoadTexture("Shops", "Sprites/Shops");
            LoadTexture("TownBackgrounds", "Sprites/TownBackgrounds");

            // Tilesets
            LoadTexture("LabyrinthTiles", "Tilesets/LabyrinthTiles");
            LoadTexture("TownTiles", "Tilesets/TownTiles");

            // UI
            LoadTexture("HUD", "UI/HUD");
        }

        private void LoadSpriteSheets()
        {
            // Player sprite sheet (32x32 sprites)
            CreateSpriteSheet("PlayerSword", "PlayerSword", 32, 32);

            // Enemy sprite sheets (all 8 areas, 32x32)
            for (int i = 1; i <= 8; i++)
            {
                CreateSpriteSheet($"Area{i}Enemies", $"Area{i}Enemies", 32, 32);
            }

            // Boss sprite sheets (64x64, larger)
            CreateSpriteSheet("Boss1Cangreo", "Boss1Cangreo", 64, 64);
            CreateSpriteSheet("Boss2Pulpo", "Boss2Pulpo", 64, 64);
            CreateSpriteSheet("Boss3Pollo", "Boss3Pollo", 64, 64);
            CreateSpriteSheet("Boss4Agar", "Boss4Agar", 64, 64);
            CreateSpriteSheet("Boss5Vista", "Boss5Vista", 64, 64);
            CreateSpriteSheet("Boss6Tarso", "Boss6Tarso", 64, 64);
            CreateSpriteSheet("Boss7Dragon", "Boss7Dragon", 64, 64);
            CreateSpriteSheet("Boss8Alguien", "Boss8Alguien", 64, 64);
            CreateSpriteSheet("Boss9Archfiend", "Boss9Archfiend", 64, 64);

            // Additional sprites (32x32)
            CreateSpriteSheet("SpellAnimations", "SpellAnimations", 32, 32);
            CreateSpriteSheet("LabyrinthSprites", "LabyrinthSprites", 32, 32);
            CreateSpriteSheet("ConnectingTunnels", "ConnectingTunnels", 16, 16);
            CreateSpriteSheet("NPCs", "NPCs", 32, 32);
            CreateSpriteSheet("Shops", "Shops", 32, 32);
            CreateSpriteSheet("TownBackgrounds", "TownBackgrounds", 320, 200); // Full screen backgrounds

            // Tilesets (16x16 tiles)
            CreateSpriteSheet("LabyrinthTiles", "LabyrinthTiles", 16, 16);
            CreateSpriteSheet("TownTiles", "TownTiles", 16, 16);

            // UI elements (16x16)
            CreateSpriteSheet("HUD", "HUD", 16, 16);
        }

        private void LoadAudio()
        {
            // Load all music tracks
            LoadSong("Zeliard01-Intro", "Music/Zeliard01-Intro");
            LoadSong("Zeliard-02-Credits", "Music/Zeliard-02-Credits");
            LoadSong("Zeliard-03-MurallaTown", "Music/Zeliard-03-MurallaTown");
            LoadSong("Zeliard-04-CavernOfMalicia", "Music/Zeliard-04-CavernOfMalicia");
            LoadSong("Zeliard-05-SatonoTown", "Music/Zeliard-05-SatonoTown");
            LoadSong("Zeliard-06-BosqueVillage", "Music/Zeliard-06-BosqueVillage");
            LoadSong("Zeliard-07-TumbaTown", "Music/Zeliard-07-TumbaTown");
            LoadSong("Zeliard-08-CavernOfPeligro", "Music/Zeliard-08-CavernOfPeligro");
            LoadSong("Zeliard-09-CavernOfCorroer", "Music/Zeliard-09-CavernOfCorroer");
            LoadSong("Zeliard-10-CavernOfMadera", "Music/Zeliard-10-CavernOfMadera");
            LoadSong("Zeliard-11-CavernOfEscarcha", "Music/Zeliard-11-CavernOfEscarcha");
            LoadSong("Zeliard-12-CavernOfCaliente", "Music/Zeliard-12-CavernOfCaliente");
            LoadSong("Zeliard-13-CavernOfTesoro", "Music/Zeliard-13-CavernOfTesoro");
            LoadSong("Zeliard-14-CavernOfAbsor", "Music/Zeliard-14-CavernOfAbsor");

            // Load all sound effects
            LoadSoundEffect("PlayerJump", "Sounds/PlayerJump");
            LoadSoundEffect("PlayerLand", "Sounds/PlayerLand");
            LoadSoundEffect("SwordSwing", "Sounds/SwordSwing");
            LoadSoundEffect("SwordHit", "Sounds/SwordHit");
            LoadSoundEffect("PlayerHurt", "Sounds/PlayerHurt");
            LoadSoundEffect("PlayerDeath", "Sounds/PlayerDeath");
            LoadSoundEffect("EnemyHit", "Sounds/EnemyHit");
            LoadSoundEffect("EnemyDeath", "Sounds/EnemyDeath");
            LoadSoundEffect("BossRoar", "Sounds/BossRoar");
            LoadSoundEffect("ItemPickup", "Sounds/ItemPickup");
            LoadSoundEffect("CoinPickup", "Sounds/CoinPickup");
            LoadSoundEffect("ItemPurchase", "Sounds/ItemPurchase");
            LoadSoundEffect("PotionDrink", "Sounds/PotionDrink");
            LoadSoundEffect("SpellCast", "Sounds/SpellCast");
            LoadSoundEffect("SpellHit", "Sounds/SpellHit");
            LoadSoundEffect("MagicCharge", "Sounds/MagicCharge");
            LoadSoundEffect("MenuSelect", "Sounds/MenuSelect");
            LoadSoundEffect("MenuMove", "Sounds/MenuMove");
            LoadSoundEffect("MenuBack", "Sounds/MenuBack");
            LoadSoundEffect("DialogueAdvance", "Sounds/DialogueAdvance");
            LoadSoundEffect("LevelUp", "Sounds/LevelUp");
            LoadSoundEffect("DoorOpen", "Sounds/DoorOpen");
            LoadSoundEffect("ChestOpen", "Sounds/ChestOpen");
            LoadSoundEffect("Teleport", "Sounds/Teleport");
        }

        private void LoadSong(string name, string assetPath)
        {
            try
            {
                var song = _content.Load<Song>(assetPath);
                _audioSystem.AddSong(name, song);
            }
            catch (ContentLoadException)
            {
                System.Console.WriteLine($"Warning: Failed to load song: {assetPath}");
            }
        }

        private void LoadSoundEffect(string name, string assetPath)
        {
            try
            {
                var soundEffect = _content.Load<SoundEffect>(assetPath);
                _audioSystem.AddSoundEffect(name, soundEffect);
            }
            catch (ContentLoadException)
            {
                System.Console.WriteLine($"Warning: Failed to load sound effect: {assetPath}");
            }
        }

        private void LoadTexture(string name, string assetPath)
        {
            try
            {
                _textures[name] = _content.Load<Texture2D>(assetPath);
            }
            catch (ContentLoadException)
            {
                // If texture fails to load, log it but continue
                System.Console.WriteLine($"Warning: Failed to load texture: {assetPath}");
            }
        }

        private void CreateSpriteSheet(string name, string textureName, int spriteWidth, int spriteHeight)
        {
            if (_textures.TryGetValue(textureName, out var texture))
            {
                _spriteSheets[name] = new SpriteSheet(texture, spriteWidth, spriteHeight);
            }
        }

        public Texture2D GetTexture(string name)
        {
            return _textures.TryGetValue(name, out var texture) ? texture : null;
        }

        public SpriteSheet GetSpriteSheet(string name)
        {
            return _spriteSheets.TryGetValue(name, out var sheet) ? sheet : null;
        }

        /// <summary>
        /// Set up player animations using loaded sprites
        /// </summary>
        public void SetupPlayerAnimations(AnimationController controller)
        {
            var playerTexture = GetTexture("PlayerSword");
            if (playerTexture != null)
            {
                SpriteAtlasHelper.SetupPlayerAnimations(controller, playerTexture);
            }
        }

        /// <summary>
        /// Set up enemy animations
        /// </summary>
        public void SetupEnemyAnimations(AnimationController controller, string enemyType)
        {
            var enemyTexture = GetTexture("Area1Enemies");
            if (enemyTexture != null)
            {
                // Create animations based on enemy type
                // This is a simplified example - adjust based on actual sprite layouts
                var idleFrames = new Microsoft.Xna.Framework.Rectangle[]
                {
                    new Microsoft.Xna.Framework.Rectangle(0, 0, 32, 32),
                    new Microsoft.Xna.Framework.Rectangle(32, 0, 32, 32)
                };

                controller.AddAnimation(
                    SpriteAtlasHelper.CreateAnimation("idle", enemyTexture, idleFrames, 0.2f, true)
                );
            }
        }

        /// <summary>
        /// Create a tilemap with loaded tileset
        /// </summary>
        public Graphics.TileMap CreateTileMap(int[,] tileData, int tileWidth = 16, int tileHeight = 16)
        {
            int width = tileData.GetLength(0);
            int height = tileData.GetLength(1);

            var tileMap = new Graphics.TileMap(width, height, tileWidth, tileHeight);
            var tileSheet = GetSpriteSheet("LabyrinthTiles");

            if (tileSheet != null)
            {
                // Set up tile types
                tileMap.AddTileType(new Graphics.Tile(0, null, false, false, "Air"));

                // Create solid wall tiles (using different sprites from the tileset)
                for (int i = 1; i < 10; i++)
                {
                    var sprite = tileSheet.GetSprite(i);
                    tileMap.AddTileType(new Graphics.Tile(i, sprite, true, false, $"Wall{i}"));
                }

                // Platform tiles
                for (int i = 10; i < 15; i++)
                {
                    var sprite = tileSheet.GetSprite(i);
                    tileMap.AddTileType(new Graphics.Tile(i, sprite, false, true, $"Platform{i - 10}"));
                }
            }

            // Copy tile data
            for (int x = 0; x < width; x++)
            {
                for (int y = 0; y < height; y++)
                {
                    tileMap.SetTile(x, y, tileData[x, y]);
                }
            }

            return tileMap;
        }

        public void Unload()
        {
            _audioSystem?.Dispose();
            _textures.Clear();
            _spriteSheets.Clear();
            _content.Unload();
        }
    }
}
