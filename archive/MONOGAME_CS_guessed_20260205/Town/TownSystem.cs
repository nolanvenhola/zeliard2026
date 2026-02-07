using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Represents a town in the game (e.g., Muralla, Satono, etc.)
    /// </summary>
    public class Town
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public List<NPC> NPCs { get; set; }
        public Shop Shop { get; set; }
        public bool HasSage { get; set; }
        public Texture2D BackgroundTexture { get; set; }
        public int AreaLevel { get; set; } // Which cavern this town is near (1-8)

        public Town(string name, int areaLevel)
        {
            Name = name;
            AreaLevel = areaLevel;
            NPCs = new List<NPC>();
            HasSage = true; // Most towns have the Sage
        }

        /// <summary>
        /// Create the starting town (Muralla)
        /// </summary>
        public static Town CreateMuralla()
        {
            var town = new Town("Muralla", 1)
            {
                Description = "A peaceful town at the edge of Zeliard kingdom. The adventure begins here."
            };

            // Add NPCs with rich multi-line dialogues
            town.NPCs.Add(new NPC("Villager",
                "Welcome to Muralla, brave traveler!",
                "This town has been peaceful for many years...",
                "But recently, monsters have been appearing in the nearby caves.",
                "Be careful if you venture there!"));

            town.NPCs.Add(new NPC("Elder",
                "Ah, a new face. You must be the warrior everyone is talking about.",
                "The kingdom of Zeliard is in grave danger.",
                "An ancient evil has awakened in the depths.",
                "Seek out the Sage to increase your power.",
                "Only by growing stronger can you defeat the darkness!"));

            town.NPCs.Add(new NPC("Guard",
                "I'm stationed here to protect the town.",
                "The caves to the east are dangerous.",
                "Make sure you're well equipped before entering.",
                "Visit the shop if you need better gear."));

            town.NPCs.Add(new NPC("Child",
                "My dad is a blacksmith!",
                "He makes the strongest swords in all of Muralla.",
                "Maybe one day I'll be a warrior like you!"));

            // Add Innkeeper with healing dialogue
            town.NPCs.Add(new NPC("Innkeeper", player =>
            {
                if (player.Health < player.MaxHealth / 2)
                {
                    return new Dialogue("Innkeeper",
                        "You look badly wounded, warrior!",
                        "Rest here at my inn and recover your strength.",
                        $"For just 50 gold, I'll restore you to full health. (Current: {player.Health}/{player.MaxHealth})",
                        "Would you like to rest?");
                }
                else
                {
                    return new Dialogue("Innkeeper",
                        "Welcome to the Muralla Inn!",
                        "You look healthy enough for now.",
                        "Come back if you need rest after battle.");
                }
            }, "Innkeeper") { SpriteColor = Color.Green });

            // Add Blacksmith with level-based dialogue
            town.NPCs.Add(new NPC("Blacksmith", player =>
            {
                if (player.Level < 5)
                {
                    return new Dialogue("Blacksmith",
                        "Ah, a new adventurer!",
                        "I forge the finest weapons in Muralla.",
                        "Visit the shop when you have gold.",
                        "And come back when you're stronger - I have special items for experienced warriors.");
                }
                else if (player.Level < 10)
                {
                    return new Dialogue("Blacksmith",
                        $"You've reached level {player.Level}! Impressive!",
                        "I can tell you've seen real battle.",
                        "My basic weapons might not be enough for you anymore.",
                        "Consider traveling to other towns for better equipment.");
                }
                else
                {
                    return new Dialogue("Blacksmith",
                        $"Level {player.Level}... You're a true warrior now!",
                        "I'm honored to meet such a legendary hero.",
                        "My simple forge can't create weapons worthy of you.",
                        "Seek the master smiths in the distant towns.");
                }
            }, "Blacksmith") { SpriteColor = Color.Orange });

            // Add Traveling Merchant
            town.NPCs.Add(new NPC("Merchant", player =>
            {
                if (player.Gold < 100)
                {
                    return new Dialogue("Merchant",
                        "Greetings, traveler!",
                        "I sell rare items from distant lands.",
                        "But I see your coin purse is light.",
                        "Defeat monsters in the caves to earn gold!");
                }
                else
                {
                    return new Dialogue("Merchant",
                        $"Ah, I see you have {player.Gold} gold!",
                        "A wise warrior saves their coin.",
                        "Visit the shops in each town for the best deals.",
                        "Equipment gets better as you travel east!");
                }
            }, "Merchant") { SpriteColor = Color.Gold });

            // Create shop
            town.Shop = Shop.CreateMurallaShop();

            return town;
        }

        /// <summary>
        /// Create all towns
        /// </summary>
        public static List<Town> CreateAllTowns()
        {
            return new List<Town>
            {
                CreateMuralla(),
                CreateSatono(),
                CreateBosque(),
                CreateCemento(),
                CreatePlata(),
                CreateArrugia(),
                CreateAbsorto(),
                CreateDesleal()
            };
        }

        public static Town CreateSatono()
        {
            var town = new Town("Satono", 2)
            {
                Description = "A woodland town near the wooden caverns."
            };

            town.NPCs.Add(new NPC("Woodcutter",
                "The forest has become dangerous lately.",
                "Strange creatures lurk in the wooden caves.",
                "Make sure you're prepared before venturing deeper."));

            town.NPCs.Add(new NPC("Herbalist",
                "I gather herbs from the forest for medicine.",
                "The caves contain rare plants with magical properties.",
                "But the monsters make it too dangerous to enter now."));

            town.Shop = Shop.CreateSatonoShop();
            return town;
        }

        public static Town CreateBosque()
        {
            var town = new Town("Bosque", 3)
            {
                Description = "A frozen village in the icy mountains."
            };

            town.NPCs.Add(new NPC("Ice Hunter",
                "The cold here is unforgiving.",
                "Only the strongest survive in the ice caves.",
                "Warm clothing won't help against the monsters inside."));

            town.NPCs.Add(new NPC("Shivering Traveler",
                "I came here seeking adventure...",
                "But the ice monsters are far too powerful!",
                "I'll wait here until a hero clears the way."));

            town.Shop = Shop.CreateBosqueShop();
            return town;
        }

        public static Town CreateCemento()
        {
            var town = new Town("Cemento", 4)
            {
                Description = "A grim town near the corrosive decay caves."
            };

            town.NPCs.Add(new NPC("Plague Doctor",
                "The caves emit a toxic miasma.",
                "Many have fallen ill from the corruption within.",
                "Only strong magic can protect you there."));

            town.NPCs.Add(new NPC("Survivor",
                "I barely escaped the decay caves alive.",
                "The monsters there drain your life force.",
                "Be careful, warrior. That place is cursed."));

            town.Shop = Shop.CreateCementoShop();
            return town;
        }

        public static Town CreatePlata()
        {
            var town = new Town("Plata", 5)
            {
                Description = "A prosperous silver mining town."
            };

            town.NPCs.Add(new NPC("Mine Foreman",
                "Our silver mines were once rich and peaceful.",
                "But something stirred in the deep tunnels.",
                "Now treasure and monsters fill the caves below.",
                "Clear them out and the riches are yours!"));

            town.NPCs.Add(new NPC("Wealthy Merchant",
                "I made my fortune from silver.",
                "The treasure caves hold unimaginable wealth.",
                "But no amount of gold is worth your life, friend."));

            // Add Quest Giver
            town.NPCs.Add(new NPC("Mysterious Stranger", player =>
            {
                if (player.Level < 15)
                {
                    return new Dialogue("Mysterious Stranger",
                        "You're not ready yet, warrior.",
                        "The quest I have is far too dangerous.",
                        "Return when you've reached level 15.",
                        "Only then will I reveal the ancient secret.");
                }
                else
                {
                    return new Dialogue("Mysterious Stranger",
                        $"Ah, level {player.Level}. You may be ready.",
                        "Deep in the treasure caves lies a legendary artifact.",
                        "The Crystal of Power, hidden for centuries.",
                        "Find it, and its magic will aid you in the final battle.",
                        "But beware - the guardian is unlike any foe you've faced.");
                }
            }, "QuestGiver") { SpriteColor = Color.Purple });

            town.Shop = Shop.CreatePlataShop();
            return town;
        }

        public static Town CreateArrugia()
        {
            var town = new Town("Arrugia", 6)
            {
                Description = "A scorched town near the burning caverns."
            };

            town.NPCs.Add(new NPC("Fire Priest",
                "The flames of the caverns burn with ancient magic.",
                "Fire elementals guard the deepest chambers.",
                "Only one with a pure heart can pass through the inferno."));

            town.NPCs.Add(new NPC("Burned Warrior",
                "I tried to conquer the fire caves alone.",
                "My armor melted from the heat.",
                "Don't make the same mistake I did."));

            town.Shop = Shop.CreateArrugiaShop();
            return town;
        }

        public static Town CreateAbsorto()
        {
            var town = new Town("Absorto", 7)
            {
                Description = "A mysterious town surrounded by radiant light."
            };

            town.NPCs.Add(new NPC("Light Sage",
                "The caves ahead glow with divine energy.",
                "Angels and spirits dwell within.",
                "But some have been corrupted by the ancient evil.",
                "You are close to the source of darkness now."));

            town.NPCs.Add(new NPC("Oracle",
                "I see your destiny, brave warrior.",
                "The final battle approaches.",
                "Prepare yourself well before entering the last cave."));

            town.Shop = Shop.CreateAbsortoShop();
            return town;
        }

        public static Town CreateDesleal()
        {
            var town = new Town("Desleal", 8)
            {
                Description = "The final town. The end is near."
            };

            town.NPCs.Add(new NPC("Ancient Guardian",
                "This is the last sanctuary before the abyss.",
                "The evil that awakened threatens all of Zeliard.",
                "Beyond these walls lies the source of corruption.",
                "You are our final hope, warrior.",
                "May the spirits guide your blade."));

            town.NPCs.Add(new NPC("Weary Knight",
                "I've fought through all seven caves to reach here.",
                "But the final cave... it's unlike anything else.",
                "The darkness itself takes form within.",
                "Steel yourself. This is the end."));

            town.Shop = Shop.CreateDeslealShop();
            return town;
        }
    }

    /// <summary>
    /// Non-player character in towns
    /// </summary>
    public class NPC
    {
        public string Name { get; set; }
        public string SimpleDialogue { get; set; } // For backward compatibility
        public Dialogue MultiLineDialogue { get; set; } // Rich dialogue support
        public System.Func<Systems.Player, Dialogue> DynamicDialogue { get; set; } // Player-state based dialogue
        public Vector2 Position { get; set; }
        public Rectangle SpriteRect { get; set; }
        public bool CanInteract { get; set; }
        public Color SpriteColor { get; set; } = Color.CornflowerBlue; // Visual customization
        public string Role { get; set; } // "Innkeeper", "Blacksmith", "Merchant", etc.

        // Simple constructor (single line)
        public NPC(string name, string dialogue)
        {
            Name = name;
            SimpleDialogue = dialogue;
            CanInteract = true;
        }

        // Multi-line constructor
        public NPC(string name, params string[] dialogueLines)
        {
            Name = name;
            MultiLineDialogue = new Dialogue(name, dialogueLines);
            SimpleDialogue = dialogueLines.Length > 0 ? dialogueLines[0] : "";
            CanInteract = true;
        }

        // Dynamic dialogue constructor
        public NPC(string name, System.Func<Systems.Player, Dialogue> dynamicDialogue, string role = "Villager")
        {
            Name = name;
            DynamicDialogue = dynamicDialogue;
            Role = role;
            CanInteract = true;
        }

        // Get dialogue object for DialogueManager
        public Dialogue GetDialogue(Systems.Player player = null)
        {
            // Dynamic dialogue takes priority
            if (DynamicDialogue != null && player != null)
                return DynamicDialogue(player);

            if (MultiLineDialogue != null)
                return MultiLineDialogue;

            // Convert simple dialogue to Dialogue object
            return new Dialogue(Name, SimpleDialogue);
        }
    }

    /// <summary>
    /// Manages the town screen and interactions
    /// </summary>
    public class TownManager
    {
        private Town _currentTown;
        private List<Town> _allTowns;
        private TownScreen _currentScreen;

        public enum TownScreen
        {
            Main,       // Town overview
            Shop,       // Shopping
            Sage,       // Level up with Sage
            NPC,        // Talking to NPC
            Inn         // Rest at inn
        }

        public TownManager()
        {
            _allTowns = Town.CreateAllTowns();
            _currentTown = _allTowns[0]; // Start at Muralla
            _currentScreen = TownScreen.Main;
        }

        public void EnterTown(int townIndex)
        {
            if (townIndex >= 0 && townIndex < _allTowns.Count)
            {
                _currentTown = _allTowns[townIndex];
                _currentScreen = TownScreen.Main;
            }
        }

        public void OpenShop()
        {
            if (_currentTown.Shop != null)
            {
                _currentScreen = TownScreen.Shop;
            }
        }

        public void VisitSage()
        {
            if (_currentTown.HasSage)
            {
                _currentScreen = TownScreen.Sage;
            }
        }

        public void TalkToNPC(NPC npc)
        {
            _currentScreen = TownScreen.NPC;
        }

        public void ReturnToTownMain()
        {
            _currentScreen = TownScreen.Main;
        }

        public Town CurrentTown => _currentTown;
        public TownScreen CurrentScreen => _currentScreen;
    }
}
