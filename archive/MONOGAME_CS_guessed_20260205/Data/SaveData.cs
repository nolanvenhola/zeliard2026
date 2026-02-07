using System;
using System.Collections.Generic;

namespace ZeliardModern.Data
{
    /// <summary>
    /// Main save data container with metadata
    /// </summary>
    public class SaveData
    {
        public int SlotNumber { get; set; }
        public DateTime SaveTime { get; set; }
        public float PlayTime { get; set; }
        public PlayerData Player { get; set; }
        public ProgressData Progress { get; set; }

        public SaveData()
        {
            Player = new PlayerData();
            Progress = new ProgressData();
        }
    }

    /// <summary>
    /// Player statistics and state
    /// </summary>
    public class PlayerData
    {
        public int Level { get; set; }
        public int Experience { get; set; }
        public int Health { get; set; }
        public int MaxHealth { get; set; }
        public int Gold { get; set; }
        public float X { get; set; }
        public float Y { get; set; }
        public int CurrentArea { get; set; }
        public EquipmentData Equipment { get; set; }

        public PlayerData()
        {
            Equipment = new EquipmentData();
        }
    }

    /// <summary>
    /// Equipped items
    /// </summary>
    public class EquipmentData
    {
        public string SwordType { get; set; }
        public string ShieldType { get; set; }
        public string ArmorType { get; set; }

        public EquipmentData()
        {
            SwordType = "None";
            ShieldType = "None";
            ArmorType = "None";
        }
    }

    /// <summary>
    /// Game progress tracking
    /// </summary>
    public class ProgressData
    {
        public List<int> VisitedTowns { get; set; }
        public List<int> DefeatedBosses { get; set; }
        public List<int> UnlockedAreas { get; set; }

        public ProgressData()
        {
            VisitedTowns = new List<int>();
            DefeatedBosses = new List<int>();
            UnlockedAreas = new List<int>();
        }
    }

    /// <summary>
    /// Save metadata for display in menus (without loading full save)
    /// </summary>
    public class SaveInfo
    {
        public int SlotNumber { get; set; }
        public bool Exists { get; set; }
        public DateTime SaveTime { get; set; }
        public float PlayTime { get; set; }
        public int PlayerLevel { get; set; }
        public int CurrentArea { get; set; }
    }
}
