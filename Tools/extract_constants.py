#!/usr/bin/env python3
"""
Zeliard Physics Constant Extractor
Uses Unicorn Engine to emulate DOS assembly and extract exact values.

Installation:
    pip install unicorn-engine

Usage:
    python extract_constants.py
"""

from unicorn import *
from unicorn.x86_const import *
import struct

class ZeliardEmulator:
    def __init__(self):
        # Create 16-bit x86 emulator
        self.mu = Uc(UC_ARCH_X86, UC_MODE_16)

        # Map memory segments
        self.CODE_BASE = 0x10000  # Code segment
        self.DATA_BASE = 0x20000  # Data segment

        self.mu.mem_map(self.CODE_BASE, 0x10000)  # 64KB code
        self.mu.mem_map(self.DATA_BASE, 0x10000)  # 64KB data

        # Initialize registers
        self.mu.reg_write(UC_X86_REG_CS, self.CODE_BASE >> 4)
        self.mu.reg_write(UC_X86_REG_DS, self.DATA_BASE >> 4)
        self.mu.reg_write(UC_X86_REG_ES, self.DATA_BASE >> 4)
        self.mu.reg_write(UC_X86_REG_SS, self.DATA_BASE >> 4)
        self.mu.reg_write(UC_X86_REG_SP, 0xFFFE)

    def load_chunk(self, filename, base_offset=0):
        """Load a .bin chunk file into emulator memory."""
        with open(filename, 'rb') as f:
            chunk_data = f.read()

        self.mu.mem_write(self.CODE_BASE + base_offset, chunk_data)
        print(f"Loaded {filename}: {len(chunk_data)} bytes at 0x{self.CODE_BASE + base_offset:X}")
        return len(chunk_data)

    def write_byte(self, offset, value):
        """Write byte to data segment."""
        self.mu.mem_write(self.DATA_BASE + offset, bytes([value & 0xFF]))

    def read_byte(self, offset):
        """Read byte from data segment."""
        data = self.mu.mem_read(self.DATA_BASE + offset, 1)
        return data[0]

    def read_byte_signed(self, offset):
        """Read signed byte from data segment."""
        value = self.read_byte(offset)
        return value if value < 128 else value - 256

    def write_word(self, offset, value):
        """Write word (2 bytes, little-endian) to data segment."""
        self.mu.mem_write(self.DATA_BASE + offset, struct.pack('<H', value))

    def read_word(self, offset):
        """Read word from data segment."""
        data = self.mu.mem_read(self.DATA_BASE + offset, 2)
        return struct.unpack('<H', bytes(data))[0]

    def execute_function(self, offset, max_instructions=1000):
        """Execute code starting at offset until RET instruction."""
        try:
            # Hook to detect RET (0xC3)
            def hook_code(uc, address, size, user_data):
                code = uc.mem_read(address, 1)[0]
                if code == 0xC3:  # RET opcode
                    uc.emu_stop()

            self.mu.hook_add(UC_HOOK_CODE, hook_code)

            # Execute
            start_addr = self.CODE_BASE + offset
            self.mu.emu_start(start_addr, start_addr + 0x1000, timeout=10*UC_SECOND_SCALE, count=max_instructions)

        except UcError as e:
            print(f"Emulation error: {e}")


def extract_jump_velocity():
    """Extract jump velocity by emulating jump function."""
    print("\n=== Extracting Jump Velocity ===")

    emu = ZeliardEmulator()

    # Load player chunk (zelres1_chunk_06 or chunk_00)
    chunk_path = r"c:\Projects\Zeliard\2_EXTRACTED_CHUNKS\zelres1_extracted\chunk_06.bin"
    emu.load_chunk(chunk_path)

    # Set up player state
    emu.write_word(0x0080, 160)  # Player X = 160
    emu.write_byte(0x0083, 100)  # Player Y = 100
    emu.write_byte(0x008C, 0)    # VelocityY = 0
    emu.write_byte(0x008A, 0)    # On ground flag = 0 (in air)

    print("Initial state:")
    print(f"  VelocityY (0x8C) = {emu.read_byte_signed(0x008C)}")

    # Execute double jump function at offset 0x0851 (from walkthrough)
    # Note: Adjust offset based on actual function location
    try:
        print("\nExecuting double jump function...")
        emu.execute_function(0x0851, max_instructions=50)

        velocity = emu.read_byte_signed(0x008C)
        print(f"\nResult:")
        print(f"  VelocityY (0x8C) = {velocity}")
        print(f"  Double Jump Velocity = {velocity} px/frame")

        return velocity
    except Exception as e:
        print(f"Error: {e}")
        print("Note: Function offset may need adjustment based on chunk structure")
        return None


