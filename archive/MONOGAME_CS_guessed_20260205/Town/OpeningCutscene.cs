using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Opening cutscene system - displays the game's story intro
    /// Based on original Zeliard "opdemo.bin" sequence
    /// </summary>
    public class OpeningCutscene
    {
        private List<CutscenePanel> _panels;
        private int _currentPanelIndex;
        private float _panelTimer;
        private bool _isComplete;
        private bool _skipped;
        private Texture2D _pixelTexture;
        private float _fadeAlpha;
        private bool _fadingOut;

        public bool IsComplete => _isComplete;
        public bool WasSkipped => _skipped;

        public OpeningCutscene(GraphicsDevice graphicsDevice)
        {
            _pixelTexture = new Texture2D(graphicsDevice, 1, 1);
            _pixelTexture.SetData(new[] { Color.White });
            _currentPanelIndex = 0;
            _panelTimer = 0f;
            _isComplete = false;
            _skipped = false;
            _fadeAlpha = 0f;
            _fadingOut = false;

            InitializePanels();
        }

        private void InitializePanels()
        {
            _panels = new List<CutscenePanel>
            {
                // Panel 1: Title
                new CutscenePanel
                {
                    Title = "The Legend of Zeliard",
                    Lines = new List<string>(),
                    Duration = 3.0f,
                    BackgroundColor = Color.Black
                },

                // Panel 2: Ancient History
                new CutscenePanel
                {
                    Title = "",
                    Lines = new List<string>
                    {
                        "Two thousand years ago, an ancient evil named",
                        "Jashiin came from the dark depths of another",
                        "galaxy and invaded the peaceful kingdom of Zeliard.",
                        "",
                        "The people fought bravely and, with the help of",
                        "the sacred crystals called the Tears of Esmesanti,",
                        "they managed to seal the demon away."
                    },
                    Duration = 8.0f,
                    BackgroundColor = new Color(10, 10, 30)
                },

                // Panel 3: The Warning
                new CutscenePanel
                {
                    Title = "",
                    Lines = new List<string>
                    {
                        "But evil never truly dies..."
                    },
                    Duration = 3.0f,
                    BackgroundColor = new Color(20, 0, 0)
                },

                // Panel 4: The Storm
                new CutscenePanel
                {
                    Title = "",
                    Lines = new List<string>
                    {
                        "On the seventh day of a terrible thunderstorm,",
                        "Princess Felicia la Felishika stood on the",
                        "royal palace balcony and complained about",
                        "the endless rain.",
                        "",
                        "Suddenly, the raindrops transformed",
                        "into grains of sand."
                    },
                    Duration = 7.0f,
                    BackgroundColor = new Color(40, 40, 50)
                },

                // Panel 5: Jashiin Awakens
                new CutscenePanel
                {
                    Title = "JASHIIN HAD AWAKENED!",
                    Lines = new List<string>(),
                    Duration = 3.0f,
                    BackgroundColor = new Color(60, 0, 0)
                },

                // Panel 6: The Curse
                new CutscenePanel
                {
                    Title = "",
                    Lines = new List<string>
                    {
                        "For 115 days, a cursed sand rain devastated",
                        "the kingdom, turning the once-fertile land",
                        "into a barren desert.",
                        "",
                        "Princess Felicia was transformed into cold stone",
                        "by the demon's wrath.",
                        "",
                        "The kingdom of Zeliard faced its darkest hour..."
                    },
                    Duration = 9.0f,
                    BackgroundColor = new Color(50, 40, 20)
                },

                // Panel 7: The Hero
                new CutscenePanel
                {
                    Title = "",
                    Lines = new List<string>
                    {
                        "Only one hero dares to challenge this ancient evil:",
                        "",
                        "Duke Garland,",
                        "the bravest warrior in the land.",
                        "",
                        "To break the curse and restore the princess,",
                        "he must venture into eight treacherous caverns",
                        "and collect the Nine Tears of Esmesanti."
                    },
                    Duration = 10.0f,
                    BackgroundColor = new Color(30, 30, 60)
                },

                // Panel 8: Quest Begins
                new CutscenePanel
                {
                    Title = "Your quest begins now...",
                    Lines = new List<string>(),
                    Duration = 4.0f,
                    BackgroundColor = Color.Black
                }
            };
        }

        public void Update(float deltaTime)
        {
            if (_isComplete)
                return;

            _panelTimer += deltaTime;

            // Handle fade in/out
            if (!_fadingOut && _panelTimer < 0.5f)
            {
                // Fade in
                _fadeAlpha = _panelTimer / 0.5f;
            }
            else if (_panelTimer >= _panels[_currentPanelIndex].Duration - 0.5f)
            {
                // Fade out
                _fadingOut = true;
                float fadeTime = _panels[_currentPanelIndex].Duration - _panelTimer;
                _fadeAlpha = fadeTime / 0.5f;

                if (_panelTimer >= _panels[_currentPanelIndex].Duration)
                {
                    // Move to next panel
                    _currentPanelIndex++;
                    _panelTimer = 0f;
                    _fadingOut = false;
                    _fadeAlpha = 0f;

                    if (_currentPanelIndex >= _panels.Count)
                    {
                        _isComplete = true;
                    }
                }
            }
            else
            {
                _fadeAlpha = 1.0f;
            }
        }

        public void Skip()
        {
            _skipped = true;
            _isComplete = true;
        }

        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            if (_isComplete || _currentPanelIndex >= _panels.Count)
                return;

            var panel = _panels[_currentPanelIndex];

            // Draw background
            spriteBatch.Draw(_pixelTexture,
                new Rectangle(0, 0, screenWidth, screenHeight),
                panel.BackgroundColor);

            // Draw title if present
            if (!string.IsNullOrEmpty(panel.Title))
            {
                Vector2 titleSize = font.MeasureString(panel.Title);
                Vector2 titlePos = new Vector2(
                    (screenWidth - titleSize.X) / 2,
                    screenHeight / 3);

                // Draw title shadow
                spriteBatch.DrawString(font, panel.Title,
                    titlePos + new Vector2(2, 2),
                    Color.Black * _fadeAlpha);

                // Draw title
                spriteBatch.DrawString(font, panel.Title,
                    titlePos,
                    Color.Gold * _fadeAlpha);
            }

            // Draw text lines
            float startY = screenHeight / 2 - (panel.Lines.Count * 25);
            for (int i = 0; i < panel.Lines.Count; i++)
            {
                string line = panel.Lines[i];
                if (string.IsNullOrEmpty(line))
                {
                    startY += 25;
                    continue;
                }

                Vector2 lineSize = font.MeasureString(line);
                Vector2 linePos = new Vector2(
                    (screenWidth - lineSize.X) / 2,
                    startY + i * 25);

                // Draw text shadow
                spriteBatch.DrawString(font, line,
                    linePos + new Vector2(1, 1),
                    Color.Black * _fadeAlpha);

                // Draw text
                spriteBatch.DrawString(font, line,
                    linePos,
                    Color.White * _fadeAlpha);
            }

            // Draw skip prompt at bottom
            string skipText = "Press SPACE to skip...";
            Vector2 skipSize = font.MeasureString(skipText);
            Vector2 skipPos = new Vector2(
                screenWidth - skipSize.X - 20,
                screenHeight - 40);

            spriteBatch.DrawString(font, skipText,
                skipPos,
                Color.Gray * 0.5f * _fadeAlpha,
                0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
        }

        public void Reset()
        {
            _currentPanelIndex = 0;
            _panelTimer = 0f;
            _isComplete = false;
            _skipped = false;
            _fadeAlpha = 0f;
            _fadingOut = false;
        }
    }

    /// <summary>
    /// A single panel/slide in the cutscene
    /// </summary>
    public class CutscenePanel
    {
        public string Title { get; set; }
        public List<string> Lines { get; set; }
        public float Duration { get; set; }
        public Color BackgroundColor { get; set; }
    }
}
