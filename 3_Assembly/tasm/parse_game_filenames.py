#!/usr/bin/env python3
"""Parse filename→chunk mappings from GAME.ASM"""

import re

def parse_game_asm(asm_file):
    """Extract filename references and their associated chunk numbers"""

    with open(asm_file, 'r', encoding='latin-1') as f:
        lines = f.readlines()

    mappings = []

    for i, line in enumerate(lines):
        # Look for lines with filenames
        match = re.search(r"'([a-z0-9]+\.(grp|bin|msd))'", line, re.IGNORECASE)
        if match:
            filename = match.group(1)
            chunk_num = None

            # Try to extract chunk number from same line: db XXh, 'filename'
            byte_match = re.search(r'db\s+([0-9A-Fa-fx]+)h?,\s*\'', line)
            if byte_match:
                chunk_str = byte_match.group(1).replace('h', '').replace('H', '').replace('0x', '')
                try:
                    chunk_num = int(chunk_str, 16) if chunk_str else None
                except:
                    pass

            # If not found on same line, check previous line for a standalone number
            if chunk_num is None and i > 0:
                prev_line = lines[i-1]
                # Look for: db XX or db XXh at end of previous line
                prev_match = re.search(r'db\s+([0-9A-Fa-fx]+)h?\s*$', prev_line)
                if prev_match:
                    chunk_str = prev_match.group(1).replace('h', '').replace('H', '').replace('0x', '')
                    try:
                        chunk_num = int(chunk_str, 16) if chunk_str else None
                    except:
                        pass

            if chunk_num is not None and chunk_num < 40:
                mappings.append((chunk_num, filename, i+1))

    return mappings

def main():
    game_asm = r"C:\Projects\Zeliard\3_Assembly\tasm\source\GAME.ASM"

    print("=== GAME.ASM Filename->Chunk Cross-Reference ===\n")

    mappings = parse_game_asm(game_asm)

    # Sort by chunk number
    mappings.sort()

    print(f"{'Chunk':<8} {'Filename':<20} {'Line':<8}")
    print("-" * 40)

    for chunk, filename, line in mappings:
        print(f"{chunk:<8} {filename:<20} {line:<8}")

    print(f"\nTotal: {len(mappings)} filename->chunk mappings found")

    # Group by file type
    grp_files = [m for m in mappings if m[1].endswith('.grp')]
    bin_files = [m for m in mappings if m[1].endswith('.bin')]
    msd_files = [m for m in mappings if m[1].endswith('.msd')]

    print(f"\n.grp files: {len(grp_files)}")
    print(f".bin files: {len(bin_files)}")
    print(f".msd files: {len(msd_files)}")

if __name__ == "__main__":
    main()
