using System.Collections.Generic;
using ZeliardModern.Systems;

namespace ZeliardModern.Core
{
    public enum GameScreen
    {
        OpeningCutscene,
        MainMenu,
        Playing,
        Town,
        Shop,
        Sage,
        NPCDialogue,
        Paused,
        GameOver
    }

    public class GameState
    {
        public Player Player { get; set; }
        public GameScreen CurrentScreen { get; set; }
        public List<Enemy> ActiveEnemies { get; set; }
        public int CurrentArea { get; set; } // 1-8 for the different caverns
        public string CurrentLocation { get; set; }

        public GameState()
        {
            Player = new Player();
            CurrentScreen = GameScreen.MainMenu;
            ActiveEnemies = new List<Enemy>();
            CurrentArea = 1;
            CurrentLocation = "Muralla";
        }

        public void StartNewGame()
        {
            Player = new Player();
            CurrentScreen = GameScreen.Playing;
            CurrentArea = 1;
            CurrentLocation = "Muralla";
            ActiveEnemies.Clear();
        }

        public void EnterTown(string townName)
        {
            CurrentLocation = townName;
            CurrentScreen = GameScreen.Town;
            ActiveEnemies.Clear();
        }

        public void EnterCavern(int area)
        {
            CurrentArea = area;
            CurrentScreen = GameScreen.Playing;
        }

        public void VisitSage()
        {
            CurrentScreen = GameScreen.Sage;
        }

        public void EnterShop()
        {
            CurrentScreen = GameScreen.Shop;
        }

        public void GameOver()
        {
            CurrentScreen = GameScreen.GameOver;
        }
    }
}
