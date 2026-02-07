using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ZeliardModern.Systems
{
    /// <summary>
    /// Manages loading and caching of game assets
    /// </summary>
    public class AssetManager
    {
        private ContentManager _content;
        private Dictionary<string, Texture2D> _textures;
        private Dictionary<string, SpriteFont> _fonts;

        public AssetManager(ContentManager content)
        {
            _content = content;
            _textures = new Dictionary<string, Texture2D>();
            _fonts = new Dictionary<string, SpriteFont>();
        }

        /// <summary>
        /// Load a texture, caching it for future use
        /// </summary>
        public Texture2D LoadTexture(string assetName)
        {
            if (!_textures.ContainsKey(assetName))
            {
                _textures[assetName] = _content.Load<Texture2D>(assetName);
            }
            return _textures[assetName];
        }

        /// <summary>
        /// Load a font, caching it for future use
        /// </summary>
        public SpriteFont LoadFont(string assetName)
        {
            if (!_fonts.ContainsKey(assetName))
            {
                _fonts[assetName] = _content.Load<SpriteFont>(assetName);
            }
            return _fonts[assetName];
        }

        /// <summary>
        /// Get a texture if it's already loaded
        /// </summary>
        public Texture2D GetTexture(string assetName)
        {
            return _textures.TryGetValue(assetName, out var texture) ? texture : null;
        }

        /// <summary>
        /// Get a font if it's already loaded
        /// </summary>
        public SpriteFont GetFont(string assetName)
        {
            return _fonts.TryGetValue(assetName, out var font) ? font : null;
        }

        /// <summary>
        /// Unload all assets
        /// </summary>
        public void UnloadAll()
        {
            _textures.Clear();
            _fonts.Clear();
            _content.Unload();
        }
    }

    /// <summary>
    /// Asset paths and names
    /// </summary>
    public static class AssetNames
    {
        // Sprites
        public const string PlayerSprite = "Sprites/Player";
        public const string EnemySprite = "Sprites/Enemy";
        public const string BossSprite = "Sprites/Boss";

        // UI
        public const string DefaultFont = "Fonts/Default";
        public const string TitleFont = "Fonts/Title";

        // Backgrounds
        public const string TitleScreen = "Backgrounds/Title";
        public const string TownBackground = "Backgrounds/Town";

        // TODO: Add more asset names as sprites are extracted and converted
    }
}
