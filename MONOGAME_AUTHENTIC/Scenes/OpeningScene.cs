using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardAuthentic.Core;
using ZeliardAuthentic.Input;

namespace ZeliardAuthentic.Scenes
{
    /// <summary>
    /// Opening cinematic — extracted from zelres1/chunk_00.asm.
    ///
    /// Assembly flow (chunk_00.bin at CS:0x6000):
    ///   0x0000: Init, load background images from SAR chunks
    ///   0x003D: Set palette 4 (opening scene palette)
    ///   0x00BC: call 0x35C = text scroll routine (data at 0x6FF0)
    ///   0x0155: Image slideshow loop (list at 0x911E)
    ///   0x017F: call 0x2D5 = Jashiin's speech (data at 0x9096)
    ///   0x029F: Animated fade (shrinking rectangle loop, 100 iterations)
    ///   0x03E9: Skip target → clear screen → title at 0x0410
    ///
    /// Text format: 0x0D = newline, 0xFF = page break/end
    /// Skip check: [cs:0xff29] == 0x0D (ENTER key scan code)
    ///
    /// Resource files referenced (Sharp X1 names → SAR chunk IDs):
    ///   nec.grp(0x17), hou.grp(0x12), dmaou.grp(0x0F) — backgrounds
    ///   hime.grp(0x10) — princess, isi.grp(0x13) — crystals
    ///   oui.grp(0x1A) — king, sei.grp(0x1C) — spirit
    ///   yuu1-4.grp(0x22-25) — hero scenes
    ///   zopn.msd(0x28) — opening music
    /// </summary>
    public class OpeningScene : IGameStateHandler
    {
        // Story text extracted from zelres1/chunk_00.bin at file offset 0x0FF3
        // Original uses 0x0D for newline, 0xFF as page separator
        private static readonly string[] StoryPages = new string[]
        {
            // Page 1: The demon descends
            "           Two thousand years,\n" +
            "from the dark reaches of another galaxy,\n" +
            "        a demon with not a shred\n" +
            "      of compassion for humankind,\n" +
            "         descended upon earth.\n" +
            "\n" +
            "          He defiled the land,\n" +
            "  sending vile creatures to live in it,\n" +
            "   and thus became ruler of the world.",

            // Page 2: The King fights back
            "         The King of Felishika,\n" +
            "     appalled by what had happened,\n" +
            "          prayed to the Spirit\n" +
            "      of the Holy Land of Zeliard\n" +
            "    for help in defeating this monster.\n" +
            "\n" +
            "    With the help of the holy crystals\n" +
            "       called Tears of Esmesanti,\n" +
            "    the King managed to wrest power\n" +
            "    from the fiend and seal him deep\n" +
            "     within the bowels of the earth.",

            // Page 3: Peace restored
            "           And once again,\n" +
            " the light of peace came to shine upon\n" +
            "              the earth.\n" +
            "\n" +
            "However, it is written in\n" +
            "       the Sixth Book of Esmesanti:\n" +
            "                   The Age of Darkness.",

            // Page 4: Jashiin's warning (from 0x3096 with control codes stripped)
            "Beware, for I shall wake\n" +
            "from my sleep of 2,000 years\n" +
            "and once again reign over the world.",

            // Page 5: The quest begins
            "               At last,\n" +
            "     the door of destiny was opened.\n" +
            "        The labyrinths are deep,\n" +
            "          and the way is long.\n" +
            "     Will Duke Garland be successful\n" +
            "   in dethroning the Emperor of Chaos?",

            // Page 6: Title card
            "          Fantasy Action Game\n" +
            "\n" +
            "               ZELIARD",
        };

        private InputManager _input;
        private SceneTransition _transition;
        private Texture2D _pixel;

        private int _currentPage;
        private float _textScrollY;
        private float _scrollSpeed;
        private float _pageTimer;
        private float _pageDisplayTime;

