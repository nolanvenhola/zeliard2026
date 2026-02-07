using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using ZeliardModern.Audio;
using ZeliardModern.Data;
using ZeliardModern.Systems;
using System;

namespace ZeliardModern.UI
{
    /// <summary>
    /// Mode for save/load menu
    /// </summary>
    public enum SaveLoadMode
    {
        Save,   // Saving game
        Load    // Loading game
    }

    /// <summary>
    /// State for confirmation dialog
    /// </summary>
    public enum ConfirmState
    {
        None,
        ConfirmOverwrite,
        ConfirmDelete
    }

    /// <summary>
    /// Save/Load menu with slot management
    /// </summary>
    public class SaveLoadMenu
    {
        private SaveSystem _saveSystem;
        private SoundManager _soundManager;
        private SaveLoadMode _mode;
        private int _selectedSlot;
        private ConfirmState _confirmState;
        private SaveInfo[] _saveInfos;

        // Keyboard state for input detection
        private KeyboardState _previousKeyboardState;

        // Properties
        public bool IsActive { get; set; }
        public int SelectedSlot => _selectedSlot + 1; // Slots 1-3 for player (internally 1-3)
        public SaveInfo[] SaveInfos => _saveInfos;

        // Events
        public event Action<int> OnSaveSelected;
        public event Action<int> OnLoadSelected;
        public event Action OnCancelled;

        public SaveLoadMenu(SaveSystem saveSystem, SoundManager soundManager = null)
        {
            _saveSystem = saveSystem;
            _soundManager = soundManager;
            _selectedSlot = 0; // Start at slot 1 (index 0 = slot 1)
            _confirmState = ConfirmState.None;
            _previousKeyboardState = Keyboard.GetState();

            RefreshSaveInfos();
        }

        /// <summary>
        /// Open the menu in save or load mode
        /// </summary>
        public void Open(SaveLoadMode mode)
        {
            _mode = mode;
            _selectedSlot = 0;
            _confirmState = ConfirmState.None;
            IsActive = true;
            RefreshSaveInfos();
        }

        /// <summary>
        /// Close the menu
        /// </summary>
        public void Close()
        {
            IsActive = false;
            _confirmState = ConfirmState.None;
        }

        /// <summary>
        /// Refresh save slot information
        /// </summary>
        public void RefreshSaveInfos()
        {
            _saveInfos = new SaveInfo[3];
            for (int i = 0; i < 3; i++)
            {
                _saveInfos[i] = _saveSystem.GetSaveInfo(i + 1); // Slots 1-3
            }
        }

        /// <summary>
        /// Update menu input
        /// </summary>
        public void Update()
        {
            if (!IsActive)
                return;

            KeyboardState keyState = Keyboard.GetState();

            // Handle confirmation dialog
            if (_confirmState != ConfirmState.None)
            {
                HandleConfirmation(keyState);
            }
            else
            {
                HandleNavigation(keyState);
            }

            _previousKeyboardState = keyState;
        }

        /// <summary>
        /// Handle navigation input
        /// </summary>
        private void HandleNavigation(KeyboardState keyState)
        {
            // Move up
            if (IsKeyPressed(keyState, Keys.Up))
            {
                _selectedSlot--;
                if (_selectedSlot < 0)
                    _selectedSlot = 2; // Wrap to slot 3
                _soundManager?.PlaySound(SoundEffects.MENU_MOVE);
            }

            // Move down
            if (IsKeyPressed(keyState, Keys.Down))
            {
                _selectedSlot++;
                if (_selectedSlot > 2)
                    _selectedSlot = 0; // Wrap to slot 1
                _soundManager?.PlaySound(SoundEffects.MENU_MOVE);
            }

            // Select action
            if (IsKeyPressed(keyState, Keys.Enter))
            {
                HandleSelection();
            }

            // Delete save (only in load mode)
            if (_mode == SaveLoadMode.Load && IsKeyPressed(keyState, Keys.Delete))
            {
                if (_saveInfos[_selectedSlot].Exists)
                {
                    _confirmState = ConfirmState.ConfirmDelete;
                    _soundManager?.PlaySound(SoundEffects.MENU_SELECT);
                }
            }

            // Cancel/Back
            if (IsKeyPressed(keyState, Keys.Escape))
            {
                _soundManager?.PlaySound(SoundEffects.MENU_BACK);
                OnCancelled?.Invoke();
                Close();
            }
        }

