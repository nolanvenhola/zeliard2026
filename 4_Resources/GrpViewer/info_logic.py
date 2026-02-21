# info_logic.py
import tkinter as tk


class InfoModule:
    def __init__(self, parent):
        self.frame = tk.Frame(parent, relief=tk.GROOVE, bd=1, padx=5)
        self.frame.pack(side=tk.LEFT, padx=10)

        tk.Label(self.frame, text="[파일정보]", font=('Malgun Gothic', 9, 'bold')).pack(side=tk.LEFT, padx=5)

        self.name_var = tk.StringVar(value="파일: 없음")
        self.size_var = tk.StringVar(value="크기: 0 KB")
        self.count_var = tk.StringVar(value="타일들: 0개")
        self.status_var = tk.StringVar(value="상태: -")

        tk.Label(self.frame, textvariable=self.name_var).pack(side=tk.LEFT, padx=5)
        tk.Label(self.frame, textvariable=self.size_var).pack(side=tk.LEFT, padx=5)
        tk.Label(self.frame, textvariable=self.count_var).pack(side=tk.LEFT, padx=5)

        # 상태 레이블을 인스턴스 변수로 저장하여 색상 변경 가능하게 함
        self.status_label = tk.Label(self.frame, textvariable=self.status_var, font=('Malgun Gothic', 9, 'bold'))
        self.status_label.pack(side=tk.LEFT, padx=5)

    def update_info(self, filename, filesize, tile_count, is_modified):
        name = filename if len(filename) < 20 else filename[:17] + "..."
        self.name_var.set(f"파일: {name}")
        self.size_var.set(f"크기: {filesize / 1024:,.1f} KB")
        self.count_var.set(f"타일들: {tile_count}개")

        if is_modified:
            self.status_var.set("상태: ● 수정됨")
            self.status_label.config(fg="red")  # 수정 시 빨간색 강조
        else:
            self.status_var.set("상태: 정상이미지")
            self.status_label.config(fg="green")  # 정상 시 녹색