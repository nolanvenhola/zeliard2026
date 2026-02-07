using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Media;
using System;
using System.Collections.Generic;

namespace ZeliardModern.Audio
{
    /// <summary>
    /// Central audio system for managing music and sound effects
    /// Handles background music, area themes, and audio transitions
    /// </summary>
    public class AudioSystem
    {
        private Dictionary<string, Song> _songs;
        private Dictionary<string, SoundEffect> _soundEffects;
        private string _currentSongName;
        private float _musicVolume;
        private float _soundVolume;
        private bool _musicEnabled;
        private bool _soundEnabled;

        public float MusicVolume
        {
            get => _musicVolume;
            set
            {
                _musicVolume = Math.Clamp(value, 0f, 1f);
                MediaPlayer.Volume = _musicVolume;
            }
        }

        public float SoundVolume
        {
            get => _soundVolume;
            set
            {
                _soundVolume = Math.Clamp(value, 0f, 1f);
                SoundEffect.MasterVolume = _soundVolume;
            }
        }

        public bool MusicEnabled
        {
            get => _musicEnabled;
            set
            {
                _musicEnabled = value;
                if (!_musicEnabled && MediaPlayer.State == MediaState.Playing)
                {
                    MediaPlayer.Pause();
                }
                else if (_musicEnabled && MediaPlayer.State == MediaState.Paused)
                {
                    MediaPlayer.Resume();
                }
            }
        }

        public bool SoundEnabled
        {
            get => _soundEnabled;
            set => _soundEnabled = value;
        }

        public AudioSystem()
        {
            _songs = new Dictionary<string, Song>();
            _soundEffects = new Dictionary<string, SoundEffect>();
            _musicVolume = 0.7f;
            _soundVolume = 0.8f;
            _musicEnabled = true;
            _soundEnabled = true;
            _currentSongName = null;

            MediaPlayer.Volume = _musicVolume;
            MediaPlayer.IsRepeating = true;
            SoundEffect.MasterVolume = _soundVolume;
        }

        /// <summary>
        /// Add a song to the audio library
        /// </summary>
        public void AddSong(string name, Song song)
        {
            if (song != null && !_songs.ContainsKey(name))
            {
                _songs[name] = song;
            }
        }

        /// <summary>
        /// Add a sound effect to the audio library
        /// </summary>
        public void AddSoundEffect(string name, SoundEffect effect)
        {
            if (effect != null && !_soundEffects.ContainsKey(name))
            {
                _soundEffects[name] = effect;
            }
        }

        /// <summary>
        /// Play a song by name (with smooth transitions)
        /// </summary>
        public void PlayMusic(string songName, bool forceRestart = false)
        {
            if (!_musicEnabled)
                return;

            // Don't restart if already playing the same song
            if (_currentSongName == songName && !forceRestart && MediaPlayer.State == MediaState.Playing)
                return;

            if (_songs.TryGetValue(songName, out Song song))
            {
                try
                {
                    MediaPlayer.Play(song);
                    _currentSongName = songName;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Failed to play music '{songName}': {ex.Message}");
                }
            }
            else
            {
                Console.WriteLine($"Song '{songName}' not found in audio library");
            }
        }

        /// <summary>
        /// Stop music playback
        /// </summary>
        public void StopMusic()
        {
            if (MediaPlayer.State == MediaState.Playing)
            {
                MediaPlayer.Stop();
                _currentSongName = null;
            }
        }

        /// <summary>
        /// Pause music playback
        /// </summary>
        public void PauseMusic()
        {
            if (MediaPlayer.State == MediaState.Playing)
            {
                MediaPlayer.Pause();
            }
        }

        /// <summary>
        /// Resume paused music
        /// </summary>
        public void ResumeMusic()
        {
            if (_musicEnabled && MediaPlayer.State == MediaState.Paused)
            {
                MediaPlayer.Resume();
            }
        }

        /// <summary>
        /// Play a sound effect by name
        /// </summary>
        public void PlaySound(string soundName, float volume = 1.0f, float pitch = 0f, float pan = 0f)
        {
            if (!_soundEnabled)
                return;

            if (_soundEffects.TryGetValue(soundName, out SoundEffect effect))
            {
                try
                {
                    effect.Play(volume * _soundVolume, pitch, pan);
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Failed to play sound '{soundName}': {ex.Message}");
                }
            }
            else
            {
                Console.WriteLine($"Sound effect '{soundName}' not found in audio library");
            }
        }

        /// <summary>
        /// Get music for a specific area (cavern)
        /// </summary>
        public string GetAreaMusic(int areaId)
        {
            return areaId switch
            {
                1 => "Zeliard-04-CavernOfMalicia",    // Malicia/Peligro
                2 => "Zeliard-10-CavernOfMadera",     // Madera/Riza
                3 => "Zeliard-11-CavernOfEscarcha",   // Escarcha/Glacial
                4 => "Zeliard-09-CavernOfCorroer",    // Cementar/Corroer
                5 => "Zeliard-13-CavernOfTesoro",     // Plata/Tesoro
                6 => "Zeliard-12-CavernOfCaliente",   // Arrugia
                7 => "Zeliard-14-CavernOfAbsor",      // Absor/Milagro
                8 => "Zeliard-08-CavernOfPeligro",    // Desleal
                _ => "Zeliard-04-CavernOfMalicia"
            };
        }

        /// <summary>
        /// Get music for a specific town
        /// </summary>
        public string GetTownMusic(int townId)
        {
            return townId switch
            {
                1 => "Zeliard-03-MurallaTown",
                2 => "Zeliard-05-SatonoTown",
                3 => "Zeliard-06-BosqueVillage",
                4 => "Zeliard-07-TumbaTown",
                _ => "Zeliard-03-MurallaTown"
            };
        }

        /// <summary>
        /// Play intro music
        /// </summary>
        public void PlayIntroMusic()
        {
            PlayMusic("Zeliard01-Intro");
        }

        /// <summary>
        /// Play credits music
        /// </summary>
        public void PlayCreditsMusic()
        {
            PlayMusic("Zeliard-02-Credits");
        }

        /// <summary>
        /// Cleanup resources
        /// </summary>
        public void Dispose()
        {
            MediaPlayer.Stop();
            _songs.Clear();
            _soundEffects.Clear();
        }
    }
}
