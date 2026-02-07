using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;

namespace ZeliardModern.Graphics
{
    /// <summary>
    /// Individual particle with physics properties
    /// </summary>
    public class Particle
    {
        public Vector2 Position;
        public Vector2 Velocity;
        public Color Color;
        public float Lifetime;          // Seconds remaining
        public float InitialLifetime;   // For fade calculation
        public float Size;
        public float Rotation;
        public float RotationSpeed;
        public bool IsAlive => Lifetime > 0;
    }

    /// <summary>
    /// Particle emitter that manages a group of particles
    /// </summary>
    public class ParticleEmitter
    {
        private List<Particle> _particles;
        private Texture2D _particleTexture;
        private Random _random;

        // Emission parameters
        public Vector2 Position { get; set; }
        public int ParticlesPerSecond { get; set; }
        public float ParticleLifetime { get; set; }
        public Vector2 VelocityMin { get; set; }
        public Vector2 VelocityMax { get; set; }
        public Color ColorStart { get; set; }
        public Color ColorEnd { get; set; }
        public float SizeStart { get; set; }
        public float SizeEnd { get; set; }
        public bool IsActive { get; set; }

        private float _emissionTimer;

        public ParticleEmitter(Texture2D particleTexture)
        {
            _particleTexture = particleTexture;
            _particles = new List<Particle>();
            _random = new Random();
            _emissionTimer = 0f;

            // Default values
            ParticlesPerSecond = 10;
            ParticleLifetime = 1.0f;
            VelocityMin = new Vector2(-50, -50);
            VelocityMax = new Vector2(50, 50);
            ColorStart = Color.White;
            ColorEnd = Color.Transparent;
            SizeStart = 4f;
            SizeEnd = 1f;
            IsActive = false;
        }

        public void Update(float deltaTime)
        {
            // Update existing particles
            for (int i = _particles.Count - 1; i >= 0; i--)
            {
                var particle = _particles[i];
                particle.Lifetime -= deltaTime;

                if (particle.Lifetime <= 0)
                {
                    _particles.RemoveAt(i);
                    continue;
                }

                // Update physics
                particle.Position += particle.Velocity * deltaTime;
                particle.Rotation += particle.RotationSpeed * deltaTime;

                // Apply gravity
                particle.Velocity += new Vector2(0, 200f) * deltaTime;

                // Interpolate properties based on lifetime
                float t = 1f - (particle.Lifetime / particle.InitialLifetime);
                particle.Color = Color.Lerp(ColorStart, ColorEnd, t);
                particle.Size = MathHelper.Lerp(SizeStart, SizeEnd, t);
            }

            // Emit new particles if active
            if (IsActive)
            {
                _emissionTimer += deltaTime;
                float emissionInterval = 1f / ParticlesPerSecond;

                while (_emissionTimer >= emissionInterval)
                {
                    SpawnParticle();
                    _emissionTimer -= emissionInterval;
                }
            }
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            foreach (var particle in _particles)
            {
                spriteBatch.Draw(
                    _particleTexture,
                    particle.Position,
                    null,
                    particle.Color,
                    particle.Rotation,
                    new Vector2(_particleTexture.Width / 2, _particleTexture.Height / 2),
                    particle.Size,
                    SpriteEffects.None,
                    0f
                );
            }
        }

        public void Burst(int count)
        {
            for (int i = 0; i < count; i++)
            {
                SpawnParticle();
            }
        }

        private void SpawnParticle()
        {
            var particle = new Particle
            {
                Position = Position,
                Velocity = new Vector2(
                    MathHelper.Lerp(VelocityMin.X, VelocityMax.X, (float)_random.NextDouble()),
                    MathHelper.Lerp(VelocityMin.Y, VelocityMax.Y, (float)_random.NextDouble())
                ),
                Color = ColorStart,
                Lifetime = ParticleLifetime,
                InitialLifetime = ParticleLifetime,
                Size = SizeStart,
                Rotation = (float)(_random.NextDouble() * Math.PI * 2),
                RotationSpeed = (float)((_random.NextDouble() - 0.5) * 4)
            };

            _particles.Add(particle);
        }

        public int ParticleCount => _particles.Count;
    }

    /// <summary>
    /// Particle system manager with pre-configured effects
    /// </summary>
    public class ParticleSystem
    {
        private List<ParticleEmitter> _emitters;
        private Texture2D _particleTexture;
        private Random _random;

        public ParticleSystem(GraphicsDevice graphicsDevice)
        {
            _emitters = new List<ParticleEmitter>();
            _random = new Random();

            // Create a simple particle texture (white circle/square)
            _particleTexture = CreateParticleTexture(graphicsDevice, 8);
        }

