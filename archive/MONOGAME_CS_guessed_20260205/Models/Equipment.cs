namespace ZeliardModern.Models
{
    public enum SwordType
    {
        Training = 0,
        WiseMan = 1,
        Spirit = 2,
        Knight = 3,
        Enchantment = 4,
        Ultimate = 5
    }

    public enum ShieldType
    {
        None = 0,
        Leather = 1,
        Bronze = 2,
        Iron = 3,
        Steel = 4,
        Honor = 5,
        Light = 6,
        Titanium = 7
    }

    public enum ArmorType
    {
        None = 0,
        Leather = 1,
        Bronze = 2,
        Iron = 3,
        Steel = 4,
        Crystal = 5
    }

    public class Sword
    {
        public SwordType Type { get; set; }
        public string Name { get; set; }
        public int BaseDamage { get; set; }
        public int Cost { get; set; }

        public Sword(SwordType type, string name, int baseDamage, int cost)
        {
            Type = type;
            Name = name;
            BaseDamage = baseDamage;
            Cost = cost;
        }

        /// <summary>
        /// Calculate actual damage based on player level
        /// Formula: BaseDamage + (playerLevel / 2)
        /// </summary>
        public int GetDamage(int playerLevel)
        {
            return BaseDamage + (playerLevel / 2);
        }

        public static Sword CreateTrainingSword() => new Sword(SwordType.Training, "Training Sword", 1, 0);
        public static Sword CreateWiseManSword() => new Sword(SwordType.WiseMan, "Wise Man's Sword", 2, 500);
        public static Sword CreateSpiritSword() => new Sword(SwordType.Spirit, "Spirit Sword", 4, 2000);
        public static Sword CreateKnightSword() => new Sword(SwordType.Knight, "Knight's Sword", 8, 8000);
        public static Sword CreateEnchantmentSword() => new Sword(SwordType.Enchantment, "Enchantment Sword", 16, 30000);

        public static Sword Create(SwordType type)
        {
            return type switch
            {
                SwordType.Training => CreateTrainingSword(),
                SwordType.WiseMan => CreateWiseManSword(),
                SwordType.Spirit => CreateSpiritSword(),
                SwordType.Knight => CreateKnightSword(),
                SwordType.Enchantment => CreateEnchantmentSword(),
                SwordType.Ultimate => new Sword(SwordType.Ultimate, "Ultimate Sword", 32, 100000),
                _ => CreateTrainingSword()
            };
        }
    }

    public class Shield
    {
        public ShieldType Type { get; set; }
        public string Name { get; set; }
        public int BaseDefense { get; set; }
        public int Durability { get; set; }
        public int Cost { get; set; }

        public Shield(ShieldType type, string name, int baseDefense, int durability, int cost)
        {
            Type = type;
            Name = name;
            BaseDefense = baseDefense;
            Durability = durability;
            Cost = cost;
        }

        public static Shield CreateLeatherShield() => new Shield(ShieldType.Leather, "Leather Shield", 1, 100, 200);
        public static Shield CreateBronzeShield() => new Shield(ShieldType.Bronze, "Bronze Shield", 2, 150, 400);
        public static Shield CreateIronShield() => new Shield(ShieldType.Iron, "Iron Shield", 3, 200, 800);
        public static Shield CreateSteelShield() => new Shield(ShieldType.Steel, "Steel Shield", 4, 250, 1500);
        public static Shield CreateHonorShield() => new Shield(ShieldType.Honor, "Honor Shield", 5, 300, 3000);
        public static Shield CreateLightShield() => new Shield(ShieldType.Light, "Light Shield", 5, 500, 6000);
        public static Shield CreateTitaniumShield() => new Shield(ShieldType.Titanium, "Titanium Shield", 6, 600, 12000);

        public static Shield Create(ShieldType type)
        {
            return type switch
            {
                ShieldType.None => null,
                ShieldType.Leather => CreateLeatherShield(),
                ShieldType.Bronze => CreateBronzeShield(),
                ShieldType.Iron => CreateIronShield(),
                ShieldType.Steel => CreateSteelShield(),
                ShieldType.Honor => CreateHonorShield(),
                ShieldType.Light => CreateLightShield(),
                ShieldType.Titanium => CreateTitaniumShield(),
                _ => null
            };
        }
    }

    public class Armor
    {
        public ArmorType Type { get; set; }
        public string Name { get; set; }
        public int Defense { get; set; }
        public int Cost { get; set; }

        public Armor(ArmorType type, string name, int defense, int cost)
        {
            Type = type;
            Name = name;
            Defense = defense;
            Cost = cost;
        }

        public static Armor CreateLeatherArmor() => new Armor(ArmorType.Leather, "Leather Armor", 1, 300);
        public static Armor CreateBronzeArmor() => new Armor(ArmorType.Bronze, "Bronze Armor", 2, 600);
        public static Armor CreateIronArmor() => new Armor(ArmorType.Iron, "Iron Armor", 3, 1200);
        public static Armor CreateSteelArmor() => new Armor(ArmorType.Steel, "Steel Armor", 4, 2400);
        public static Armor CreateCrystalArmor() => new Armor(ArmorType.Crystal, "Crystal Armor", 5, 5000);

        public static Armor Create(ArmorType type)
        {
            return type switch
            {
                ArmorType.None => null,
                ArmorType.Leather => CreateLeatherArmor(),
                ArmorType.Bronze => CreateBronzeArmor(),
                ArmorType.Iron => CreateIronArmor(),
                ArmorType.Steel => CreateSteelArmor(),
                ArmorType.Crystal => CreateCrystalArmor(),
                _ => null
            };
        }
    }
}
