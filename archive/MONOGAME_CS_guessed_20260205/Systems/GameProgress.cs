using System.Collections.Generic;
using System.Linq;
using ZeliardModern.Data;

namespace ZeliardModern.Systems
{
    /// <summary>
    /// Tracks game progress (visited towns, defeated bosses, unlocked areas)
    /// </summary>
    public class GameProgress
    {
        // Game progress tracking
        public HashSet<int> VisitedTowns { get; private set; }
        public HashSet<int> DefeatedBosses { get; private set; }
        public HashSet<int> UnlockedAreas { get; private set; }

        // Playtime tracking
        public float TotalPlayTime { get; set; }

        public GameProgress()
        {
            VisitedTowns = new HashSet<int>();
            DefeatedBosses = new HashSet<int>();
            UnlockedAreas = new HashSet<int>();
            TotalPlayTime = 0f;

            // Start with area 1 unlocked
            UnlockedAreas.Add(1);
        }

        /// <summary>
        /// Mark a town as visited
        /// </summary>
        public void VisitTown(int townId)
        {
            VisitedTowns.Add(townId);
        }

        /// <summary>
        /// Mark a boss as defeated
        /// </summary>
        public void DefeatBoss(int bossId)
        {
            DefeatedBosses.Add(bossId);
        }

        /// <summary>
        /// Unlock a new area
        /// </summary>
        public void UnlockArea(int areaId)
        {
            UnlockedAreas.Add(areaId);
        }

        /// <summary>
        /// Check if a town has been visited
        /// </summary>
        public bool HasVisitedTown(int townId)
        {
            return VisitedTowns.Contains(townId);
        }

        /// <summary>
        /// Check if a boss has been defeated
        /// </summary>
        public bool HasDefeatedBoss(int bossId)
        {
            return DefeatedBosses.Contains(bossId);
        }

        /// <summary>
        /// Check if an area is unlocked
        /// </summary>
        public bool IsAreaUnlocked(int areaId)
        {
            return UnlockedAreas.Contains(areaId);
        }

        /// <summary>
        /// Export progress data to serializable format
        /// </summary>
        public ProgressData ToProgressData()
        {
            return new ProgressData
            {
                VisitedTowns = VisitedTowns.ToList(),
                DefeatedBosses = DefeatedBosses.ToList(),
                UnlockedAreas = UnlockedAreas.ToList()
            };
        }

        /// <summary>
        /// Import progress data from saved state
        /// </summary>
        public void FromProgressData(ProgressData data)
        {
            if (data == null)
                return;

            VisitedTowns = new HashSet<int>(data.VisitedTowns ?? new List<int>());
            DefeatedBosses = new HashSet<int>(data.DefeatedBosses ?? new List<int>());
            UnlockedAreas = new HashSet<int>(data.UnlockedAreas ?? new List<int>());

            // Ensure at least area 1 is unlocked
            if (UnlockedAreas.Count == 0)
            {
                UnlockedAreas.Add(1);
            }
        }

        /// <summary>
        /// Reset all progress (for new game)
        /// </summary>
        public void Reset()
        {
            VisitedTowns.Clear();
            DefeatedBosses.Clear();
            UnlockedAreas.Clear();
            UnlockedAreas.Add(1); // Start with area 1 unlocked
            TotalPlayTime = 0f;
        }
    }
}
