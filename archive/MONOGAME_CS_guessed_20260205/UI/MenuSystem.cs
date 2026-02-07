using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;
using ZeliardModern.Audio;

namespace ZeliardModern.UI
{
    /// <summary>
    /// Menu item with text and action
    /// </summary>
    public class MenuItem
    {
        public string Text { get; set; }
        public System.Action OnSelect { get; set; }
        public bool Enabled { get; set; }

        public MenuItem(string text, System.Action onSelect, bool enabled = true)
        {
            Text = text;
            OnSelect = onSelect;
            Enabled = enabled;
        }
    }

    /// <summary>
    /// Generic menu system
    /// </summary>
    public class Menu
    {
        public string Title { get; set; }
        public List<MenuItem> Items { get; set; }
        public int SelectedIndex { get; private set; }

        public Menu(string title)
        {
            Title = title;
            Items = new List<MenuItem>();
            SelectedIndex = 0;
        }

        public void AddItem(MenuItem item)
        {
            Items.Add(item);
        }

        public void AddItem(string text, System.Action onSelect, bool enabled = true)
        {
            Items.Add(new MenuItem(text, onSelect, enabled));
        }

        public void SelectNext()
        {
            if (Items.Count == 0) return;

            do
            {
                SelectedIndex = (SelectedIndex + 1) % Items.Count;
            } while (!Items[SelectedIndex].Enabled && HasEnabledItems());
        }

        public void SelectPrevious()
        {
            if (Items.Count == 0) return;

            do
            {
                SelectedIndex--;
                if (SelectedIndex < 0)
                    SelectedIndex = Items.Count - 1;
            } while (!Items[SelectedIndex].Enabled && HasEnabledItems());
        }

        public void SelectCurrent()
        {
            if (SelectedIndex >= 0 && SelectedIndex < Items.Count)
            {
                var item = Items[SelectedIndex];
                if (item.Enabled)
                {
                    item.OnSelect?.Invoke();
                }
            }
        }

        private bool HasEnabledItems()
        {
            foreach (var item in Items)
            {
                if (item.Enabled)
                    return true;
            }
            return false;
        }

        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            int menuWidth = 400;
            int menuHeight = 60 + Items.Count * 50;
            int menuX = (screenWidth - menuWidth) / 2;
            int menuY = (screenHeight - menuHeight) / 2;

            // Draw background
            DrawMenuBackground(spriteBatch, menuX, menuY, menuWidth, menuHeight);

            // Draw title
            Vector2 titleSize = font.MeasureString(Title);
            spriteBatch.DrawString(font, Title,
                new Vector2(menuX + (menuWidth - titleSize.X) / 2, menuY + 20),
                Color.Yellow);

            // Draw items
            int itemY = menuY + 70;
            for (int i = 0; i < Items.Count; i++)
            {
                var item = Items[i];
                Color color = !item.Enabled ? Color.Gray :
                             i == SelectedIndex ? Color.Yellow : Color.White;

                string itemText = i == SelectedIndex ? "> " + item.Text : "  " + item.Text;

                spriteBatch.DrawString(font, itemText,
                    new Vector2(menuX + 50, itemY), color);

                itemY += 50;
            }
        }

