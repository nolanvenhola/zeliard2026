#!/usr/bin/env python3
"""
Simple constant searcher - looks for byte patterns in binaries.
No emulation needed - just searches for mov instructions with constants.
"""

import struct

def search_velocity_assignments(filename):
    """Search for: mov byte [0x8c], XX (VelocityY assignments)"""
    print(f"\nSearching {filename}...")

    with open(filename, 'rb') as f:
        data = f.read()

    # Pattern: C6 06 8C 00 XX = mov byte [0x8c], XX
    # Look for all instances
    found = []
    for i in range(len(data) - 4):
        if data[i:i+4] == b'\xC6\x06\x8C\x00':
            value = data[i+4] if data[i+4] < 128 else data[i+4] - 256  # Signed byte
            found.append((i, value))
            print(f"  Offset 0x{i:04X}: mov byte [0x8c], {value:4d}  (0x{data[i+4]:02X})")

    return found

def search_increment_operations(filename):
    """Search for: inc byte [0x8c] (gravity operations)"""
    print(f"\nSearching for inc byte [0x8c] in {filename}...")

    with open(filename, 'rb') as f:
        data = f.read()

    # Pattern: FE 06 8C 00 = inc byte [0x8c]
    found = []
    for i in range(len(data) - 3):
        if data[i:i+4] == b'\xFE\x06\x8C\x00':
            found.append(i)
            print(f"  Offset 0x{i:04X}: inc byte [0x8c]  (+1 to VelocityY)")

    return found

def search_add_operations(filename):
    """Search for: add byte [0x8c], XX (gravity with constant)"""
    print(f"\nSearching for add byte [0x8c] in {filename}...")

    with open(filename, 'rb') as f:
        data = f.read()

    # Pattern: 80 06 8C 00 XX = add byte [0x8c], XX
    found = []
    for i in range(len(data) - 4):
        if data[i:i+4] == b'\x80\x06\x8C\x00':
            value = data[i+4]
            found.append((i, value))
            print(f"  Offset 0x{i:04X}: add byte [0x8c], {value:4d}  (gravity +{value})")

    return found

def main():
    print("="*60)
    print("Zeliard Constant Binary Search")
    print("Searching for physics constants in raw binaries")
    print("="*60)

    base = r"c:\Projects\Zeliard\2_EXTRACTED_CHUNKS"

    chunks = [
        (f"{base}\\zelres1_extracted\\chunk_00.bin", "Player Core"),
        (f"{base}\\zelres1_extracted\\chunk_06.bin", "Player Advanced"),
        (f"{base}\\zelres2_extracted\\chunk_00.bin", "Main Game Loop"),
        (f"{base}\\zelres2_extracted\\chunk_03.bin", "Physics Subsystems"),
        (f"{base}\\zelres2_extracted\\chunk_04.bin", "Tile Animation"),
    ]

    all_results = {}

    for chunk_path, name in chunks:
        print(f"\n{'='*60}")
        print(f"Chunk: {name}")
        print(f"{'='*60}")

        try:
            # Search for velocity assignments
            vel_assigns = search_velocity_assignments(chunk_path)
            if vel_assigns:
                all_results.setdefault('velocity_assignments', []).extend(
                    [(name, offset, val) for offset, val in vel_assigns]
                )

            # Search for increments (gravity)
            increments = search_increment_operations(chunk_path)
            if increments:
                all_results.setdefault('gravity_increments', []).extend(
                    [(name, offset) for offset in increments]
                )

            # Search for add operations
            adds = search_add_operations(chunk_path)
            if adds:
                all_results.setdefault('gravity_adds', []).extend(
                    [(name, offset, val) for offset, val in adds]
                )

        except FileNotFoundError:
            print(f"  [SKIP] File not found")

    # Summary
    print(f"\n{'='*60}")
    print("SUMMARY")
    print(f"{'='*60}")

    if 'velocity_assignments' in all_results:
        print("\nJump Velocities Found:")
        for chunk, offset, value in all_results['velocity_assignments']:
            print(f"  {chunk:20} 0x{offset:04X}: VelocityY = {value:4d}")

    if 'gravity_increments' in all_results:
        print("\nGravity Operations (inc byte [0x8c]):")
        for chunk, offset in all_results['gravity_increments']:
            print(f"  {chunk:20} 0x{offset:04X}: +1 gravity")

    if 'gravity_adds' in all_results:
        print("\nGravity Operations (add byte [0x8c]):")
        for chunk, offset, value in all_results['gravity_adds']:
            print(f"  {chunk:20} 0x{offset:04X}: +{value} gravity")

    print(f"\n{'='*60}")
    print("INTERPRETATION")
    print(f"{'='*60}")

    # Interpret results
    if 'velocity_assignments' in all_results:
        values = [val for _, _, val in all_results['velocity_assignments'] if val < 0]
        if values:
            print(f"\nJump velocities found: {values}")
            print(f"  Most negative: {min(values)} (likely double jump)")
            if len(values) > 1:
                values_sorted = sorted(values, reverse=True)
                print(f"  Less negative: {values_sorted[-2] if len(values_sorted) > 1 else 'N/A'} (likely normal jump)")

if __name__ == "__main__":
    main()
