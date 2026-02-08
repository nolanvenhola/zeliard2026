using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.IO;
using ZeliardAuthentic.Core;
using ZeliardAuthentic.Input;

namespace ZeliardAuthentic.Scenes
{
    /// <summary>
    /// Debug state: browse and visualize binary chunks with different decode modes.
    /// Cycle through chunks with Left/Right, change decode mode with Up/Down.
    /// Press D to dump analysis to console.
    ///
    /// Decode modes:
    ///   0: Raw bytes as MCGA colors (byte % 27)
    ///   1: Raw bytes at width=320
    ///   2: Raw bytes at width=160
    ///   3: Nibble decode (4 bits per pixel, width=320)
    ///   4: Nibble decode (4 bits per pixel, width=160)
    ///   5: 3-plane EGA (width=256)
    ///   6: 3-plane EGA (width=320)
    ///   7: High-bit RLE then raw at width=320
    ///   8: High-bit RLE then raw at width=160
    /// </summary>
    public class ChunkExplorer : IGameStateHandler
    {
        private InputManager _input;
        private GraphicsDevice _gd;
        private Texture2D _currentTexture;
        private string[] _chunkPaths;
        private int _chunkIndex;
        private int _decodeMode;
        private string _info;

        private static readonly string[] ModeNames = {
            "Raw %27 w=256",
            "Raw %27 w=320",
            "Raw %27 w=160",
            "Nibble w=320",
            "Nibble w=160",
            "Nibble w=128",
            "Nibble w=192",
            "3-Plane w=256",
            "3-Plane w=320",
            "HiBitRLE w=320",
            "HiBitRLE w=160",
            "1bit w=320",
            "1bit w=256",
            "1bit w=160",
            "1bit w=128",
            "Raw %27 w=40",
            "VGA Framebuf",
            "GRP 3-Plane",
        };

        public ChunkExplorer(InputManager input, GraphicsDevice gd, string[] chunkPaths)
        {
            _input = input;
            _gd = gd;
            _chunkPaths = chunkPaths;
            _info = "";
        }

        public void Enter(GameStateManager manager)
        {
            _chunkIndex = 0;
            _decodeMode = 0;
            RenderCurrentChunk();
        }

        public void Exit(GameStateManager manager) { }

        public void Update(GameTime gameTime, GameStateManager manager)
        {
            bool changed = false;

            if (_input.IsPressed(GameAction.Right))
            {
                _chunkIndex = (_chunkIndex + 1) % _chunkPaths.Length;
                changed = true;
            }
            if (_input.IsPressed(GameAction.Left))
            {
                _chunkIndex = (_chunkIndex - 1 + _chunkPaths.Length) % _chunkPaths.Length;
                changed = true;
            }
            if (_input.IsPressed(GameAction.Down))
            {
                _decodeMode = (_decodeMode + 1) % ModeNames.Length;
                changed = true;
            }
            if (_input.IsPressed(GameAction.Up))
            {
                _decodeMode = (_decodeMode - 1 + ModeNames.Length) % ModeNames.Length;
                changed = true;
            }
            if (_input.IsKeyPressed(Keys.D))
            {
                DumpAnalysis();
            }
            if (_input.IsPressed(GameAction.Pause))
            {
                manager.TransitionTo(GameState.Opening);
            }

            if (changed)
                RenderCurrentChunk();
        }

        public void Draw(SpriteBatch spriteBatch, GameStateManager manager)
        {
            if (_currentTexture != null)
            {
                // Scale to fit DOS screen while maintaining aspect ratio
                float scale = Math.Min(
                    (float)DOSScreen.WIDTH / _currentTexture.Width,
                    (float)(DOSScreen.HEIGHT - 16) / _currentTexture.Height);
                scale = Math.Min(scale, 1f); // Don't upscale

                int drawW = (int)(_currentTexture.Width * scale);
                int drawH = (int)(_currentTexture.Height * scale);
                int drawX = (DOSScreen.WIDTH - drawW) / 2;
                int drawY = (DOSScreen.HEIGHT - 16 - drawH) / 2;

                spriteBatch.Draw(_currentTexture,
                    new Rectangle(drawX, drawY, drawW, drawH),
                    Color.White);
            }
        }

        private void RenderCurrentChunk()
        {
            if (_chunkPaths == null || _chunkPaths.Length == 0) return;

            string path = _chunkPaths[_chunkIndex];
            string name = Path.GetFileName(Path.GetDirectoryName(path)) + "/" + Path.GetFileName(path);

            try
            {
                byte[] data = File.ReadAllBytes(path);
                _currentTexture?.Dispose();

                switch (_decodeMode)
                {
                    case 0:  _currentTexture = GrpDecoder.DecodeRaw(_gd, data, 256, 4); break;
                    case 1:  _currentTexture = GrpDecoder.DecodeRaw(_gd, data, 320, 4); break;
                    case 2:  _currentTexture = GrpDecoder.DecodeRaw(_gd, data, 160, 4); break;
                    case 3:  _currentTexture = GrpDecoder.DecodeNibble(_gd, data, 320, 6); break;
                    case 4:  _currentTexture = GrpDecoder.DecodeNibble(_gd, data, 160, 6); break;
                    case 5:  _currentTexture = GrpDecoder.DecodeNibble(_gd, data, 128, 6); break;
                    case 6:  _currentTexture = GrpDecoder.DecodeNibble(_gd, data, 192, 6); break;
                    case 7:  _currentTexture = GrpDecoder.Decode3Plane(_gd, data, 256, 6); break;
                    case 8:  _currentTexture = GrpDecoder.Decode3Plane(_gd, data, 320, 6); break;
                    case 9:
                    {
                        var decoded = GrpDecoder.DecodeHighBitRLE(data, 6);
                        _currentTexture = GrpDecoder.RenderDecoded(_gd, decoded, 320);
                        break;
                    }
                    case 10:
                    {
                        var decoded = GrpDecoder.DecodeHighBitRLE(data, 6);
                        _currentTexture = GrpDecoder.RenderDecoded(_gd, decoded, 160);
                        break;
                    }
                    case 11: _currentTexture = GrpDecoder.Decode1Bit(_gd, data, 320, 6); break;
                    case 12: _currentTexture = GrpDecoder.Decode1Bit(_gd, data, 256, 6); break;
                    case 13: _currentTexture = GrpDecoder.Decode1Bit(_gd, data, 160, 6); break;
                    case 14: _currentTexture = GrpDecoder.Decode1Bit(_gd, data, 128, 6); break;
                    case 15: _currentTexture = GrpDecoder.DecodeRaw(_gd, data, 40, 6); break;
                    case 16: _currentTexture = GrpDecoder.RenderVGAFramebuffer(_gd, data); break;
                    case 17: _currentTexture = GrpDecoder.DecodeGrp(_gd, data, 6); break;
                }

                _info = $"[{_chunkIndex + 1}/{_chunkPaths.Length}] {name} ({data.Length}B) Mode: {ModeNames[_decodeMode]}";
                Console.WriteLine(_info);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }

        private void DumpAnalysis()
        {
            if (_chunkPaths == null || _chunkPaths.Length == 0) return;
            try
            {
                byte[] data = File.ReadAllBytes(_chunkPaths[_chunkIndex]);
                string name = Path.GetFileName(_chunkPaths[_chunkIndex]);
                Console.WriteLine($"\n=== Analysis: {name} ===");
                Console.WriteLine(GrpDecoder.AnalyzeChunk(data));
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }
    }
}
