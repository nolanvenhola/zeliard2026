using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Graphics;
using System.Collections.Generic;

namespace ZeliardModern.Data
{
    /// <summary>
    /// Defines sprite locations and animations within sprite sheets
    /// Based on the extracted Sharp X1 Zeliard sprite sheets
    /// </summary>
    public static class SpriteAtlas
    {
        /// <summary>
        /// Player sprite animations (from Sword Animations sheet)
        /// </summary>
        public static class Player
        {
            public const int SpriteWidth = 32;
            public const int SpriteHeight = 32;

            // Animation frame definitions
            // Note: Adjust these based on actual sprite sheet analysis
            public static readonly Rectangle[] IdleFrames = new Rectangle[]
            {
                new Rectangle(0, 0, 32, 32),
                new Rectangle(32, 0, 32, 32),
                new Rectangle(64, 0, 32, 32),
                new Rectangle(96, 0, 32, 32)
            };

            public static readonly Rectangle[] WalkFrames = new Rectangle[]
            {
                new Rectangle(0, 32, 32, 32),
                new Rectangle(32, 32, 32, 32),
                new Rectangle(64, 32, 32, 32),
                new Rectangle(96, 32, 32, 32),
                new Rectangle(128, 32, 32, 32),
                new Rectangle(160, 32, 32, 32)
            };

            public static readonly Rectangle[] JumpFrames = new Rectangle[]
            {
                new Rectangle(0, 64, 32, 32),
                new Rectangle(32, 64, 32, 32),
                new Rectangle(64, 64, 32, 32)
            };

            public static readonly Rectangle[] AttackFrames = new Rectangle[]
            {
                new Rectangle(0, 96, 32, 32),
                new Rectangle(32, 96, 32, 32),
                new Rectangle(64, 96, 32, 32),
                new Rectangle(96, 96, 32, 32)
            };
        }

        /// <summary>
        /// Enemy sprites for Area 1 (Malicia/Peligro)
        /// </summary>
        public static class Area1Enemies
        {
            public const int SpriteWidth = 32;
            public const int SpriteHeight = 32;

            // Different enemy types in Area 1
            public static class Goblin
            {
                public static readonly Rectangle[] IdleFrames = new Rectangle[]
                {
                    new Rectangle(0, 0, 32, 32),
                    new Rectangle(32, 0, 32, 32)
                };

                public static readonly Rectangle[] AttackFrames = new Rectangle[]
                {
                    new Rectangle(64, 0, 32, 32),
                    new Rectangle(96, 0, 32, 32)
                };
            }

            public static class Bat
            {
                public static readonly Rectangle[] FlyFrames = new Rectangle[]
                {
                    new Rectangle(0, 32, 32, 32),
                    new Rectangle(32, 32, 32, 32),
                    new Rectangle(64, 32, 32, 32)
                };
            }
        }

        /// <summary>
        /// Boss sprites
        /// </summary>
        public static class Bosses
        {
            public const int BossSpriteWidth = 64;
            public const int BossSpriteHeight = 64;

            public static class Cangreo
            {
                public static readonly Rectangle[] IdleFrames = new Rectangle[]
                {
                    new Rectangle(0, 0, 64, 64),
                    new Rectangle(64, 0, 64, 64)
                };

                public static readonly Rectangle[] AttackFrames = new Rectangle[]
                {
                    new Rectangle(0, 64, 64, 64),
                    new Rectangle(64, 64, 64, 64),
                    new Rectangle(128, 64, 64, 64)
                };
            }
        }

        /// <summary>
        /// HUD and UI elements
        /// </summary>
        public static class UI
        {
            // Health bar segments
            public static readonly Rectangle HealthBarFull = new Rectangle(0, 0, 16, 8);
            public static readonly Rectangle HealthBarEmpty = new Rectangle(16, 0, 16, 8);

            // Experience bar
            public static readonly Rectangle ExpBarFull = new Rectangle(0, 8, 16, 4);
            public static readonly Rectangle ExpBarEmpty = new Rectangle(16, 8, 16, 4);

