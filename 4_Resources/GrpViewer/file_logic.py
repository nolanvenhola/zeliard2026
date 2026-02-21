# file_logic.py
import tkinter as tk


class FileModule:
    def __init__(self, parent, load_callback, save_callback):
        self.frame = tk.Frame(parent, relief=tk.GROOVE, bd=1, padx=5)
        self.frame.pack(side=tk.LEFT, padx=10)

        # 앞에 [파일] 레이블 추가
        tk.Label(self.frame, text="[파일]", font=('Malgun Gothic', 9, 'bold')).pack(side=tk.LEFT, padx=5)

        tk.Button(self.frame, text="열기", command=load_callback).pack(side=tk.LEFT, padx=2)
        tk.Button(self.frame, text="저장", command=save_callback, bg="#ffffcc").pack(side=tk.LEFT, padx=2)