        public OpeningScene(InputManager input, GraphicsDevice graphicsDevice)
        {
            _input = input;
            _transition = new SceneTransition(graphicsDevice);
            _pixel = new Texture2D(graphicsDevice, 1, 1);
            _pixel.SetData(new[] { Color.White });

            // DOS scroll speed: function at 0x35C scrolls 10 steps with 0x1C (28) tick delays
            // At 18.2 FPS, each step ≈ 1.54 seconds, full scroll ≈ 15 seconds
            _scrollSpeed = 18f;
            _pageDisplayTime = 12f;
        }

        public void Enter(GameStateManager manager)
        {
            _currentPage = 0;
            _textScrollY = DOSScreen.HEIGHT;
            _pageTimer = 0f;
            _transition.FadeIn(1.0f);
        }

        public void Exit(GameStateManager manager)
        {
        }

        public void Update(GameTime gameTime, GameStateManager manager)
        {
            float dt = (float)gameTime.ElapsedGameTime.TotalSeconds;
            _transition.Update(gameTime);

            // ENTER skips to next page — matches DOS check at 0x03B7: cmp [cs:0xff29],0x0D
            if (_input.IsPressed(GameAction.Inventory))
            {
                AdvancePage(manager);
                return;
            }

            _textScrollY -= _scrollSpeed * dt;
            _pageTimer += dt;

            if (_pageTimer >= _pageDisplayTime)
            {
                AdvancePage(manager);
            }
        }

        public void Draw(SpriteBatch spriteBatch, GameStateManager manager)
        {
            // Background: dark blue (matching DOS opening scene palette)
            // TODO: Replace with actual background images from SAR chunks
            // (nec.grp, dmaou.grp, hime.grp, etc.)
            Color bgColor = (_currentPage == 3)
                ? DOSPalette.MCGA[9]   // Dark red for Jashiin's speech
                : DOSPalette.MCGA[1];  // Dark blue for story pages

            spriteBatch.Draw(_pixel,
                new Rectangle(0, 0, DOSScreen.WIDTH, DOSScreen.HEIGHT),
                bgColor);

            // Draw story text using simple pixel font (colored rectangles per character)
            if (_currentPage < StoryPages.Length)
            {
                DrawText(spriteBatch, StoryPages[_currentPage], 8, (int)_textScrollY);
            }

            _transition.Draw(spriteBatch, DOSScreen.WIDTH, DOSScreen.HEIGHT);
        }

        private void AdvancePage(GameStateManager manager)
        {
            _currentPage++;
            if (_currentPage >= StoryPages.Length)
            {
                // Opening complete → title screen (matches jmp 0x410 at 0x03E9)
                manager.TransitionTo(GameState.Title);
                return;
            }
            _textScrollY = DOSScreen.HEIGHT;
            _pageTimer = 0f;
        }

        /// <summary>
        /// Draw text as colored pixel blocks until we have proper font extraction.
        /// Each character = 6x8 pixel block. Matches DOS text rendering dimensions.
        /// </summary>
        private void DrawText(SpriteBatch spriteBatch, string text, int startX, int startY)
        {
            int x = startX;
            int y = startY;
            int charWidth = 6;
            int charHeight = 8;
            int lineHeight = 10;

            Color textColor = DOSPalette.MCGA[26]; // White
            Color shadowColor = DOSPalette.MCGA[0]; // Black

            foreach (char c in text)
            {
                if (c == '\n')
                {
                    x = startX;
                    y += lineHeight;
                    continue;
                }

                if (c == ' ')
                {
                    x += charWidth;
                    continue;
                }

                // Only draw if on screen
                if (y > -charHeight && y < DOSScreen.HEIGHT)
                {
                    // Shadow
                    spriteBatch.Draw(_pixel,
                        new Rectangle(x + 1, y + 1, charWidth - 1, charHeight - 1),
                        shadowColor);
                    // Character
                    spriteBatch.Draw(_pixel,
                        new Rectangle(x, y, charWidth - 1, charHeight - 1),
                        textColor);
                }

                x += charWidth;
            }
        }
    }
}
