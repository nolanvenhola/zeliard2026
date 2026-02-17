#!/usr/bin/env python3
"""Extract chunk→filename mapping from zelres1 chunk_00"""

import struct

def extract_filenames(chunk_file, start_offset=0x353D):
    """Parse filename table from chunk_00"""

    with open(chunk_file, 'rb') as f:
        f.seek(start_offset)
        data = f.read(1000)  # Read enough to get all filenames

    filenames = []
    offset = 0

    while offset < len(data) - 20:
        # Check if we've hit the end (null bytes or invalid data)
        if data[offset] == 0 and data[offset+1] == 0:
            break

        try:
            # Parse entry (format seems to be: word, word, word, string)
            val1 = struct.unpack('<H', data[offset:offset+2])[0]
            val2 = struct.unpack('<H', data[offset+2:offset+4])[0]
            chunk_num = struct.unpack('<H', data[offset+4:offset+6])[0]

            # Read null-terminated filename
            filename_start = offset + 6
            filename_end = filename_start

            while filename_end < len(data) and data[filename_end] != 0:
                filename_end += 1

            if filename_end >= len(data):
                break

            filename = data[filename_start:filename_end].decode('ascii', errors='ignore')

            # Validate filename
            if '.' in filename and len(filename) < 30:
                filenames.append((chunk_num, filename, val1, val2))
                print(f"Chunk {chunk_num:2d} = {filename:15s} (vals: 0x{val1:04X}, 0x{val2:04X})")

            # Move to next entry
            offset = filename_end + 1

        except Exception as e:
            break

    return filenames

def main():
    chunk_00 = r"C:\Projects\Zeliard\2_SAR\ExtractedChunks\zelres1_extracted\chunk_00.bin"

    print("=== ZELRES1 Chunk->Filename Mapping ===\n")
    print("(Extracted from chunk_00 offset 0x353D)\n")

    filenames = extract_filenames(chunk_00)

    print(f"\n=== Summary ===")
    print(f"Found {len(filenames)} filename mappings")

    # Group by file type
    grp_files = [f for f in filenames if f[1].endswith('.grp')]
    bin_files = [f for f in filenames if f[1].endswith('.bin')]

    print(f"\n.grp files: {len(grp_files)}")
    print(f".bin files: {len(bin_files)}")

if __name__ == "__main__":
    main()
