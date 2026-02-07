using System;
using System.IO;

namespace ZeliardModern.Tools
{
    /// <summary>
    /// Generates simple WAV sound effects for the game
    /// Creates retro-style 8-bit sounds suitable for a DOS-era game
    /// </summary>
    class SoundEffectGenerator
    {
        static void Main(string[] args)
        {
            Console.WriteLine("=== Zeliard Modern Sound Effect Generator ===\n");

            string outputPath = Path.Combine("..", "Content", "Sounds");
            Directory.CreateDirectory(outputPath);

            Console.WriteLine($"Generating sound effects to: {outputPath}\n");

            // Generate all sound effects
            GeneratePlayerSounds(outputPath);
            GenerateEnemySounds(outputPath);
            GenerateItemSounds(outputPath);
            GenerateMagicSounds(outputPath);
            GenerateUISounds(outputPath);
            GenerateEnvironmentSounds(outputPath);

            Console.WriteLine("\n=== Generation Complete ===");
            Console.WriteLine($"Generated sound effects in: {outputPath}");
            Console.WriteLine("\nNext steps:");
            Console.WriteLine("1. Run the MGCB Editor to add these sounds to Content.mgcb");
            Console.WriteLine("2. Or use the AddSoundsToContent.sh script");
        }

        static void GeneratePlayerSounds(string outputPath)
        {
            Console.WriteLine("Generating player sounds...");

            // Jump - ascending frequency sweep
            GenerateSound(Path.Combine(outputPath, "PlayerJump.wav"),
                frequency: 440, duration: 0.15, wave: WaveType.Square, envelope: EnvelopeType.Quick);

            // Land - short thud
            GenerateSound(Path.Combine(outputPath, "PlayerLand.wav"),
                frequency: 220, duration: 0.1, wave: WaveType.Square, envelope: EnvelopeType.Sharp);

            // Sword swing - whoosh
            GenerateSound(Path.Combine(outputPath, "SwordSwing.wav"),
                frequency: 880, duration: 0.2, wave: WaveType.Sine, envelope: EnvelopeType.Smooth);

            // Sword hit - impact
            GenerateSound(Path.Combine(outputPath, "SwordHit.wav"),
                frequency: 660, duration: 0.15, wave: WaveType.Noise, envelope: EnvelopeType.Sharp);

            // Player hurt - descending tone
            GenerateSound(Path.Combine(outputPath, "PlayerHurt.wav"),
                frequency: 440, duration: 0.25, wave: WaveType.Square, envelope: EnvelopeType.Decay);

            // Player death - long descending tone
            GenerateSound(Path.Combine(outputPath, "PlayerDeath.wav"),
                frequency: 880, duration: 0.8, wave: WaveType.Triangle, envelope: EnvelopeType.Decay);
        }

        static void GenerateEnemySounds(string outputPath)
        {
            Console.WriteLine("Generating enemy sounds...");

            GenerateSound(Path.Combine(outputPath, "EnemyHit.wav"),
                frequency: 330, duration: 0.12, wave: WaveType.Square, envelope: EnvelopeType.Sharp);

            GenerateSound(Path.Combine(outputPath, "EnemyDeath.wav"),
                frequency: 550, duration: 0.4, wave: WaveType.Triangle, envelope: EnvelopeType.Decay);

            GenerateSound(Path.Combine(outputPath, "BossRoar.wav"),
                frequency: 110, duration: 0.6, wave: WaveType.Square, envelope: EnvelopeType.Sustain);
        }

        static void GenerateItemSounds(string outputPath)
        {
            Console.WriteLine("Generating item sounds...");

            GenerateSound(Path.Combine(outputPath, "ItemPickup.wav"),
                frequency: 880, duration: 0.2, wave: WaveType.Sine, envelope: EnvelopeType.Quick);

            GenerateSound(Path.Combine(outputPath, "CoinPickup.wav"),
                frequency: 1320, duration: 0.15, wave: WaveType.Sine, envelope: EnvelopeType.Quick);

            GenerateSound(Path.Combine(outputPath, "ItemPurchase.wav"),
                frequency: 1100, duration: 0.3, wave: WaveType.Square, envelope: EnvelopeType.Smooth);

            GenerateSound(Path.Combine(outputPath, "PotionDrink.wav"),
                frequency: 660, duration: 0.25, wave: WaveType.Sine, envelope: EnvelopeType.Smooth);
        }

        static void GenerateMagicSounds(string outputPath)
        {
            Console.WriteLine("Generating magic sounds...");

            GenerateSound(Path.Combine(outputPath, "SpellCast.wav"),
                frequency: 1760, duration: 0.3, wave: WaveType.Sine, envelope: EnvelopeType.Smooth);

            GenerateSound(Path.Combine(outputPath, "SpellHit.wav"),
                frequency: 1100, duration: 0.2, wave: WaveType.Square, envelope: EnvelopeType.Sharp);

            GenerateSound(Path.Combine(outputPath, "MagicCharge.wav"),
                frequency: 880, duration: 0.5, wave: WaveType.Triangle, envelope: EnvelopeType.Sustain);
        }

