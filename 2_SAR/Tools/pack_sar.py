#!/usr/bin/env python3
"""
Pack chunks into Zeliard SAR archive files.
SAR format:
  - First 0xA0 bytes: table of 40 32-bit little-endian offsets
  - Data sections at each offset
"""

import struct
import os
import sys

def pack_sar(chunk_dir, output_sar):
    """Pack all chunks from a directory into a SAR file."""

    print(f"Packing {chunk_dir} -> {output_sar}...")

    # Find all chunk files (chunk_00.bin through chunk_39.bin)
    chunks = []
    for i in range(40):
        chunk_file = os.path.join(chunk_dir, f"chunk_{i:02d}.bin")
        if os.path.exists(chunk_file):
            with open(chunk_file, 'rb') as f:
                data = f.read()
            chunks.append((i, data))
            print(f"  Chunk {i:02d}: {len(data):6,d} bytes")
        else:
            # Empty chunk - will use offset pointing to next chunk
            chunks.append((i, b''))
            print(f"  Chunk {i:02d}: EMPTY (missing file)")

    if len(chunks) != 40:
        print(f"Error: Expected 40 chunks, found {len(chunks)}")
        return False

    # Calculate offsets
    # Offset table is 0xA0 bytes, so first chunk starts at 0xA0
    offset_table = []
    current_offset = 0xA0

    for i, chunk_data in chunks:
        offset_table.append(current_offset)
        current_offset += len(chunk_data)

    print(f"\nTotal SAR size: {current_offset:,d} bytes ({current_offset/1024:.1f} KB)")

    # Write SAR file
    with open(output_sar, 'wb') as f:
        # Write offset table (40 entries × 4 bytes = 160 bytes = 0xA0)
        for offset in offset_table:
            f.write(struct.pack('<I', offset))

        # Verify we wrote exactly 0xA0 bytes
        assert f.tell() == 0xA0, f"Offset table should be 0xA0 bytes, got {f.tell()}"

        # Write all chunks
        for i, chunk_data in chunks:
            f.write(chunk_data)

    print(f"✓ Created: {output_sar}")
    return True

def main():
    if len(sys.argv) > 1:
        # Manual mode: pack_sar.py <chunk_dir> <output.sar>
        chunk_dir = sys.argv[1]
        output_sar = sys.argv[2] if len(sys.argv) > 2 else chunk_dir.replace("_extracted", ".sar")
        pack_sar(chunk_dir, output_sar)
    else:
        # Auto mode: pack all extracted directories
        print("=== SAR Packer ===\n")

        for base_name in ["zelres1", "zelres2", "zelres3"]:
            chunk_dir = f"{base_name}_extracted"
            output_sar = f"{base_name}.sar"

            if os.path.exists(chunk_dir):
                pack_sar(chunk_dir, output_sar)
                print()
            else:
                print(f"Warning: {chunk_dir} not found\n")

if __name__ == "__main__":
    main()