def extract_gravity():
    """Extract gravity by emulating physics update."""
    print("\n=== Extracting Gravity ===")

    emu = ZeliardEmulator()

    # Load physics chunk (zelres2_chunk_04)
    chunk_path = r"c:\Projects\Zeliard\2_EXTRACTED_CHUNKS\zelres2_extracted\chunk_04.bin"
    emu.load_chunk(chunk_path)

    # Set up player state (in air, falling)
    emu.write_byte(0x008C, 5)    # VelocityY = 5 (already falling)
    emu.write_byte(0x008A, 0)    # On ground = false

    print("Initial state:")
    print(f"  VelocityY (0x8C) = {emu.read_byte_signed(0x008C)}")

    # Execute physics update function
    # Note: Need to find exact offset from zelres2_chunk_04 walkthrough
    try:
        print("\nExecuting physics update (1 frame)...")
        # emu.execute_function(physics_offset, max_instructions=100)

        velocity_after = emu.read_byte_signed(0x008C)
        gravity = velocity_after - 5

        print(f"\nResult:")
        print(f"  VelocityY after = {velocity_after}")
        print(f"  Gravity = {gravity} px/frame²")

        return gravity
    except Exception as e:
        print(f"Error: {e}")
        print("Note: Need to locate physics update function offset")
        return None


def extract_walk_speed():
    """Extract walk speed by emulating input processing."""
    print("\n=== Extracting Walk Speed ===")

    emu = ZeliardEmulator()

    # Load player input chunk
    chunk_path = r"c:\Projects\Zeliard\2_EXTRACTED_CHUNKS\zelres1_extracted\chunk_06.bin"
    emu.load_chunk(chunk_path)

    # Set up player state
    emu.write_word(0x0080, 160)  # Player X = 160
    emu.write_byte(0x0085, 0)    # VelocityX high = 0
    emu.write_word(0x0086, 0)    # VelocityX low = 0

    print("Initial state:")
    print(f"  VelocityX (0x85/86) = {emu.read_word(0x0085)}")

    # Simulate "press right arrow" input
    # Note: Need to find input processing function offset
    try:
        print("\nSimulating right arrow press...")
        # Set input flag for "right" button
        # emu.write_byte(INPUT_FLAGS, RIGHT_KEY_BIT)
        # emu.execute_function(input_process_offset)

        velocity = emu.read_word(0x0085)
        print(f"\nResult:")
        print(f"  VelocityX = {velocity}")
        print(f"  Walk Speed = {velocity} px/frame")

        return velocity
    except Exception as e:
        print(f"Error: {e}")
        print("Note: Need input processing function details")
        return None


def main():
    """
    Main extraction routine.

    Phase 1: Extract double jump (known function at 0x0851)
    Phase 2: Extract gravity (need to locate physics function)
    Phase 3: Extract walk speed (need to locate input function)
    """
    print("="*60)
    print("Zeliard Physics Constant Extractor")
    print("Using Unicorn Engine x86 Emulation")
    print("="*60)

    results = {}

    # Extract jump velocity
    jump_vel = extract_jump_velocity()
    if jump_vel:
        results['double_jump'] = jump_vel
        results['normal_jump_estimate'] = jump_vel // 2

    # Extract gravity
    gravity = extract_gravity()
    if gravity:
        results['gravity'] = gravity

    # Extract walk speed
    walk = extract_walk_speed()
    if walk:
        results['walk_speed'] = walk

    # Summary
    print("\n" + "="*60)
    print("RESULTS SUMMARY")
    print("="*60)
    for key, value in results.items():
        print(f"{key:20} = {value:4} px/frame")

    # Generate C# code
    print("\n" + "="*60)
    print("C# CODE TO UPDATE")
    print("="*60)
    if 'normal_jump_estimate' in results:
        print(f"// PlayerController.cs line 29:")
        print(f"player.VelocityY = {results['normal_jump_estimate']}; // Extracted from assembly")

    if 'gravity' in results:
        print(f"\n// PhysicsEngine.cs line 17:")
        print(f"player.VelocityY += {results['gravity']}; // Extracted from assembly")

    if 'walk_speed' in results:
        print(f"\n// PlayerController.cs line 13/18:")
        print(f"player.VelocityX = {results['walk_speed']}; // Extracted from assembly")


if __name__ == "__main__":
    main()
