# tile_logic.py
import tkinter as tk  # <-- 이 줄이 누락되어 에러가 발생했습니다.


class OffsetModule:
    def __init__(self, parent, render_callback):
        self.render_callback = render_callback
        # 오프셋 패널 (움푹 들어간 효과)
        self.frame = tk.Frame(parent, relief=tk.GROOVE, bd=1, padx=5)
        self.frame.pack(side=tk.LEFT, padx=10)

        tk.Label(self.frame, text="[오프셋]", font=('Malgun Gothic', 9, 'bold')).pack(side=tk.LEFT, padx=5)

        # 바이트 오프셋 설정
        tk.Label(self.frame, text="Byte:").pack(side=tk.LEFT)
        self.byte_var = tk.IntVar(value=0)
        self.byte_spin = tk.Spinbox(self.frame, from_=0, to=9999999, textvariable=self.byte_var, width=8,
                                    command=self.render_callback)
        self.byte_spin.pack(side=tk.LEFT, padx=2)

        # 비트 오프셋 설정 (0~7)
        tk.Label(self.frame, text="Bit:").pack(side=tk.LEFT, padx=(5, 0))
        self.bit_var = tk.IntVar(value=0)
        self.bit_spin = tk.Spinbox(self.frame, from_=0, to=7, textvariable=self.bit_var, width=2,
                                   command=self.render_callback)
        self.bit_spin.pack(side=tk.LEFT, padx=2)

        # 초기화 버튼 (복원됨)
        tk.Button(self.frame, text="초기화", command=self.reset_offsets, bg="#f0f0f0").pack(side=tk.LEFT, padx=5)

        # 미세 조정 버튼들(들) (<, >)
        btn_frame = tk.Frame(self.frame)
        btn_frame.pack(side=tk.LEFT, padx=5)
        tk.Button(btn_frame, text="<", command=lambda: self.shift_bit(-1), width=2).pack(side=tk.LEFT)
        tk.Button(btn_frame, text=">", command=lambda: self.shift_bit(1), width=2).pack(side=tk.LEFT)

    def reset_offsets(self):
        """오프셋을 0으로 초기화하고 즉시 반영합니다."""
        self.byte_var.set(0)
        self.bit_var.set(0)
        self.render_callback()

    def shift_bit(self, delta):
        """비트 단위로 오프셋을 이동시킵니다."""
        total_bits = self.byte_var.get() * 8 + self.bit_var.get() + delta
        if total_bits < 0: total_bits = 0
        self.byte_var.set(total_bits // 8)
        self.bit_var.set(total_bits % 8)
        self.render_callback()

    def get_settings(self):
        return self.byte_var.get(), self.bit_var.get()


def extract_tiles(raw_hex, byte_offs, bit_offs):
    """실제 바이너리 데이터에서 타일들(들)을 추출하는 로직"""
    # 1. 헥사 문자열을 비트 스트림으로 변환
    binary_str = bin(int(raw_hex, 16))[2:].zfill(len(raw_hex) * 4)

    # 2. 지정된 오프셋만큼 스킵
    start_bit = (byte_offs * 8) + bit_offs
    data_to_process = binary_str[start_bit:]

    # 3. 64바이트(512비트) 단위로 타일 분할 (젤리아드 GRP 기준)
    tiles = []
    tile_size_bits = 64 * 8
    for i in range(0, len(data_to_process), tile_size_bits):
        chunk = data_to_process[i:i + tile_size_bits]
        if len(chunk) < tile_size_bits: break

        # 비트를 다시 헥사로 변환하여 저장
        tile_hex = hex(int(chunk, 2))[2:].upper().zfill(128)
        tiles.append(tile_hex[:64])  # 필요한 데이터 길이에 맞춰 조절
    return tiles