        private void DrawMenuBackground(SpriteBatch spriteBatch, int x, int y, int width, int height)
        {
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            // Background
            spriteBatch.Draw(pixelTexture,
                new Rectangle(x, y, width, height),
                Color.Black * 0.9f);

            // Border
            int borderThickness = 3;
            spriteBatch.Draw(pixelTexture, new Rectangle(x, y, width, borderThickness), Color.White);
            spriteBatch.Draw(pixelTexture, new Rectangle(x, y + height - borderThickness, width, borderThickness), Color.White);
            spriteBatch.Draw(pixelTexture, new Rectangle(x, y, borderThickness, height), Color.White);
            spriteBatch.Draw(pixelTexture, new Rectangle(x + width - borderThickness, y, borderThickness, height), Color.White);
        }
    }

    /// <summary>
    /// Main menu
    /// </summary>
    public static class MainMenu
    {
        public static Menu Create(System.Action onNewGame, System.Action onContinue, System.Action onLoadGame, System.Action onOptions, System.Action onExit, bool hasSaveData = false)
        {
            var menu = new Menu("ZELIARD");

            menu.AddItem("New Game", onNewGame);
            menu.AddItem("Continue", onContinue, hasSaveData); // Enabled if auto-save exists
            menu.AddItem("Load Game", onLoadGame);
            menu.AddItem("Options", onOptions);
            menu.AddItem("Exit", onExit);

            return menu;
        }
    }

    /// <summary>
    /// Pause menu
    /// </summary>
    public static class PauseMenu
    {
        public static Menu Create(System.Action onResume, System.Action onSaveGame, System.Action onLoadGame, System.Action onOptions, System.Action onMainMenu)
        {
            var menu = new Menu("PAUSED");

            menu.AddItem("Resume", onResume);
            menu.AddItem("Save Game", onSaveGame);
            menu.AddItem("Load Game", onLoadGame);
            menu.AddItem("Options", onOptions);
            menu.AddItem("Return to Main Menu", onMainMenu);

            return menu;
        }
    }

    /// <summary>
    /// Options menu with audio controls
    /// </summary>
    public static class OptionsMenu
    {
        public static Menu Create(System.Action onBack, Audio.AudioSystem audioSystem = null)
        {
            var menu = new Menu("OPTIONS");

            if (audioSystem != null)
            {
                // Music volume control
                menu.AddItem($"Music Volume: {(int)(audioSystem.MusicVolume * 100)}%", () =>
                {
                    audioSystem.MusicVolume += 0.1f;
                    if (audioSystem.MusicVolume > 1.0f)
                        audioSystem.MusicVolume = 0.0f;
                });

                // Sound volume control
                menu.AddItem($"Sound Volume: {(int)(audioSystem.SoundVolume * 100)}%", () =>
                {
                    audioSystem.SoundVolume += 0.1f;
                    if (audioSystem.SoundVolume > 1.0f)
                        audioSystem.SoundVolume = 0.0f;
                });

                // Music on/off toggle
                menu.AddItem($"Music: {(audioSystem.MusicEnabled ? "ON" : "OFF")}", () =>
                {
                    audioSystem.MusicEnabled = !audioSystem.MusicEnabled;
                });

                // Sound on/off toggle
                menu.AddItem($"Sound: {(audioSystem.SoundEnabled ? "ON" : "OFF")}", () =>
                {
                    audioSystem.SoundEnabled = !audioSystem.SoundEnabled;
                });
            }
            else
            {
                // Fallback if no audio system
                menu.AddItem("Sound Volume: 80%", () => { });
                menu.AddItem("Music Volume: 70%", () => { });
            }

            menu.AddItem("Controls", () => { }); // Would show control config
            menu.AddItem("Back", onBack);

            return menu;
        }
    }

    /// <summary>
    /// Manages menu navigation and input
    /// </summary>
    public class MenuManager
    {
        private Menu _currentMenu;
        private KeyboardState _previousKeyState;
        public SoundManager SoundManager { get; set; }

        public MenuManager(SoundManager soundManager = null)
        {
            _previousKeyState = Keyboard.GetState();
            SoundManager = soundManager;
        }

        public void SetMenu(Menu menu)
        {
            _currentMenu = menu;
        }

        public void Update()
        {
            if (_currentMenu == null)
                return;

            KeyboardState keyState = Keyboard.GetState();

            if (IsKeyPressed(keyState, Keys.Up) || IsKeyPressed(keyState, Keys.W))
            {
                _currentMenu.SelectPrevious();
                SoundManager?.PlaySound(SoundEffects.MENU_MOVE);
            }

            if (IsKeyPressed(keyState, Keys.Down) || IsKeyPressed(keyState, Keys.S))
            {
                _currentMenu.SelectNext();
                SoundManager?.PlaySound(SoundEffects.MENU_MOVE);
            }

            if (IsKeyPressed(keyState, Keys.Enter) || IsKeyPressed(keyState, Keys.Space))
            {
                _currentMenu.SelectCurrent();
                SoundManager?.PlaySound(SoundEffects.MENU_SELECT);
            }

            if (IsKeyPressed(keyState, Keys.Escape))
            {
                SoundManager?.PlaySound(SoundEffects.MENU_BACK);
            }

            _previousKeyState = keyState;
        }

        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            _currentMenu?.Draw(spriteBatch, font, screenWidth, screenHeight);
        }

        private bool IsKeyPressed(KeyboardState currentState, Keys key)
        {
            return currentState.IsKeyDown(key) && _previousKeyState.IsKeyUp(key);
        }

        public Menu CurrentMenu => _currentMenu;
    }
}
