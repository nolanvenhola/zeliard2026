using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using ZeliardModern.Systems;
using ZeliardModern.Audio;

namespace ZeliardModern.Town
{
    /// <summary>
    /// Sage Indihar interface for leveling up
    /// </summary>
    public class SageInterface
    {
        private Player _player;
        private DialogueManager _dialogueManager;
        private SageState _state;
        private bool _leveledUp;

        // Audio (optional)
        public SoundManager SoundManager
        {
            get => _dialogueManager.SoundManager;
            set => _dialogueManager.SoundManager = value;
        }

        public enum SageState
        {
            Welcome,        // Initial greeting
            CheckExperience, // Checking if player can level up
            LevelingUp,     // Actually leveling up (with animation)
            Complete        // Done, can exit
        }

        public SageInterface()
        {
            _dialogueManager = new DialogueManager();
            _state = SageState.Welcome;
        }

        public void Enter(Player player)
        {
            _player = player;
            _state = SageState.Welcome;
            _leveledUp = false;

            // Start with welcome or check dialogue
            if (player.Level == 0 && player.Experience < 50)
            {
                _dialogueManager.StartDialogue(SageDialogue.GetWelcomeDialogue());
            }
            else
            {
                CheckExperience();
            }
        }

        private void CheckExperience()
        {
            _state = SageState.CheckExperience;
            var dialogue = SageDialogue.GetLevelUpDialogue(_player);
            _dialogueManager.StartDialogue(dialogue);
        }

        public void Update(float deltaTime)
        {
            _dialogueManager.Update(deltaTime);
        }

        public bool AdvanceDialogue()
        {
            bool hasMore = _dialogueManager.AdvanceDialogue();

            // If dialogue is complete and player can level up, do it
            if (!hasMore && _state == SageState.CheckExperience && _player.CanLevelUp() && !_leveledUp)
            {
                PerformLevelUp();
                return true;
            }

            return hasMore;
        }

        private void PerformLevelUp()
        {
            int oldLevel = _player.Level;
            _player.LevelUp();
            _leveledUp = true;
            _state = SageState.Complete;

            // Show completion message
            var completeDialogue = new Dialogue(
                "Sage Indihar",
                $"Your power has increased to Level {_player.Level}!",
                $"Maximum health is now {_player.MaxHealth}.",
                $"Your attacks deal {_player.GetAttackDamage()} damage.",
                "May your strength serve you well in battle!"
            );

            _dialogueManager.StartDialogue(completeDialogue);
        }

        public void Draw(SpriteBatch spriteBatch, SpriteFont font, int screenWidth, int screenHeight)
        {
            // Draw background
            DrawSageBackground(spriteBatch, screenWidth, screenHeight);

            // Draw sage sprite (would use actual sprite in full version)
            DrawSageSprite(spriteBatch, screenWidth / 2, 200);

            // Draw player stats
            DrawPlayerStats(spriteBatch, font, 50, 50);

            // Draw dialogue
            _dialogueManager.Draw(spriteBatch, font, screenWidth, screenHeight);

            // Draw level-up effect if leveling up
            if (_leveledUp && _state == SageState.LevelingUp)
            {
                DrawLevelUpEffect(spriteBatch, screenWidth, screenHeight);
            }
        }

        private void DrawSageBackground(SpriteBatch spriteBatch, int width, int height)
        {
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            // Dark mystic background
            spriteBatch.Draw(pixelTexture,
                new Rectangle(0, 0, width, height),
                new Color(20, 10, 40));
        }

        private void DrawSageSprite(SpriteBatch spriteBatch, int x, int y)
        {
            // Placeholder - would draw actual sage sprite
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            // Draw placeholder sage (purple robed figure)
            spriteBatch.Draw(pixelTexture,
                new Rectangle(x - 32, y - 48, 64, 96),
                Color.Purple);
        }

        private void DrawPlayerStats(SpriteBatch spriteBatch, SpriteFont font, int x, int y)
        {
            string[] stats = new string[]
            {
                $"Level: {_player.Level}",
                $"HP: {_player.Health}/{_player.MaxHealth}",
                $"Experience: {_player.Experience}/{_player.GetRequiredExperienceForNextLevel()}",
                $"Progress: {(_player.GetExperienceProgress() * 100):F0}%"
            };

            for (int i = 0; i < stats.Length; i++)
            {
                spriteBatch.DrawString(font, stats[i],
                    new Vector2(x, y + i * 25), Color.Cyan, 0f, Vector2.Zero, 0.8f, SpriteEffects.None, 0f);
            }
        }

        private void DrawLevelUpEffect(SpriteBatch spriteBatch, int width, int height)
        {
            // Visual effect for leveling up (flash, particles, etc.)
            // For now, just a flash
            var pixelTexture = new Texture2D(spriteBatch.GraphicsDevice, 1, 1);
            pixelTexture.SetData(new[] { Color.White });

            spriteBatch.Draw(pixelTexture,
                new Rectangle(0, 0, width, height),
                Color.Yellow * 0.3f);
        }

        public bool IsComplete => _state == SageState.Complete && _dialogueManager.CurrentDialogue.IsComplete;
    }
}