            // Icons
            public static readonly Rectangle SwordIcon = new Rectangle(0, 16, 16, 16);
            public static readonly Rectangle ShieldIcon = new Rectangle(16, 16, 16, 16);
            public static readonly Rectangle PotionIcon = new Rectangle(32, 16, 16, 16);
        }

        /// <summary>
        /// Spell and magic animations
        /// </summary>
        public static class Spells
        {
            public const int SpriteWidth = 32;
            public const int SpriteHeight = 32;

            public static readonly Rectangle[] FireballFrames = new Rectangle[]
            {
                new Rectangle(0, 0, 32, 32),
                new Rectangle(32, 0, 32, 32),
                new Rectangle(64, 0, 32, 32),
                new Rectangle(96, 0, 32, 32)
            };

            public static readonly Rectangle[] IceSpellFrames = new Rectangle[]
            {
                new Rectangle(0, 32, 32, 32),
                new Rectangle(32, 32, 32, 32),
                new Rectangle(64, 32, 32, 32)
            };

            public static readonly Rectangle[] LightningFrames = new Rectangle[]
            {
                new Rectangle(0, 64, 32, 32),
                new Rectangle(32, 64, 32, 32),
                new Rectangle(64, 64, 32, 32),
                new Rectangle(96, 64, 32, 32)
            };
        }

        /// <summary>
        /// NPC sprites
        /// </summary>
        public static class NPCs
        {
            public const int SpriteWidth = 32;
            public const int SpriteHeight = 32;

            // Sage Indihar
            public static readonly Rectangle SageIdle = new Rectangle(0, 0, 32, 32);

            // Villagers
            public static readonly Rectangle Villager1 = new Rectangle(32, 0, 32, 32);
            public static readonly Rectangle Villager2 = new Rectangle(64, 0, 32, 32);

            // Shopkeeper
            public static readonly Rectangle Shopkeeper = new Rectangle(0, 32, 32, 32);
        }

        /// <summary>
        /// Tileset definitions
        /// </summary>
        public static class Tiles
        {
            public const int TileSize = 16;

            // Tile IDs for different tile types
            public const int Air = 0;
            public const int WallSolid = 1;
            public const int Platform = 2;
            public const int Ladder = 3;
            public const int Spikes = 4;
            public const int Door = 5;
        }

        /// <summary>
        /// Helper method to get enemy sprite sheet for an area
        /// </summary>
        public static string GetEnemySpriteSheetName(int area)
        {
            return $"Area{area}Enemies";
        }

        /// <summary>
        /// Helper method to get boss sprite sheet name
        /// </summary>
        public static string GetBossSpriteSheetName(int bossNumber)
        {
            return $"Boss{bossNumber}";
        }
    }

    /// <summary>
    /// Helper to create sprite animations from atlas definitions
    /// </summary>
    public static class SpriteAtlasHelper
    {
        public static Sprite[] CreateSprites(Texture2D texture, Rectangle[] rectangles)
        {
            var sprites = new Sprite[rectangles.Length];
            for (int i = 0; i < rectangles.Length; i++)
            {
                sprites[i] = new Sprite(texture, rectangles[i]);
            }
            return sprites;
        }

        public static Animation CreateAnimation(string name, Texture2D texture, Rectangle[] frames,
                                               float frameDuration = 0.1f, bool loop = true)
        {
            var sprites = CreateSprites(texture, frames);
            return new Animation(name, sprites, frameDuration, loop);
        }

        public static void SetupPlayerAnimations(AnimationController controller, Texture2D playerTexture)
        {
            controller.AddAnimation(
                CreateAnimation("idle", playerTexture, SpriteAtlas.Player.IdleFrames, 0.15f, true)
            );
            controller.AddAnimation(
                CreateAnimation("walk", playerTexture, SpriteAtlas.Player.WalkFrames, 0.1f, true)
            );
            controller.AddAnimation(
                CreateAnimation("jump", playerTexture, SpriteAtlas.Player.JumpFrames, 0.1f, false)
            );
            controller.AddAnimation(
                CreateAnimation("attack", playerTexture, SpriteAtlas.Player.AttackFrames, 0.08f, false)
            );
        }
    }
}