        static void GenerateUISounds(string outputPath)
        {
            Console.WriteLine("Generating UI sounds...");

            GenerateSound(Path.Combine(outputPath, "MenuSelect.wav"),
                frequency: 880, duration: 0.1, wave: WaveType.Square, envelope: EnvelopeType.Quick);

            GenerateSound(Path.Combine(outputPath, "MenuMove.wav"),
                frequency: 660, duration: 0.08, wave: WaveType.Square, envelope: EnvelopeType.Quick);

            GenerateSound(Path.Combine(outputPath, "MenuBack.wav"),
                frequency: 440, duration: 0.12, wave: WaveType.Square, envelope: EnvelopeType.Quick);

            GenerateSound(Path.Combine(outputPath, "DialogueAdvance.wav"),
                frequency: 550, duration: 0.08, wave: WaveType.Sine, envelope: EnvelopeType.Quick);

            GenerateSound(Path.Combine(outputPath, "LevelUp.wav"),
                frequency: 1320, duration: 0.5, wave: WaveType.Square, envelope: EnvelopeType.Sustain);
        }

        static void GenerateEnvironmentSounds(string outputPath)
        {
            Console.WriteLine("Generating environment sounds...");

            GenerateSound(Path.Combine(outputPath, "DoorOpen.wav"),
                frequency: 330, duration: 0.3, wave: WaveType.Square, envelope: EnvelopeType.Smooth);

            GenerateSound(Path.Combine(outputPath, "ChestOpen.wav"),
                frequency: 440, duration: 0.25, wave: WaveType.Triangle, envelope: EnvelopeType.Smooth);

            GenerateSound(Path.Combine(outputPath, "Teleport.wav"),
                frequency: 1760, duration: 0.4, wave: WaveType.Sine, envelope: EnvelopeType.Decay);
        }

        enum WaveType { Sine, Square, Triangle, Noise }
        enum EnvelopeType { Quick, Sharp, Smooth, Decay, Sustain }

        static void GenerateSound(string filePath, double frequency, double duration,
            WaveType wave, EnvelopeType envelope)
        {
            int sampleRate = 22050;
            int numSamples = (int)(sampleRate * duration);
            short[] samples = new short[numSamples];

            for (int i = 0; i < numSamples; i++)
            {
                double t = (double)i / sampleRate;
                double amplitude = GetEnvelope(t, duration, envelope);

                double sample = 0;
                switch (wave)
                {
                    case WaveType.Sine:
                        sample = Math.Sin(2 * Math.PI * frequency * t);
                        break;
                    case WaveType.Square:
                        sample = Math.Sign(Math.Sin(2 * Math.PI * frequency * t));
                        break;
                    case WaveType.Triangle:
                        sample = 2 * Math.Abs(2 * (frequency * t - Math.Floor(frequency * t + 0.5))) - 1;
                        break;
                    case WaveType.Noise:
                        sample = (new Random(i).NextDouble() * 2) - 1;
                        break;
                }

                samples[i] = (short)(sample * amplitude * short.MaxValue * 0.5);
            }

            WriteWavFile(filePath, samples, sampleRate);
            Console.WriteLine($"  ✓ Created: {Path.GetFileName(filePath)}");
        }

        static double GetEnvelope(double t, double duration, EnvelopeType type)
        {
            double progress = t / duration;

            return type switch
            {
                EnvelopeType.Quick => Math.Exp(-progress * 5),
                EnvelopeType.Sharp => Math.Exp(-progress * 10),
                EnvelopeType.Smooth => Math.Exp(-progress * 3),
                EnvelopeType.Decay => 1.0 - progress,
                EnvelopeType.Sustain => progress < 0.1 ? progress * 10 : (progress > 0.8 ? (1 - progress) * 5 : 1.0),
                _ => 1.0
            };
        }

        static void WriteWavFile(string filePath, short[] samples, int sampleRate)
        {
            using (FileStream fs = new FileStream(filePath, FileMode.Create))
            using (BinaryWriter writer = new BinaryWriter(fs))
            {
                int channels = 1;
                int bitsPerSample = 16;
                int dataSize = samples.Length * sizeof(short);

                // RIFF header
                writer.Write(new char[] { 'R', 'I', 'F', 'F' });
                writer.Write(36 + dataSize);
                writer.Write(new char[] { 'W', 'A', 'V', 'E' });

                // fmt subchunk
                writer.Write(new char[] { 'f', 'm', 't', ' ' });
                writer.Write(16); // Subchunk size
                writer.Write((short)1); // Audio format (PCM)
                writer.Write((short)channels);
                writer.Write(sampleRate);
                writer.Write(sampleRate * channels * bitsPerSample / 8); // Byte rate
                writer.Write((short)(channels * bitsPerSample / 8)); // Block align
                writer.Write((short)bitsPerSample);

                // data subchunk
                writer.Write(new char[] { 'd', 'a', 't', 'a' });
                writer.Write(dataSize);
                foreach (short sample in samples)
                {
                    writer.Write(sample);
                }
            }
        }
    }
}
