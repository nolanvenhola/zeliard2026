using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ZeliardModern.Graphics
{
    /// <summary>
    /// Represents a single sprite or sprite frame
    /// </summary>
    public class Sprite
    {
        public Texture2D Texture { get; set; }
        public Rectangle SourceRectangle { get; set; }
        public Vector2 Origin { get; set; }

        public Sprite(Texture2D texture, Rectangle sourceRect)
        {
            Texture = texture;
            SourceRectangle = sourceRect;
            Origin = new Vector2(sourceRect.Width / 2f, sourceRect.Height / 2f);
        }

        public Sprite(Texture2D texture, int x, int y, int width, int height)
            : this(texture, new Rectangle(x, y, width, height))
        {
        }

        /// <summary>
        /// Draw the sprite at the specified position
        /// </summary>
        public void Draw(SpriteBatch spriteBatch, Vector2 position, Color color, float rotation = 0f,
                        Vector2? scale = null, SpriteEffects effects = SpriteEffects.None, float layerDepth = 0f)
        {
            spriteBatch.Draw(
                Texture,
                position,
                SourceRectangle,
                color,
                rotation,
                Origin,
                scale ?? Vector2.One,
                effects,
                layerDepth
            );
        }

        public int Width => SourceRectangle.Width;
        public int Height => SourceRectangle.Height;
    }

    /// <summary>
    /// Manages a sprite sheet and provides access to individual sprites
    /// </summary>
    public class SpriteSheet
    {
        public Texture2D Texture { get; private set; }
        public int SpriteWidth { get; private set; }
        public int SpriteHeight { get; private set; }
        public int Columns { get; private set; }
        public int Rows { get; private set; }

        public SpriteSheet(Texture2D texture, int spriteWidth, int spriteHeight)
        {
            Texture = texture;
            SpriteWidth = spriteWidth;
            SpriteHeight = spriteHeight;
            Columns = texture.Width / spriteWidth;
            Rows = texture.Height / spriteHeight;
        }

        /// <summary>
        /// Get a sprite at the specified grid position
        /// </summary>
        public Sprite GetSprite(int column, int row)
        {
            return new Sprite(
                Texture,
                column * SpriteWidth,
                row * SpriteHeight,
                SpriteWidth,
                SpriteHeight
            );
        }

        /// <summary>
        /// Get a sprite by index (0-based, left-to-right, top-to-bottom)
        /// </summary>
        public Sprite GetSprite(int index)
        {
            int column = index % Columns;
            int row = index / Columns;
            return GetSprite(column, row);
        }

        /// <summary>
        /// Get a range of sprites for animation
        /// </summary>
        public Sprite[] GetSprites(int startIndex, int count)
        {
            Sprite[] sprites = new Sprite[count];
            for (int i = 0; i < count; i++)
            {
                sprites[i] = GetSprite(startIndex + i);
            }
            return sprites;
        }

        /// <summary>
        /// Get sprites in a rectangular region
        /// </summary>
        public Sprite[] GetSpritesInRegion(int startColumn, int startRow, int columns, int rows)
        {
            var sprites = new System.Collections.Generic.List<Sprite>();
            for (int row = 0; row < rows; row++)
            {
                for (int col = 0; col < columns; col++)
                {
                    sprites.Add(GetSprite(startColumn + col, startRow + row));
                }
            }
            return sprites.ToArray();
        }
    }
}
