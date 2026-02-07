using System;
using System.IO;
using System.Collections.Generic;

namespace ZeliardModern.Tools
{
    /// <summary>
    /// Extracts files from Zeliard .SAR archives
    /// SAR format: [Header Size:4][Offset Table][File Data]
    /// </summary>
    public class SarExtractor
    {
        public class SarEntry
        {
            public int Index { get; set; }
            public int Offset { get; set; }
            public int Size { get; set; }
            public byte[] Data { get; set; }
        }

        /// <summary>
        /// Extract all files from a .SAR archive
        /// </summary>
        public static List<SarEntry> ExtractArchive(string sarPath)
        {
            var entries = new List<SarEntry>();

            using (var fs = new FileStream(sarPath, FileMode.Open, FileAccess.Read))
            using (var reader = new BinaryReader(fs))
            {
                // Read header size (first 4 bytes)
                int headerSize = reader.ReadInt32();
                int fileCount = (headerSize - 4) / 4;

                Console.WriteLine($"Archive: {Path.GetFileName(sarPath)}");
                Console.WriteLine($"Header size: {headerSize} bytes");
                Console.WriteLine($"File count: {fileCount}");

                // Read offset table
                var offsets = new int[fileCount + 1];
                for (int i = 0; i < fileCount; i++)
                {
                    offsets[i] = reader.ReadInt32();
                }
                // Last offset is the file size
                offsets[fileCount] = (int)fs.Length;

                // Extract each file
                for (int i = 0; i < fileCount; i++)
                {
                    int offset = offsets[i];
                    int nextOffset = offsets[i + 1];
                    int size = nextOffset - offset;

                    if (size > 0)
                    {
                        fs.Seek(offset, SeekOrigin.Begin);
                        byte[] data = reader.ReadBytes(size);

                        entries.Add(new SarEntry
                        {
                            Index = i,
                            Offset = offset,
                            Size = size,
                            Data = data
                        });

                        Console.WriteLine($"  File {i:D2}: offset={offset:X8}, size={size} bytes");
                    }
                }
            }

            return entries;
        }

        /// <summary>
        /// Extract single file by index
        /// </summary>
        public static byte[] ExtractFile(string sarPath, int fileIndex)
        {
            using (var fs = new FileStream(sarPath, FileMode.Open, FileAccess.Read))
            using (var reader = new BinaryReader(fs))
            {
                // Read header
                int headerSize = reader.ReadInt32();
                int fileCount = (headerSize - 4) / 4;

                if (fileIndex < 0 || fileIndex >= fileCount)
                    throw new ArgumentOutOfRangeException($"File index {fileIndex} out of range (0-{fileCount-1})");

                // Read offsets
                fs.Seek(4 + fileIndex * 4, SeekOrigin.Begin);
                int offset = reader.ReadInt32();
                int nextOffset = (fileIndex == fileCount - 1) ? (int)fs.Length : reader.ReadInt32();
                int size = nextOffset - offset;

                // Read file data
                fs.Seek(offset, SeekOrigin.Begin);
                return reader.ReadBytes(size);
            }
        }

        /// <summary>
        /// Save all extracted files to directory
        /// </summary>
        public static void ExtractToDirectory(string sarPath, string outputDir)
        {
            var entries = ExtractArchive(sarPath);
            Directory.CreateDirectory(outputDir);

            foreach (var entry in entries)
            {
                string outputFile = Path.Combine(outputDir, $"file_{entry.Index:D3}.bin");
                File.WriteAllBytes(outputFile, entry.Data);
                Console.WriteLine($"Saved: {outputFile}");
            }
        }
    }
}
