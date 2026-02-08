using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ZeliardAuthentic.Core
{
    /// <summary>
    /// Manages DOS-resolution rendering (320x200) with pixel-perfect scaling to the game window.
    /// All game rendering targets this 320x200 buffer, which is then scaled up for display.
    /// </summary>
    public class DOSScreen : IDisposable
    {
        public const int WIDTH = 320;
        public const int HEIGHT = 200;

        private readonly GraphicsDevice _graphicsDevice;
        private RenderTarget2D _renderTarget;
        private bool _disposed;

        /// <summary>
        /// The 320x200 render target. All game drawing should target this.
        /// </summary>
        public RenderTarget2D RenderTarget => _renderTarget;

        public DOSScreen(GraphicsDevice graphicsDevice)
        {
            _graphicsDevice = graphicsDevice;
            _renderTarget = new RenderTarget2D(
                graphicsDevice,
                WIDTH,
                HEIGHT,
                false,
                SurfaceFormat.Color,
                DepthFormat.None,
                0,
                RenderTargetUsage.PreserveContents);
        }

        /// <summary>
        /// Begin rendering to the DOS-resolution back buffer.
        /// Call this before any game drawing.
        /// </summary>
        public void BeginFrame()
        {
            _graphicsDevice.SetRenderTarget(_renderTarget);
            _graphicsDevice.Clear(Color.Black);
        }

        /// <summary>
        /// End rendering to the DOS buffer and present it scaled to the window.
        /// Call this after all game drawing is complete.
        /// </summary>
        public void EndFrame(SpriteBatch spriteBatch)
        {
            _graphicsDevice.SetRenderTarget(null);
            _graphicsDevice.Clear(Color.Black);

            // Calculate scaling to fit window while maintaining aspect ratio
            int windowWidth = _graphicsDevice.PresentationParameters.BackBufferWidth;
            int windowHeight = _graphicsDevice.PresentationParameters.BackBufferHeight;

            float scaleX = (float)windowWidth / WIDTH;
            float scaleY = (float)windowHeight / HEIGHT;
            float scale = Math.Min(scaleX, scaleY);

            // Integer scaling for pixel-perfect rendering
            int intScale = Math.Max(1, (int)scale);

            int destWidth = WIDTH * intScale;
            int destHeight = HEIGHT * intScale;
            int destX = (windowWidth - destWidth) / 2;
            int destY = (windowHeight - destHeight) / 2;

            spriteBatch.Begin(
                SpriteSortMode.Deferred,
                BlendState.Opaque,
                SamplerState.PointClamp, // Nearest-neighbor for crisp pixels
                null, null, null, null);

            spriteBatch.Draw(
                _renderTarget,
                new Rectangle(destX, destY, destWidth, destHeight),
                Color.White);

            spriteBatch.End();
        }

        public void Dispose()
        {
            if (!_disposed)
            {
                _renderTarget?.Dispose();
                _disposed = true;
            }
        }
    }
}