        private Texture2D CreateParticleTexture(GraphicsDevice graphicsDevice, int size)
        {
            var texture = new Texture2D(graphicsDevice, size, size);
            var data = new Color[size * size];

            int radius = size / 2;
            for (int y = 0; y < size; y++)
            {
                for (int x = 0; x < size; x++)
                {
                    int dx = x - radius;
                    int dy = y - radius;
                    float distance = (float)Math.Sqrt(dx * dx + dy * dy);

                    if (distance <= radius)
                    {
                        // Create a soft circle with anti-aliasing
                        float alpha = 1f - (distance / radius);
                        data[y * size + x] = new Color(1f, 1f, 1f, alpha);
                    }
                    else
                    {
                        data[y * size + x] = Color.Transparent;
                    }
                }
            }

            texture.SetData(data);
            return texture;
        }

        public void Update(float deltaTime)
        {
            // Update all emitters
            foreach (var emitter in _emitters)
            {
                emitter.Update(deltaTime);
            }

            // Remove inactive emitters with no particles
            _emitters.RemoveAll(e => !e.IsActive && e.ParticleCount == 0);
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            foreach (var emitter in _emitters)
            {
                emitter.Draw(spriteBatch);
            }
        }

        // Pre-configured effects

        public void CreateHitEffect(Vector2 position)
        {
            var emitter = new ParticleEmitter(_particleTexture)
            {
                Position = position,
                ParticleLifetime = 0.3f,
                VelocityMin = new Vector2(-100, -150),
                VelocityMax = new Vector2(100, -50),
                ColorStart = Color.Yellow,
                ColorEnd = Color.Red * 0f,
                SizeStart = 3f,
                SizeEnd = 0.5f,
                IsActive = false
            };

            emitter.Burst(10);
            _emitters.Add(emitter);
        }

        public void CreateExplosion(Vector2 position, Color color)
        {
            var emitter = new ParticleEmitter(_particleTexture)
            {
                Position = position,
                ParticleLifetime = 0.8f,
                VelocityMin = new Vector2(-150, -200),
                VelocityMax = new Vector2(150, -50),
                ColorStart = color,
                ColorEnd = color * 0f,
                SizeStart = 6f,
                SizeEnd = 1f,
                IsActive = false
            };

            emitter.Burst(25);
            _emitters.Add(emitter);
        }

        public void CreateMagicSparkles(Vector2 position, Color color)
        {
            var emitter = new ParticleEmitter(_particleTexture)
            {
                Position = position,
                ParticleLifetime = 0.6f,
                VelocityMin = new Vector2(-80, -120),
                VelocityMax = new Vector2(80, -60),
                ColorStart = color,
                ColorEnd = Color.White * 0f,
                SizeStart = 4f,
                SizeEnd = 1f,
                IsActive = false
            };

            emitter.Burst(15);
            _emitters.Add(emitter);
        }

        public void CreateSwordTrail(Vector2 start, Vector2 end)
        {
            // Create particles along the sword trail
            int particleCount = 6;
            for (int i = 0; i < particleCount; i++)
            {
                float t = i / (float)(particleCount - 1);
                Vector2 position = Vector2.Lerp(start, end, t);

                var emitter = new ParticleEmitter(_particleTexture)
                {
                    Position = position,
                    ParticleLifetime = 0.2f,
                    VelocityMin = new Vector2(-20, -20),
                    VelocityMax = new Vector2(20, 20),
                    ColorStart = Color.White,
                    ColorEnd = Color.White * 0f,
                    SizeStart = 3f,
                    SizeEnd = 0.5f,
                    IsActive = false
                };

                emitter.Burst(2);
                _emitters.Add(emitter);
            }
        }

        public void CreateDustCloud(Vector2 position)
        {
            var emitter = new ParticleEmitter(_particleTexture)
            {
                Position = position,
                ParticleLifetime = 0.4f,
                VelocityMin = new Vector2(-60, -30),
                VelocityMax = new Vector2(60, 10),
                ColorStart = new Color(139, 119, 101), // Brown/gray
                ColorEnd = new Color(139, 119, 101, 0),
                SizeStart = 5f,
                SizeEnd = 2f,
                IsActive = false
            };

            emitter.Burst(8);
            _emitters.Add(emitter);
        }

        public void CreateLevelUpEffect(Vector2 position)
        {
            var emitter = new ParticleEmitter(_particleTexture)
            {
                Position = position,
                ParticleLifetime = 1.2f,
                VelocityMin = new Vector2(-40, -150),
                VelocityMax = new Vector2(40, -80),
                ColorStart = Color.Gold,
                ColorEnd = Color.Yellow * 0f,
                SizeStart = 5f,
                SizeEnd = 2f,
                IsActive = false
            };

            emitter.Burst(35);
            _emitters.Add(emitter);
        }

        public int TotalParticleCount
        {
            get
            {
                int total = 0;
                foreach (var emitter in _emitters)
                {
                    total += emitter.ParticleCount;
                }
                return total;
            }
        }
    }
}
