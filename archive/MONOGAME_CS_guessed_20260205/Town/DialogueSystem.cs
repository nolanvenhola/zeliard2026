using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;
using ZeliardModern.Audio;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Represents a dialogue conversation
    /// </summary>
    public class Dialogue
    {
        public string SpeakerName { get; set; }
        public List<string> Lines { get; set; }
        public int CurrentLineIndex { get; private set; }

        public Dialogue(string speakerName, params string[] lines)
        {
            SpeakerName = speakerName;
            Lines = new List<string>(lines);
            CurrentLineIndex = 0;
        }

        public string GetCurrentLine()
        {
            if (CurrentLineIndex < Lines.Count)
                return Lines[CurrentLineIndex];
            return string.Empty;
        }

        public bool Advance()
        {
            CurrentLineIndex++;
            return CurrentLineIndex < Lines.Count;
        }

        public void Reset()
        {
            CurrentLineIndex = 0;
        }

        public bool IsComplete => CurrentLineIndex >= Lines.Count;
    }

    /// <summary>
    /// Sage Indihar dialogue and leveling system
    /// </summary>
    public class SageDialogue
    {
        public static Dialogue GetLevelUpDialogue(Systems.Player player)
        {
            if (!player.CanLevelUp())
            {
                string message = player.GetSageMessage();
                return new Dialogue("Sage Indihar", message, "Return when you have gained more experience.");
            }

            return new Dialogue(
                "Sage Indihar",
                "I sense great power within you.",
                "Your spirit has grown stronger through battle.",
                "Let me channel the ancient magic to increase your power!",
                $"You are now Level {player.Level + 1}!"
            );
        }

        public static Dialogue GetWelcomeDialogue()
        {
            return new Dialogue(
                "Sage Indihar",
                "Welcome, brave warrior.",
                "I am Sage Indihar, keeper of ancient wisdom.",
                "Through my magic, I can help you grow stronger.",
                "Defeat monsters to gain experience, then return to me."
            );
        }
    }

    /// <summary>
    /// Manages dialogue display and progression
    /// </summary>
    public class DialogueManager
    {
        private Dialogue _currentDialogue;
        private bool _isActive;
        private float _textSpeed;
        private float _currentCharIndex;
        private string _displayedText;

        // Audio (optional)
        public SoundManager SoundManager { get; set; }

        public DialogueManager()
        {
            _textSpeed = 30f; // Characters per second
            _currentCharIndex = 0f;
        }

        public void StartDialogue(Dialogue dialogue)
        {
            _currentDialogue = dialogue;
            _currentDialogue.Reset();
            _isActive = true;
            _currentCharIndex = 0f;
            _displayedText = "";
        }

        public void Update(float deltaTime)
        {
            if (!_isActive || _currentDialogue == null)
                return;

            // Animate text appearance
            string fullText = _currentDialogue.GetCurrentLine();
            if (_currentCharIndex < fullText.Length)
            {
                _currentCharIndex += _textSpeed * deltaTime;
                int charCount = (int)_currentCharIndex;
                if (charCount > fullText.Length)
                    charCount = fullText.Length;

                _displayedText = fullText.Substring(0, charCount);
            }
            else
            {
                _displayedText = fullText;
            }
        }

        public bool AdvanceDialogue()
        {
            if (_currentDialogue == null)
                return false;

            // If text is still animating, show full text immediately
            string fullText = _currentDialogue.GetCurrentLine();
            if (_currentCharIndex < fullText.Length)
            {
                _currentCharIndex = fullText.Length;
                _displayedText = fullText;
                // Play advance sound for completing text
                SoundManager?.PlaySound(SoundEffects.DIALOGUE_ADVANCE);
                return true;
            }

            // Otherwise, advance to next line
            if (_currentDialogue.Advance())
            {
                _currentCharIndex = 0f;
                _displayedText = "";
                // Play advance sound for next line
                SoundManager?.PlaySound(SoundEffects.DIALOGUE_ADVANCE);
                return true;
            }
            else
            {
                // Dialogue complete - play close sound
                SoundManager?.PlaySound(SoundEffects.MENU_BACK);
                _isActive = false;
                return false;
            }
        }

        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            if (!_isActive || _currentDialogue == null)
                return;

            int boxWidth = screenWidth - 100;
            int boxHeight = 150;
            int boxX = 50;
            int boxY = screenHeight - boxHeight - 50;

            // Draw dialogue box
            DrawDialogueBox(spriteBatch, boxX, boxY, boxWidth, boxHeight);

            // Draw speaker name
            spriteBatch.DrawString(font, _currentDialogue.SpeakerName,
                new Vector2(boxX + 20, boxY + 10), Color.Yellow);

            // Draw dialogue text with word wrap
            string wrappedText = WrapText(_displayedText, boxWidth - 40, font);
            spriteBatch.DrawString(font, wrappedText,
                new Vector2(boxX + 20, boxY + 45), Color.White, 0f, Vector2.Zero, 0.9f, SpriteEffects.None, 0f);

            // Draw continue indicator if text is complete
            if (_currentCharIndex >= _currentDialogue.GetCurrentLine().Length)
            {
                string continueText = _currentDialogue.IsComplete ? "Press Enter to close" : "Press Enter to continue";
                spriteBatch.DrawString(font, continueText,
                    new Vector2(boxX + boxWidth - 220, boxY + boxHeight - 30),
                    Color.Gray, 0f, Vector2.Zero, 0.7f, SpriteEffects.None, 0f);
            }
        }

        private void DrawDialogueBox(SpriteBatch spriteBatch, int x, int y, int width, int height)
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

        private string WrapText(string text, int maxWidth, SpriteFont font)
        {
            string[] words = text.Split(' ');
            System.Text.StringBuilder result = new System.Text.StringBuilder();
            string currentLine = "";

            foreach (string word in words)
            {
                string testLine = currentLine + (currentLine.Length > 0 ? " " : "") + word;
                Vector2 size = font.MeasureString(testLine);

                if (size.X > maxWidth)
                {
                    result.AppendLine(currentLine);
                    currentLine = word;
                }
                else
                {
                    currentLine = testLine;
                }
            }

            if (currentLine.Length > 0)
                result.Append(currentLine);

            return result.ToString();
        }

        public bool IsActive => _isActive;
        public Dialogue CurrentDialogue => _currentDialogue;
    }
}
