using System;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Manages loading and saving .USR files in authentic DOS format.
    /// Based on assembly analysis from zelres2/chunk_17.asm (lines 799-832).
    /// </summary>
    public class SaveManager
    {
        /// <summary>
        /// File extension for Zeliard save files.
        /// DOS assembly constructs this as: [playername] + ".usr"
        /// </summary>
        public const string SAVE_EXTENSION = ".usr";

        /// <summary>
        /// Save file size in bytes (fixed).
        /// Assembly writes exactly 0x100 (256) bytes.
        /// </summary>
        public const int SAVE_FILE_SIZE = 256;

        /// <summary>
        /// Directory where save files are stored.
        /// Default: same directory as game executable (DOS behavior).
        /// </summary>
        public string SaveDirectory { get; set; }

        public SaveManager(string saveDirectory = null)
        {
            SaveDirectory = saveDirectory ?? Environment.CurrentDirectory;
        }

        /// <summary>
        /// Load a save file from disk.
        /// Mimics DOS file operations:
        /// - Open file (INT 21h, AH=3Dh)
        /// - Read 256 bytes (INT 21h, AH=3Fh)
        /// - Close file (INT 21h, AH=3Eh)
        /// </summary>
        /// <param name="playerName">Player name (base filename without extension)</param>
        /// <returns>Loaded save file, or null if not found</returns>
        public SaveFile? LoadGame(string playerName)
        {
            string filename = GetSaveFileName(playerName);
            string fullPath = Path.Combine(SaveDirectory, filename);

            if (!File.Exists(fullPath))
                return null;

            try
            {
                byte[] data = File.ReadAllBytes(fullPath);

                // Verify file size
                if (data.Length != SAVE_FILE_SIZE)
                {
                    throw new InvalidDataException(
                        $"Invalid save file size: {data.Length} bytes (expected {SAVE_FILE_SIZE})");
                }

                // Convert byte array to structure
                SaveFile save = ByteArrayToStructure(data);

                // Validate magic marker
                if (!save.IsValid())
                {
                    throw new InvalidDataException(
                        "Invalid save file: magic marker mismatch");
                }

                return save;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error loading save file '{filename}': {ex.Message}");
                return null;
            }
        }

        /// <summary>
        /// Save game to disk in DOS .USR format.
        /// Mimics assembly code from chunk_17.asm:
        /// - Construct filename with ".usr" extension (lines 799-813)
        /// - Create file (INT 21h, AH=3Ch)
        /// - Write 256 bytes (INT 21h, AH=40h, CX=0x100)
        /// - Close file (INT 21h, AH=3Eh)
        /// </summary>
        /// <param name="playerName">Player name (base filename, max 8 chars)</param>
        /// <param name="save">Save file data</param>
        /// <returns>True if saved successfully</returns>
        public bool SaveGame(string playerName, SaveFile save)
        {
            // DOS assembly limits player name to 8 characters (line 803: mov cx,0x8)
            if (playerName.Length > 8)
                playerName = playerName.Substring(0, 8);

            string filename = GetSaveFileName(playerName);
            string fullPath = Path.Combine(SaveDirectory, filename);

            try
            {
                // Convert structure to byte array
                byte[] data = StructureToByteArray(save);

                // Verify size
                if (data.Length != SAVE_FILE_SIZE)
                {
                    throw new InvalidOperationException(
                        $"Save data size mismatch: {data.Length} bytes (expected {SAVE_FILE_SIZE})");
                }

                // Create directory if it doesn't exist
                Directory.CreateDirectory(SaveDirectory);

                // Write file (atomic operation like DOS)
                File.WriteAllBytes(fullPath, data);

                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error saving game '{filename}': {ex.Message}");
                return false;
            }
        }

        /// <summary>
        /// Delete a save file.
        /// </summary>
        public bool DeleteSave(string playerName)
        {
            string filename = GetSaveFileName(playerName);
            string fullPath = Path.Combine(SaveDirectory, filename);

            try
            {
                if (File.Exists(fullPath))
                {
                    File.Delete(fullPath);
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error deleting save '{filename}': {ex.Message}");
                return false;
            }
        }

        /// <summary>
        /// Check if a save file exists for the given player name.
        /// </summary>
        public bool SaveExists(string playerName)
        {
            string filename = GetSaveFileName(playerName);
            string fullPath = Path.Combine(SaveDirectory, filename);
            return File.Exists(fullPath);
        }

        /// <summary>
        /// Get all save files in the save directory.
        /// </summary>
        /// <returns>Array of player names (without .usr extension)</returns>
        public string[] GetAllSaves()
        {
            if (!Directory.Exists(SaveDirectory))
                return Array.Empty<string>();

            string[] files = Directory.GetFiles(SaveDirectory, "*" + SAVE_EXTENSION);
            string[] playerNames = new string[files.Length];

            for (int i = 0; i < files.Length; i++)
            {
                string filename = Path.GetFileNameWithoutExtension(files[i]);
                playerNames[i] = filename;
            }

            return playerNames;
        }

        /// <summary>
        /// Construct filename from player name.
        /// Mimics assembly code at lines 868-892:
        /// - Copy up to 8 characters from player name
        /// - Append ".usr" extension
        /// </summary>
        private string GetSaveFileName(string playerName)
        {
            // Sanitize filename (DOS compatible)
            playerName = SanitizePlayerName(playerName);

            // DOS assembly: appends ".usr" (0x2E, 0x75, 0x73, 0x72)
            return playerName + SAVE_EXTENSION;
        }

        /// <summary>
        /// Sanitize player name to DOS 8.3 filename format.
        /// DOS allows: A-Z, 0-9, and limited special characters.
        /// </summary>
        private string SanitizePlayerName(string name)
        {
            if (string.IsNullOrEmpty(name))
                return "NONAME";

            StringBuilder sb = new StringBuilder();
            foreach (char c in name)
            {
                if (char.IsLetterOrDigit(c) || c == '_' || c == '-')
                {
                    sb.Append(char.ToUpper(c));
                }
            }

            string result = sb.ToString();
            if (result.Length == 0)
                return "NONAME";
            if (result.Length > 8)
                return result.Substring(0, 8);

            return result;
        }

        /// <summary>
        /// Convert structure to byte array.
        /// </summary>
        private byte[] StructureToByteArray(SaveFile save)
        {
            byte[] data = new byte[SAVE_FILE_SIZE];
            int offset = 0;

            // Copy each section
            Array.Copy(save.ProgressionFlags, 0, data, offset, 128);
            offset += 128;

            Array.Copy(save.PlayerState, 0, data, offset, 32);
            offset += 32;

            Array.Copy(save.Inventory, 0, data, offset, 32);
            offset += 32;

            Array.Copy(save.MagicMarker, 0, data, offset, 16);
            offset += 16;

            Array.Copy(save.ExtendedData, 0, data, offset, 48);

            return data;
        }

        /// <summary>
        /// Convert byte array to structure.
        /// </summary>
        private SaveFile ByteArrayToStructure(byte[] data)
        {
            SaveFile save = SaveFile.CreateNew();
            int offset = 0;

            // Copy each section
            Array.Copy(data, offset, save.ProgressionFlags, 0, 128);
            offset += 128;

            Array.Copy(data, offset, save.PlayerState, 0, 32);
            offset += 32;

            Array.Copy(data, offset, save.Inventory, 0, 32);
            offset += 32;

            Array.Copy(data, offset, save.MagicMarker, 0, 16);
            offset += 16;

            Array.Copy(data, offset, save.ExtendedData, 0, 48);

            return save;
        }

        /// <summary>
        /// Dump save file contents to console for debugging.
        /// Shows hex dump similar to xxd output.
        /// </summary>
        public void DumpSaveFile(string playerName)
        {
            SaveFile? save = LoadGame(playerName);
            if (save == null)
            {
                Console.WriteLine($"Save file not found: {playerName}");
                return;
            }

            SaveFile s = save.Value;
            byte[] data = StructureToByteArray(s);

            Console.WriteLine($"=== Save File: {playerName}.usr ===");
            Console.WriteLine($"Valid: {s.IsValid()}");
            Console.WriteLine($"Progression: {s.GetProgressionPercentage():F1}%");
            Console.WriteLine($"New Game: {SaveFileHelpers.IsNewGame(s)}");
            Console.WriteLine($"Late Game: {SaveFileHelpers.IsLateGame(s)}");
            Console.WriteLine();

            // Hex dump
            for (int i = 0; i < data.Length; i += 16)
            {
                Console.Write($"{i:X8}  ");

                // Hex bytes
                for (int j = 0; j < 16; j++)
                {
                    if (i + j < data.Length)
                        Console.Write($"{data[i + j]:X2} ");
                    else
                        Console.Write("   ");
                }

                Console.Write(" ");

                // ASCII
                for (int j = 0; j < 16 && i + j < data.Length; j++)
                {
                    byte b = data[i + j];
                    char c = (b >= 32 && b < 127) ? (char)b : '.';
                    Console.Write(c);
                }

                Console.WriteLine();
            }
        }
    }
}