        /// <summary>
        /// Handle selection based on mode
        /// </summary>
        private void HandleSelection()
        {
            int actualSlot = _selectedSlot + 1; // Convert to actual slot number (1-3)

            if (_mode == SaveLoadMode.Save)
            {
                // Check if save exists (need to confirm overwrite)
                if (_saveInfos[_selectedSlot].Exists)
                {
                    _confirmState = ConfirmState.ConfirmOverwrite;
                    _soundManager?.PlaySound(SoundEffects.MENU_SELECT);
                }
                else
                {
                    // New save, no confirmation needed
                    _soundManager?.PlaySound(SoundEffects.MENU_SELECT);
                    OnSaveSelected?.Invoke(actualSlot);
                    Close();
                }
            }
            else // Load mode
            {
                // Can only load if save exists
                if (_saveInfos[_selectedSlot].Exists)
                {
                    _soundManager?.PlaySound(SoundEffects.MENU_SELECT);
                    OnLoadSelected?.Invoke(actualSlot);
                    Close();
                }
                else
                {
                    // No save in this slot - play error sound or feedback
                    _soundManager?.PlaySound(SoundEffects.MENU_BACK);
                }
            }
        }

        /// <summary>
        /// Handle confirmation dialog input
        /// </summary>
        private void HandleConfirmation(KeyboardState keyState)
        {
            // Confirm (Y key or Enter)
            if (IsKeyPressed(keyState, Keys.Y) || IsKeyPressed(keyState, Keys.Enter))
            {
                _soundManager?.PlaySound(SoundEffects.MENU_SELECT);

                if (_confirmState == ConfirmState.ConfirmOverwrite)
                {
                    int actualSlot = _selectedSlot + 1;
                    OnSaveSelected?.Invoke(actualSlot);
                    Close();
                }
                else if (_confirmState == ConfirmState.ConfirmDelete)
                {
                    int actualSlot = _selectedSlot + 1;
                    _saveSystem.DeleteSave(actualSlot);
                    RefreshSaveInfos();
                    _confirmState = ConfirmState.None;
                }
            }

            // Cancel (N key or Escape)
            if (IsKeyPressed(keyState, Keys.N) || IsKeyPressed(keyState, Keys.Escape))
            {
                _soundManager?.PlaySound(SoundEffects.MENU_BACK);
                _confirmState = ConfirmState.None;
            }
        }

        /// <summary>
        /// Check if a key was just pressed
        /// </summary>
        private bool IsKeyPressed(KeyboardState currentState, Keys key)
        {
            return currentState.IsKeyDown(key) && _previousKeyboardState.IsKeyUp(key);
        }

        /// <summary>
        /// Draw the save/load menu
        /// </summary>
        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            if (!IsActive)
                return;

            // Draw semi-transparent background
            DrawBackground(spriteBatch, screenWidth, screenHeight);

            // Draw title
            string title = _mode == SaveLoadMode.Save ? "SAVE GAME" : "LOAD GAME";
            DrawTitle(spriteBatch, font, title, screenWidth);

            // Draw save slots
            DrawSaveSlots(spriteBatch, font, screenWidth, screenHeight);

            // Draw instructions
            DrawInstructions(spriteBatch, font, screenWidth, screenHeight);

            // Draw confirmation dialog if active
            if (_confirmState != ConfirmState.None)
            {
                DrawConfirmationDialog(spriteBatch, font, screenWidth, screenHeight);
            }
        }

        /// <summary>
        /// Draw background overlay
        /// </summary>
        private void DrawBackground(SpriteBatch spriteBatch, int width, int height)
        {
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            spriteBatch.Draw(pixelTexture,
                new Rectangle(0, 0, width, height),
                Color.Black * 0.8f);
        }

        /// <summary>
        /// Draw title
        /// </summary>
        private void DrawTitle(SpriteBatch spriteBatch, SpriteFont font, string title, int screenWidth)
        {
            Vector2 titleSize = font.MeasureString(title);
            Vector2 titlePos = new Vector2((screenWidth - titleSize.X) / 2, 50);

            spriteBatch.DrawString(font, title, titlePos, Color.Yellow, 0f, Vector2.Zero, 1.2f, SpriteEffects.None, 0f);
        }

        /// <summary>
        /// Draw save slots
        /// </summary>
        private void DrawSaveSlots(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            int slotHeight = 120;
            int slotWidth = 600;
            int startY = 150;
            int slotX = (screenWidth - slotWidth) / 2;

            for (int i = 0; i < 3; i++)
            {
                int slotY = startY + (i * (slotHeight + 20));
                bool isSelected = (i == _selectedSlot);

                DrawSaveSlot(spriteBatch, font, _saveInfos[i], i + 1, slotX, slotY, slotWidth, slotHeight, isSelected);
            }
        }

