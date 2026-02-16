#!/usr/bin/env python3
"""
Extract chunks from Zeliard SAR archive files.
SAR format:
  - First 0xA0 bytes: table of 40 32-bit little-endian offsets
  - Data sections at each offset
"""

import struct
import os
import sys

def extract_sar(sar_filename, output_dir):
    """Extract all chunks from a SAR file."""
    print(f"Processing {sar_filename}...")

    # Create output directory
    os.makedirs(output_dir, exist_ok=True)

    with open(sar_filename, 'rb') as f:
        # Read entire file
        data = f.read()
        file_size = len(data)

        # Read offset table (40 entries of 4 bytes each = 160 bytes = 0xA0)
        offsets = []
        for i in range(40):
            offset_bytes = data[i*4:(i+1)*4]
            offset = struct.unpack('<I', offset_bytes)[0]
            offsets.append(offset)

        print(f"  Found {len(offsets)} offsets")

        # Extract each chunk
        for i in range(len(offsets)):
            start = offsets[i]

            # Calculate end offset (next offset or end of file)
            if i + 1 < len(offsets):
                end = offsets[i + 1]
            else:
                end = file_size

            chunk_size = end - start

            if chunk_size <= 0 or start >= file_size:
                print(f"  Chunk {i:02d}: Invalid (offset=0x{start:08x}, size={chunk_size})")
                continue

            # Extract chunk
            chunk_data = data[start:end]

            output_filename = os.path.join(output_dir, f"chunk_{i:02d}.bin")
            with open(output_filename, 'wb') as out:
                out.write(chunk_data)

            print(f"  Chunk {i:02d}: offset=0x{start:08x}, size={chunk_size:6d} bytes -> {output_filename}")

if __name__ == "__main__":
    # Extract all three SAR files
    for sar_file in ["zelres1.sar", "zelres2.sar", "zelres3.sar"]:
        if os.path.exists(sar_file):
            base_name = os.path.splitext(sar_file)[0]
            output_dir = f"{base_name}_extracted"
            extract_sar(sar_file, output_dir)
            print()
        else:
            print(f"Warning: {sar_file} not found")
