#!/usr/bin/env python3
"""Find all .grp/.bin/.msd filenames in chunk_00"""

def find_filenames(chunk_file):
    """Extract all filename strings"""

    with open(chunk_file, 'rb') as f:
        data = f.read()

    # Find all occurrences of .grp, .bin, .msd
    extensions = [b'.grp', b'.bin', b'.msd']
    filenames = []

    for ext in extensions:
        offset = 0
        while True:
            offset = data.find(ext, offset)
            if offset == -1:
                break

            # Extract filename (go backwards to find start)
            start = offset
            while start > 0 and 32 <= data[start-1] <= 126 and data[start-1] != 0:
                start -= 1

            # Extract the filename
            end = offset + len(ext)
            if end < len(data) and data[end] == 0:  # Null-terminated
                filename = data[start:end].decode('ascii', errors='ignore')
                if len(filename) > 3 and '/' not in filename and '\\' not in filename:
                    filenames.append((offset, filename))

            offset += 1

    # Sort by offset and remove duplicates
    filenames = sorted(set(filenames), key=lambda x: x[0])

    return filenames

def main():
    base = r"C:\Projects\Zeliard\2_SAR\ExtractedChunks"

    for archive in ["zelres1", "zelres2", "zelres3"]:
        chunk_00 = f"{base}\\{archive}_extracted\\chunk_00.bin"

        print(f"=== {archive.upper()} chunk_00 Filenames ===\n")

        filenames = find_filenames(chunk_00)

        if filenames:
            for offset, filename in filenames:
                print(f"Offset 0x{offset:04X}: {filename}")
            print(f"\nTotal: {len(filenames)} filenames")
        else:
            print("No filenames found")

        print("\n" + "="*60 + "\n")

if __name__ == "__main__":
    main()
