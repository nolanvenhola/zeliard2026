using System;
using System.IO;
using System.Text.Json;
using ZeliardModern.Data;

namespace ZeliardModern.Systems
{
    /// <summary>
    /// Manages saving and loading game state
    /// </summary>
    public class SaveSystem
    {
        private readonly string _saveDirectory;
        private readonly JsonSerializerOptions _jsonOptions;

        public SaveSystem()
        {
            // Save to AppData/Roaming/ZeliardModern/Saves
            string appData = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData);
            _saveDirectory = Path.Combine(appData, "ZeliardModern", "Saves");

            // Ensure directory exists
            if (!Directory.Exists(_saveDirectory))
            {
                Directory.CreateDirectory(_saveDirectory);
            }

            // JSON options for human-readable saves
            _jsonOptions = new JsonSerializerOptions
            {
                WriteIndented = true
            };
        }

        /// <summary>
        /// Get the file path for a save slot
        /// </summary>
        private string GetSaveFilePath(int slot)
        {
            return Path.Combine(_saveDirectory, $"save_slot_{slot}.json");
        }

        /// <summary>
        /// Get the backup file path for a save slot
        /// </summary>
        private string GetBackupFilePath(int slot)
        {
            return Path.Combine(_saveDirectory, $"save_slot_{slot}.backup.json");
        }

        /// <summary>
        /// Save game to specified slot
        /// </summary>
        public bool SaveGame(int slot, SaveData saveData)
        {
            try
            {
                string filePath = GetSaveFilePath(slot);
                string backupPath = GetBackupFilePath(slot);

                // Create backup of existing save if it exists
                if (File.Exists(filePath))
                {
                    File.Copy(filePath, backupPath, true);
                }

                // Update save metadata
                saveData.SlotNumber = slot;
                saveData.SaveTime = DateTime.Now;

                // Serialize to JSON
                string json = JsonSerializer.Serialize(saveData, _jsonOptions);

                // Write to file
                File.WriteAllText(filePath, json);

                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error saving game to slot {slot}: {ex.Message}");
                return false;
            }
        }

        /// <summary>
        /// Load game from specified slot
        /// </summary>
        public SaveData LoadGame(int slot)
        {
            try
            {
                string filePath = GetSaveFilePath(slot);

                if (!File.Exists(filePath))
                {
                    Console.WriteLine($"Save file not found: {filePath}");
                    return null;
                }

                // Read file
                string json = File.ReadAllText(filePath);

                // Deserialize
                SaveData saveData = JsonSerializer.Deserialize<SaveData>(json);

                // Validate save data
                if (saveData == null || saveData.Player == null || saveData.Progress == null)
                {
                    Console.WriteLine($"Invalid save data in slot {slot}");
                    return null;
                }

                return saveData;
            }
            catch (JsonException ex)
            {
                Console.WriteLine($"Corrupted save file in slot {slot}: {ex.Message}");

                // Try to restore from backup
                return TryRestoreFromBackup(slot);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error loading game from slot {slot}: {ex.Message}");
                return null;
            }
        }

        /// <summary>
        /// Try to restore save from backup
        /// </summary>
        private SaveData TryRestoreFromBackup(int slot)
        {
            try
            {
                string backupPath = GetBackupFilePath(slot);

                if (!File.Exists(backupPath))
                {
                    return null;
                }

                Console.WriteLine($"Attempting to restore from backup for slot {slot}");

                string json = File.ReadAllText(backupPath);
                SaveData saveData = JsonSerializer.Deserialize<SaveData>(json);

                if (saveData != null && saveData.Player != null && saveData.Progress != null)
                {
                    // Restore the main save file from backup
                    string filePath = GetSaveFilePath(slot);
                    File.Copy(backupPath, filePath, true);

                    Console.WriteLine($"Successfully restored save from backup for slot {slot}");
                    return saveData;
                }

                return null;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Failed to restore from backup for slot {slot}: {ex.Message}");
                return null;
            }
        }

        /// <summary>
        /// Delete save file for specified slot
        /// </summary>
        public bool DeleteSave(int slot)
        {
            try
            {
                string filePath = GetSaveFilePath(slot);
                string backupPath = GetBackupFilePath(slot);

                if (File.Exists(filePath))
                {
                    File.Delete(filePath);
                }

                if (File.Exists(backupPath))
                {
                    File.Delete(backupPath);
                }

                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error deleting save slot {slot}: {ex.Message}");
                return false;
            }
        }

        /// <summary>
        /// Check if save exists for specified slot
        /// </summary>
        public bool DoesSaveExist(int slot)
        {
            string filePath = GetSaveFilePath(slot);
            return File.Exists(filePath);
        }

        /// <summary>
        /// Get save metadata without loading full save
        /// </summary>
        public SaveInfo GetSaveInfo(int slot)
        {
            SaveInfo info = new SaveInfo
            {
                SlotNumber = slot,
                Exists = false
            };

            try
            {
                string filePath = GetSaveFilePath(slot);

                if (!File.Exists(filePath))
                {
                    return info;
                }

                // Read file
                string json = File.ReadAllText(filePath);

                // Deserialize
                SaveData saveData = JsonSerializer.Deserialize<SaveData>(json);

                if (saveData != null && saveData.Player != null)
                {
                    info.Exists = true;
                    info.SaveTime = saveData.SaveTime;
                    info.PlayTime = saveData.PlayTime;
                    info.PlayerLevel = saveData.Player.Level;
                    info.CurrentArea = saveData.Player.CurrentArea;
                }

                return info;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error getting save info for slot {slot}: {ex.Message}");
                return info;
            }
        }

        /// <summary>
        /// Get all save infos (for displaying in menu)
        /// </summary>
        public SaveInfo[] GetAllSaveInfos()
        {
            SaveInfo[] infos = new SaveInfo[4]; // Slots 0-3 (0 is auto-save)

            for (int i = 0; i < 4; i++)
            {
                infos[i] = GetSaveInfo(i);
            }

            return infos;
        }

        /// <summary>
        /// Get the save directory path
        /// </summary>
        public string GetSaveDirectory()
        {
            return _saveDirectory;
        }
    }
}
