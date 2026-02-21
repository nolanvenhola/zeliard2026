# tile_logic.py
import tkinter as tk  # Required for Spinbox and Frame widgets


class OffsetModule:
    def __init__(self, parent, render_callback):
        self.render_callback = render_callback
        # Offset panel (grooved border effect)
        self.frame = tk.Frame(parent, relief=tk.GROOVE, bd=1, padx=5)
        self.frame.pack(side=tk.LEFT, padx=10)

        tk.Label(self.frame, text="[Offset]", font=('Arial', 9, 'bold')).pack(side=tk.LEFT, padx=5)

        # Byte offset setting
        tk.Label(self.frame, text="Byte:").pack(side=tk.LEFT)
        self.byte_var = tk.IntVar(value=0)
        self.byte_spin = tk.Spinbox(self.frame, from_=0, to=9999999, textvariable=self.byte_var, width=8,
                                    command=self.render_callback)
        self.byte_spin.pack(side=tk.LEFT, padx=2)

        # Bit offset setting (0-7)
        tk.Label(self.frame, text="Bit:").pack(side=tk.LEFT, padx=(5, 0))
        self.bit_var = tk.IntVar(value=0)
        self.bit_spin = tk.Spinbox(self.frame, from_=0, to=7, textvariable=self.bit_var, width=2,
                                   command=self.render_callback)
        self.bit_spin.pack(side=tk.LEFT, padx=2)

        # Reset button
        tk.Button(self.frame, text="Reset", command=self.reset_offsets, bg="#f0f0f0").pack(side=tk.LEFT, padx=5)

        # Fine-tune buttons (< and >)
        btn_frame = tk.Frame(self.frame)
        btn_frame.pack(side=tk.LEFT, padx=5)
        tk.Button(btn_frame, text="<", command=lambda: self.shift_bit(-1), width=2).pack(side=tk.LEFT)
        tk.Button(btn_frame, text=">", command=lambda: self.shift_bit(1), width=2).pack(side=tk.LEFT)

    def reset_offsets(self):
        """Reset offsets to 0 and re-render immediately."""
        self.byte_var.set(0)
        self.bit_var.set(0)
        self.render_callback()

    def shift_bit(self, delta):
        """Shift offset by one bit."""
        total_bits = self.byte_var.get() * 8 + self.bit_var.get() + delta
        if total_bits < 0: total_bits = 0
        self.byte_var.set(total_bits // 8)
        self.bit_var.set(total_bits % 8)
        self.render_callback()

    def get_settings(self):
        return self.byte_var.get(), self.bit_var.get()


def extract_tiles(raw_hex, byte_offs, bit_offs):
    """Extract tiles from raw binary data."""
    # 1. Convert hex string to bit stream
    binary_str = bin(int(raw_hex, 16))[2:].zfill(len(raw_hex) * 4)

    # 2. Skip to specified offset
    start_bit = (byte_offs * 8) + bit_offs
    data_to_process = binary_str[start_bit:]

    # 3. Split into 64-byte (512-bit) tiles (Zeliard GRP format)
    tiles = []
    tile_size_bits = 64 * 8
    for i in range(0, len(data_to_process), tile_size_bits):
        chunk = data_to_process[i:i + tile_size_bits]
        if len(chunk) < tile_size_bits: break

        # Convert bits back to hex and store
        tile_hex = hex(int(chunk, 2))[2:].upper().zfill(128)
        tiles.append(tile_hex[:64])  # Trim to required data length
    return tiles