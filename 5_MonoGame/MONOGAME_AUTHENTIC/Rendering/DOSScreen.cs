using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ZeliardAuthentic.Rendering
{
    /// <summary>
    /// Renders at DOS 320×200 resolution, then scales up to fill window.
    /// </summary>
    public class DOSScreen
    {
        public const int WIDTH = 320;
        public const int HEIGHT = 200;

        private RenderTarget2D _dosBuffer;
        private GraphicsDevice _device;

        public DOSScreen(GraphicsDevice device)
        {
            _device = device;
            _dosBuffer = new RenderTarget2D(device, WIDTH, HEIGHT);
        }

        public void BeginFrame()
        {
            // Set render target to DOS-resolution buffer
            _device.SetRenderTarget(_dosBuffer);
            _device.Clear(Color.Black);
        }

        public void EndFrame(SpriteBatch spriteBatch)
        {
            // Switch back to backbuffer
            _device.SetRenderTarget(null);

            // Draw DOS buffer scaled to fill window
            Rectangle destRect = GetScaledRectangle();

            spriteBatch.Begin(samplerState: SamplerState.PointClamp);
            spriteBatch.Draw(_dosBuffer, destRect, Color.White);
            spriteBatch.End();
        }

        private Rectangle GetScaledRectangle()
        {
            int windowWidth = _device.PresentationParameters.BackBufferWidth;
            int windowHeight = _device.PresentationParameters.BackBufferHeight;

            // Calculate integer scale factor (3× for 960×600)
            int scaleX = windowWidth / WIDTH;
            int scaleY = windowHeight / HEIGHT;
            int scale = Math.Min(scaleX, scaleY);

            // Center the scaled image
            int scaledWidth = WIDTH * scale;
            int scaledHeight = HEIGHT * scale;

            int x = (windowWidth - scaledWidth) / 2;
            int y = (windowHeight - scaledHeight) / 2;

            return new Rectangle(x, y, scaledWidth, scaledHeight);
        }

        public void Dispose()
        {
            _dosBuffer?.Dispose();
        }
    }
}
