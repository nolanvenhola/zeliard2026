using Microsoft.Xna.Framework;
using ZeliardModern.Data;

namespace ZeliardModern.Systems
{
    /// <summary>
    /// Manages automatic saving at key game events
    /// </summary>
    public class AutoSaveManager
    {
        private const int AUTO_SAVE_SLOT = 0; // Slot 0 is reserved for auto-save
        private const float TIME_BETWEEN_SAVES = 300f; // 5 minutes in seconds

        private SaveSystem _saveSystem;
        private float _timeSinceLastSave;
        private int _lastKnownArea;
        private int _lastKnownLevel;
        private bool _showingSaveNotification;
        private float _saveNotificationTimer;

        // Auto-save notification
        public bool ShowingSaveNotification => _showingSaveNotification;
        public string SaveNotificationText => "Auto-Saving...";

        public AutoSaveManager(SaveSystem saveSystem)
        {
            _saveSystem = saveSystem;
            _timeSinceLastSave = 0f;
            _lastKnownArea = -1;
            _lastKnownLevel = -1;
            _showingSaveNotification = false;
            _saveNotificationTimer = 0f;
        }

        /// <summary>
        /// Update auto-save manager and check triggers
        /// </summary>
        public void Update(GameTime gameTime, Player player, GameProgress gameState)
        {
            if (player == null || gameState == null)
                return;

            float deltaTime = (float)gameTime.ElapsedGameTime.TotalSeconds;

            // Update save notification timer
            if (_showingSaveNotification)
            {
                _saveNotificationTimer += deltaTime;
                if (_saveNotificationTimer >= 2.0f) // Show for 2 seconds
                {
                    _showingSaveNotification = false;
                    _saveNotificationTimer = 0f;
                }
            }

            // Update playtime
            gameState.TotalPlayTime += deltaTime;

            // Update time-based auto-save timer
            _timeSinceLastSave += deltaTime;

            // Check for area transition
            if (_lastKnownArea != -1 && _lastKnownArea != player.CurrentArea)
            {
                TriggerAutoSave(player, gameState, "Area Transition");
            }
            _lastKnownArea = player.CurrentArea;

            // Check for level up
            if (_lastKnownLevel != -1 && _lastKnownLevel != player.Level)
            {
                TriggerAutoSave(player, gameState, "Level Up");
            }
            _lastKnownLevel = player.Level;

            // Check for time-based auto-save
            if (_timeSinceLastSave >= TIME_BETWEEN_SAVES)
            {
                TriggerAutoSave(player, gameState, "Periodic Save");
            }
        }

        /// <summary>
        /// Trigger auto-save when boss is defeated
        /// </summary>
        public void OnBossDefeated(Player player, GameProgress gameState, int bossId)
        {
            if (player == null || gameState == null)
                return;

            gameState.DefeatBoss(bossId);
            TriggerAutoSave(player, gameState, $"Boss {bossId} Defeated");
        }

        /// <summary>
        /// Trigger auto-save when entering a town
        /// </summary>
        public void OnTownEntered(Player player, GameProgress gameState, int townId)
        {
            if (player == null || gameState == null)
                return;

            gameState.VisitTown(townId);
            TriggerAutoSave(player, gameState, $"Town {townId} Entered");
        }

        /// <summary>
        /// Trigger auto-save when area is unlocked
        /// </summary>
        public void OnAreaUnlocked(Player player, GameProgress gameState, int areaId)
        {
            if (player == null || gameState == null)
                return;

            gameState.UnlockArea(areaId);
            TriggerAutoSave(player, gameState, $"Area {areaId} Unlocked");
        }

        /// <summary>
        /// Manually trigger an auto-save
        /// </summary>
        public bool TriggerAutoSave(Player player, GameProgress gameState, string reason = "Manual")
        {
            if (player == null || gameState == null)
                return false;

            // Create save data
            SaveData saveData = new SaveData
            {
                SlotNumber = AUTO_SAVE_SLOT,
                SaveTime = System.DateTime.Now,
                PlayTime = gameState.TotalPlayTime,
                Player = player.ToPlayerData(),
                Progress = gameState.ToProgressData()
            };

            // Perform save
            bool success = _saveSystem.SaveGame(AUTO_SAVE_SLOT, saveData);

            if (success)
            {
                // Reset timer
                _timeSinceLastSave = 0f;

                // Show notification
                _showingSaveNotification = true;
                _saveNotificationTimer = 0f;

                // Log save (for debugging)
                System.Console.WriteLine($"[AutoSave] Saved to slot {AUTO_SAVE_SLOT} - Reason: {reason}");
            }
            else
            {
                System.Console.WriteLine($"[AutoSave] Failed to save - Reason: {reason}");
            }

            return success;
        }

        /// <summary>
        /// Reset the auto-save timer (useful when loading a game)
        /// </summary>
        public void ResetTimer()
        {
            _timeSinceLastSave = 0f;
        }

        /// <summary>
        /// Initialize tracking for a new game or loaded game
        /// </summary>
        public void Initialize(Player player)
        {
            if (player != null)
            {
                _lastKnownArea = player.CurrentArea;
                _lastKnownLevel = player.Level;
            }
            _timeSinceLastSave = 0f;
        }
    }
}
