using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Models;
using ZeliardModern.Systems;
using System.Collections.Generic;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Shop item for purchase
    /// </summary>
    public class ShopItem
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public int Cost { get; set; }
        public ItemType Type { get; set; }
        public object Item { get; set; } // Sword, Shield, Armor, or consumable

        public enum ItemType
        {
            Sword,
            Shield,
            Armor,
            Potion,
            Accessory
        }

        public ShopItem(string name, int cost, ItemType type, object item, string description = "")
        {
            Name = name;
            Cost = cost;
            Type = type;
            Item = item;
            Description = description;
        }
    }

    /// <summary>
    /// Shop in a town
    /// </summary>
    public class Shop
    {
        public string ShopkeeperName { get; set; }
        public string Greeting { get; set; }
        public List<ShopItem> Items { get; set; }

        public Shop(string shopkeeperName, string greeting)
        {
            ShopkeeperName = shopkeeperName;
            Greeting = greeting;
            Items = new List<ShopItem>();
        }

        /// <summary>
        /// Create shop for Muralla (starting town)
        /// </summary>
        public static Shop CreateMurallaShop()
        {
            var shop = new Shop("Arms Dealer", "Welcome! I have basic equipment for your journey.");

            // Starting equipment
            shop.Items.Add(new ShopItem(
                "Wise Man's Sword",
                500,
                ShopItem.ItemType.Sword,
                Sword.CreateWiseManSword(),
                "A blade blessed by the wise. Attack +2"
            ));

            shop.Items.Add(new ShopItem(
                "Leather Shield",
                200,
                ShopItem.ItemType.Shield,
                Shield.CreateLeatherShield(),
                "Basic leather protection. Defense +1"
            ));

            shop.Items.Add(new ShopItem(
                "Bronze Shield",
                400,
                ShopItem.ItemType.Shield,
                Shield.CreateBronzeShield(),
                "Stronger bronze protection. Defense +2"
            ));

            return shop;
        }

        /// <summary>
        /// Create shop for second town with better equipment
        /// </summary>
        public static Shop CreateSatonoShop()
        {
            var shop = new Shop("Weapon Master", "I have stronger weapons for brave adventurers!");

            shop.Items.Add(new ShopItem(
                "Spirit Sword",
                2000,
                ShopItem.ItemType.Sword,
                Sword.CreateSpiritSword(),
                "A spiritual blade. Attack +4"
            ));

            shop.Items.Add(new ShopItem(
                "Iron Shield",
                800,
                ShopItem.ItemType.Shield,
                Shield.CreateIronShield(),
                "Solid iron protection. Defense +3"
            ));

            shop.Items.Add(new ShopItem(
                "Steel Shield",
                1500,
                ShopItem.ItemType.Shield,
                Shield.CreateSteelShield(),
                "Strong steel defense. Defense +4"
            ));

            return shop;
        }

        /// <summary>
        /// Create shop for area 3 town (Bosque - Ice)
        /// </summary>
        public static Shop CreateBosqueShop()
        {
            var shop = new Shop("Ice Merchant", "Cold-forged gear for the frozen caverns!");

            shop.Items.Add(new ShopItem(
                "Knight Sword",
                5000,
                ShopItem.ItemType.Sword,
                Sword.CreateKnightSword(),
                "A noble knight's blade. Attack +8"
            ));

            shop.Items.Add(new ShopItem(
                "Honor Shield",
                3000,
                ShopItem.ItemType.Shield,
                Shield.CreateHonorShield(),
                "Shield of honor. Defense +5"
            ));

            return shop;
        }

        /// <summary>
        /// Create shop for area 4 town (Cemento - Corrosive)
        /// </summary>
        public static Shop CreateCementoShop()
        {
            var shop = new Shop("Corrosion Smith", "Acid-resistant equipment for dangerous areas.");

            shop.Items.Add(new ShopItem(
                "Enchantment Sword",
                10000,
                ShopItem.ItemType.Sword,
                Sword.CreateEnchantmentSword(),
                "Enchanted with ancient magic. Attack +16"
            ));

            shop.Items.Add(new ShopItem(
                "Light Shield",
                6000,
                ShopItem.ItemType.Shield,
                Shield.CreateLightShield(),
                "Radiant light defense. Defense +5"
            ));

            return shop;
        }

        /// <summary>
        /// Create shop for area 5 town (Plata - Silver Mines)
        /// </summary>
        public static Shop CreatePlataShop()
        {
            var shop = new Shop("Master Armorer", "The finest equipment in the kingdom!");

            shop.Items.Add(new ShopItem(
                "Ultimate Sword",
                50000,
                ShopItem.ItemType.Sword,
                new Sword(SwordType.Ultimate, "Ultimate Sword", 32, 50000),
                "The legendary ultimate blade. Attack +32"
            ));

            shop.Items.Add(new ShopItem(
                "Titanium Shield",
                20000,
                ShopItem.ItemType.Shield,
                Shield.CreateTitaniumShield(),
                "Unbreakable titanium. Defense +7"
            ));

            return shop;
        }

        /// <summary>
        /// Create shop for area 6 town (Arrugia - Fire)
        /// </summary>
        public static Shop CreateArrugiaShop()
        {
            var shop = new Shop("Flame Forge", "Fire-forged weapons of incredible power!");

            shop.Items.Add(new ShopItem(
                "Leather Armor",
                1000,
                ShopItem.ItemType.Armor,
                Armor.CreateLeatherArmor(),
                "Basic leather protection. Defense +2"
            ));

            shop.Items.Add(new ShopItem(
                "Iron Armor",
                3000,
                ShopItem.ItemType.Armor,
                Armor.CreateIronArmor(),
                "Solid iron armor. Defense +3"
            ));

            return shop;
        }

        /// <summary>
        /// Create shop for area 7 town (Absorto - Light)
        /// </summary>
        public static Shop CreateAbsortoShop()
        {
            var shop = new Shop("Light Keeper", "Sacred equipment blessed by ancient light.");

            shop.Items.Add(new ShopItem(
                "Steel Armor",
                8000,
                ShopItem.ItemType.Armor,
                Armor.CreateSteelArmor(),
                "Heavy steel protection. Defense +4"
            ));

            shop.Items.Add(new ShopItem(
                "Crystal Armor",
                25000,
                ShopItem.ItemType.Armor,
                Armor.CreateCrystalArmor(),
                "Crystalline divine armor. Defense +8"
            ));

            return shop;
        }

        /// <summary>
        /// Create shop for area 8 town (Desleal - Final)
        /// </summary>
        public static Shop CreateDeslealShop()
        {
            var shop = new Shop("Ancient Vendor", "Artifacts from the age of legends.");

            shop.Items.Add(new ShopItem(
                "Ultimate Sword",
                100000,
                ShopItem.ItemType.Sword,
                new Sword(SwordType.Ultimate, "Ultimate Sword", 32, 100000),
                "The ultimate weapon. Attack +32"
            ));

            shop.Items.Add(new ShopItem(
                "Crystal Armor",
                50000,
                ShopItem.ItemType.Armor,
                Armor.CreateCrystalArmor(),
                "Ultimate protection. Defense +8"
            ));

            shop.Items.Add(new ShopItem(
                "Titanium Shield",
                40000,
                ShopItem.ItemType.Shield,
                Shield.CreateTitaniumShield(),
                "Ultimate defense. Defense +7"
            ));

            return shop;
        }

        /// <summary>
        /// Attempt to purchase an item
        /// </summary>
        public bool PurchaseItem(Player player, ShopItem item)
        {
            if (player.Gold < item.Cost)
                return false; // Not enough gold

            // Deduct gold
            player.Gold -= item.Cost;

            // Equip item based on type
            switch (item.Type)
            {
                case ShopItem.ItemType.Sword:
                    player.EquippedSword = (Sword)item.Item;
                    break;

                case ShopItem.ItemType.Shield:
                    player.EquippedShield = (Shield)item.Item;
                    break;

                case ShopItem.ItemType.Armor:
                    player.EquippedArmor = (Armor)item.Item;
                    break;
            }

            return true;
        }
    }

    /// <summary>
    /// Manages shop UI and interactions
    /// </summary>
    public class ShopUI
    {
        private Shop _currentShop;
        private int _selectedItemIndex;
        private Player _player;

        public ShopUI()
        {
            _selectedItemIndex = 0;
        }

        public void OpenShop(Shop shop, Player player)
        {
            _currentShop = shop;
            _player = player;
            _selectedItemIndex = 0;
        }

        public void SelectNext()
        {
            if (_currentShop != null && _currentShop.Items.Count > 0)
            {
                _selectedItemIndex = (_selectedItemIndex + 1) % _currentShop.Items.Count;
            }
        }

        public void SelectPrevious()
        {
            if (_currentShop != null && _currentShop.Items.Count > 0)
            {
                _selectedItemIndex--;
                if (_selectedItemIndex < 0)
                    _selectedItemIndex = _currentShop.Items.Count - 1;
            }
        }

        public bool PurchaseSelected()
        {
            if (_currentShop == null || _selectedItemIndex >= _currentShop.Items.Count)
                return false;

            var item = _currentShop.Items[_selectedItemIndex];
            return _currentShop.PurchaseItem(_player, item);
        }

        public ShopItem GetSelectedItem()
        {
            if (_currentShop == null || _selectedItemIndex >= _currentShop.Items.Count)
                return null;

            return _currentShop.Items[_selectedItemIndex];
        }

        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            if (_currentShop == null)
                return;

            // Draw shop background
            DrawShopBackground(spriteBatch, screenWidth, screenHeight);

            // Draw shopkeeper greeting
            spriteBatch.DrawString(font, _currentShop.Greeting,
                new Vector2(50, 50), Color.White);

            // Draw items list
            int itemY = 120;
            for (int i = 0; i < _currentShop.Items.Count; i++)
            {
                var item = _currentShop.Items[i];
                Color itemColor = i == _selectedItemIndex ? Color.Yellow : Color.White;

                string itemText = $"{item.Name} - {item.Cost}G";
                spriteBatch.DrawString(font, itemText,
                    new Vector2(50, itemY), itemColor);

                // Draw description for selected item
                if (i == _selectedItemIndex)
                {
                    spriteBatch.DrawString(font, item.Description,
                        new Vector2(70, itemY + 20), Color.Gray, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
                }

                itemY += 60;
            }

            // Draw player's gold
            spriteBatch.DrawString(font, $"Your Gold: {_player.Gold}G",
                new Vector2(50, screenHeight - 100), Color.Gold);

            // Draw controls
            DrawControls(spriteBatch, font, screenWidth, screenHeight);
        }

        private void DrawShopBackground(SpriteBatch spriteBatch, int width, int height)
        {
            // Draw semi-transparent background
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            spriteBatch.Draw(pixelTexture,
                new Rectangle(0, 0, width, height),
                Color.Black * 0.85f);

            // Draw border
            spriteBatch.Draw(pixelTexture, new Rectangle(20, 20, width - 40, 4), Color.White);
            spriteBatch.Draw(pixelTexture, new Rectangle(20, height - 24, width - 40, 4), Color.White);
            spriteBatch.Draw(pixelTexture, new Rectangle(20, 20, 4, height - 40), Color.White);
            spriteBatch.Draw(pixelTexture, new Rectangle(width - 24, 20, 4, height - 40), Color.White);
        }

        private void DrawControls(SpriteBatch spriteBatch, SpriteFont font, int width, int height)
        {
            string controls = "↑↓: Select  Enter: Buy  ESC: Exit";
            spriteBatch.DrawString(font, controls,
                new Vector2(50, height - 50), Color.LightGray, 0f, Vector2.Zero, 0.9f, SpriteEffects.None, 0f);
        }
    }
}