        /// <summary>
        /// Draw a single save slot
        /// </summary>
        private void DrawSaveSlot(SpriteBatch spriteBatch, SpriteFont font, SaveInfo info, int slotNumber,
            int x, int y, int width, int height, bool isSelected)
        {
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            // Background
            Color bgColor = isSelected ? new Color(60, 60, 80) : new Color(30, 30, 40);
            spriteBatch.Draw(pixelTexture, new Rectangle(x, y, width, height), bgColor);

            // Border
            Color borderColor = isSelected ? Color.Yellow : Color.Gray;
            int borderThickness = isSelected ? 3 : 2;
            DrawBorder(spriteBatch, pixelTexture, x, y, width, height, borderColor, borderThickness);

            // Slot title
            string slotTitle = $"Slot {slotNumber}";
            spriteBatch.DrawString(font, slotTitle, new Vector2(x + 20, y + 15), Color.White, 0f, Vector2.Zero, 1.0f, SpriteEffects.None, 0f);

            // Save data
            if (info.Exists)
            {
                string levelText = $"Level: {info.PlayerLevel}";
                string areaText = $"Area: {info.CurrentArea}";
                string timeText = $"Time: {FormatPlayTime(info.PlayTime)}";
                string dateText = $"Saved: {info.SaveTime:MM/dd/yyyy HH:mm}";

                spriteBatch.DrawString(font, levelText, new Vector2(x + 20, y + 45), Color.Cyan, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
                spriteBatch.DrawString(font, areaText, new Vector2(x + 20, y + 65), Color.Cyan, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
                spriteBatch.DrawString(font, timeText, new Vector2(x + 200, y + 45), Color.LightGreen, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
                spriteBatch.DrawString(font, dateText, new Vector2(x + 200, y + 65), Color.LightGray, 0f, Vector2.Zero, 0.7f, SpriteEffects.None, 0f);
            }
            else
            {
                string emptyText = "[ Empty Slot ]";
                spriteBatch.DrawString(font, emptyText, new Vector2(x + 20, y + 55), Color.Gray, 0f, Vector2.Zero, 0.9f, SpriteEffects.None, 0f);
            }
        }

        /// <summary>
        /// Draw border around rectangle
        /// </summary>
        private void DrawBorder(SpriteBatch spriteBatch, Texture2D pixel, int x, int y, int width, int height, Color color, int thickness)
        {
            spriteBatch.Draw(pixel, new Rectangle(x, y, width, thickness), color); // Top
            spriteBatch.Draw(pixel, new Rectangle(x, y + height - thickness, width, thickness), color); // Bottom
            spriteBatch.Draw(pixel, new Rectangle(x, y, thickness, height), color); // Left
            spriteBatch.Draw(pixel, new Rectangle(x + width - thickness, y, thickness, height), color); // Right
        }

        /// <summary>
        /// Draw instructions
        /// </summary>
        private void DrawInstructions(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            string instructions = _mode == SaveLoadMode.Save
                ? "↑↓: Select | Enter: Save | Esc: Cancel"
                : "↑↓: Select | Enter: Load | Delete: Remove | Esc: Cancel";

            Vector2 instructionsSize = font.MeasureString(instructions);
            Vector2 instructionsPos = new Vector2((screenWidth - instructionsSize.X) / 2, screenHeight - 80);

            spriteBatch.DrawString(font, instructions, instructionsPos, Color.LightGray, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
        }

        /// <summary>
        /// Draw confirmation dialog
        /// </summary>
        private void DrawConfirmationDialog(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            // Dialog background
            int dialogWidth = 500;
            int dialogHeight = 150;
            int dialogX = (screenWidth - dialogWidth) / 2;
            int dialogY = (screenHeight - dialogHeight) / 2;

            spriteBatch.Draw(pixelTexture, new Rectangle(dialogX, dialogY, dialogWidth, dialogHeight), new Color(20, 20, 30));
            DrawBorder(spriteBatch, pixelTexture, dialogX, dialogY, dialogWidth, dialogHeight, Color.Yellow, 3);

            // Dialog text
            string message = _confirmState == ConfirmState.ConfirmOverwrite
                ? "Overwrite existing save?"
                : "Delete this save?";

            Vector2 messageSize = font.MeasureString(message);
            Vector2 messagePos = new Vector2(dialogX + (dialogWidth - messageSize.X) / 2, dialogY + 40);
            spriteBatch.DrawString(font, message, messagePos, Color.White);

            string confirmText = "Y: Yes | N: No";
            Vector2 confirmSize = font.MeasureString(confirmText);
            Vector2 confirmPos = new Vector2(dialogX + (dialogWidth - confirmSize.X) / 2, dialogY + 90);
            spriteBatch.DrawString(font, confirmText, confirmPos, Color.LightGray, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
        }

        /// <summary>
        /// Format playtime in hours:minutes
        /// </summary>
        private string FormatPlayTime(float seconds)
        {
            int totalMinutes = (int)(seconds / 60);
            int hours = totalMinutes / 60;
            int minutes = totalMinutes % 60;

            if (hours > 0)
                return $"{hours}h {minutes}m";
            else
                return $"{minutes}m";
        }
    }
}
