using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Audio;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Interface for talking to NPCs using the DialogueSystem
    /// </summary>
    public class NPCDialogueInterface
    {
        private DialogueManager _dialogueManager;
        private NPC _currentNPC;
        private bool _isActive;
        private NPCSpriteRenderer _spriteRenderer;

        // Audio (optional)
        public SoundManager SoundManager
        {
            get => _dialogueManager.SoundManager;
            set => _dialogueManager.SoundManager = value;
        }

        public NPCDialogueInterface(Microsoft.Xna.Framework.Graphics.GraphicsDevice graphicsDevice)
        {
            _dialogueManager = new DialogueManager();
            _spriteRenderer = new NPCSpriteRenderer(graphicsDevice);
            _isActive = false;
        }

        /// <summary>
        /// Start conversation with an NPC
        /// </summary>
        public void StartConversation(NPC npc, Systems.Player player = null)
        {
            _currentNPC = npc;
            _isActive = true;

            // Start the dialogue (with dynamic support)
            Dialogue dialogue = npc.GetDialogue(player);
            _dialogueManager.StartDialogue(dialogue);
        }

        /// <summary>
        /// Update the dialogue system
        /// </summary>
        public void Update(float deltaTime)
        {
            if (!_isActive)
                return;

            _dialogueManager.Update(deltaTime);
            _spriteRenderer.Update(deltaTime);
        }

        /// <summary>
        /// Advance to next line of dialogue
        /// Returns false when conversation is complete
        /// </summary>
        public bool AdvanceDialogue()
        {
            if (!_isActive)
                return false;

            bool hasMore = _dialogueManager.AdvanceDialogue();

            if (!hasMore)
            {
                // Conversation complete
                _isActive = false;
            }

            return hasMore;
        }

        /// <summary>
        /// Draw the NPC dialogue interface
        /// </summary>
        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            if (!_isActive || _currentNPC == null)
                return;

            // Determine emotion from current dialogue
            NPCEmotion emotion = DetermineEmotion();

            // Draw NPC sprite with animation and emotion
            _spriteRenderer.DrawNPC(spriteBatch, _currentNPC,
                new Vector2(screenWidth / 2, 200), emotion);

            // Draw dialogue box
            _dialogueManager.Draw(spriteBatch, font, screenWidth, screenHeight);
        }

        /// <summary>
        /// Determine NPC emotion based on dialogue content
        /// </summary>
        private NPCEmotion DetermineEmotion()
        {
            if (_dialogueManager.CurrentDialogue == null)
                return NPCEmotion.Neutral;

            string currentLine = _dialogueManager.CurrentDialogue.GetCurrentLine().ToLower();

            // Check for emotion keywords
            if (currentLine.Contains("!") || currentLine.Contains("great") || currentLine.Contains("wonderful") ||
                currentLine.Contains("excellent") || currentLine.Contains("happy"))
            {
                return NPCEmotion.Happy;
            }
            else if (currentLine.Contains("danger") || currentLine.Contains("careful") || currentLine.Contains("wounded") ||
                     currentLine.Contains("worried") || currentLine.Contains("afraid"))
            {
                return NPCEmotion.Worried;
            }
            else if (currentLine.Contains("angry") || currentLine.Contains("curse") || currentLine.Contains("damn"))
            {
                return NPCEmotion.Angry;
            }
            else if (currentLine.Contains("ancient") || currentLine.Contains("mysterious") || currentLine.Contains("secret") ||
                     currentLine.Contains("quest") || currentLine.Contains("artifact"))
            {
                return NPCEmotion.Mysterious;
            }
            else if (currentLine.Contains("tired") || currentLine.Contains("weary") || currentLine.Contains("barely"))
            {
                return NPCEmotion.Tired;
            }

            // Role-based defaults
            if (_currentNPC.Role == "QuestGiver")
                return NPCEmotion.Mysterious;

            return NPCEmotion.Neutral;
        }

        public bool IsActive => _isActive;
        public bool IsComplete => !_isActive;
        public NPC CurrentNPC => _currentNPC;
    }
}
