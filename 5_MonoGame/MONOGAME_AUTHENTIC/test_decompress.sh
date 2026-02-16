#!/bin/bash
# Quick test: manually trigger the decompression without running the full game

dotnet build -c Release > /dev/null 2>&1

# Create a minimal C# script to test decompression
cat > /tmp/test_decomp.cs << 'CSEOF'
using System;
using System.IO;
using ZeliardAuthentic.Core;

class Test {
    static void Main() {
        string dir = @"c:\Projects\Zeliard\2_EXTRACTED_CHUNKS\zelres1_extracted";
        
        for (int id = 30; id <= 32; id++) {
            string path = Path.Combine(dir, $"chunk_{id:D2}.bin");
            if (!File.Exists(path)) continue;
            
            byte[] chunk = File.ReadAllBytes(path);
            Console.WriteLine($"\n=== Chunk {id} ===");
            Console.WriteLine($"Size: {chunk.Length} bytes, Format: 0x{chunk[5]:X2}");
            
            byte[] decomp = GrpDecoder.DecompressGrpChunk(chunk);
            if (decomp != null) {
                Console.WriteLine($"Decompressed: {decomp.Length} bytes");
                Console.Write("First 32 bytes: ");
                for (int i = 0; i < Math.Min(32, decomp.Length); i++)
                    Console.Write($"{decomp[i]:X2} ");
                Console.WriteLine();
                
                File.WriteAllBytes($"chunk_{id}_decomp.bin", decomp);
                Console.WriteLine($"Saved to chunk_{id}_decomp.bin");
            } else {
                Console.WriteLine("Decompression FAILED");
            }
        }
    }
}
CSEOF

# This won't work directly due to MonoGame dependency, but shows the concept
echo "To test, run the game and navigate to title screen with ENTER key"
