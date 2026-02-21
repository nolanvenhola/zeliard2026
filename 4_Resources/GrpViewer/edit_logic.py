# edit_logic.py
import tkinter as tk

class EditModule:
    def __init__(self, parent, undo_callback, redo_callback, add_callback):
        self.frame = tk.Frame(parent, relief=tk.GROOVE, bd=1, padx=5)
        self.frame.pack(side=tk.LEFT, padx=10)

        tk.Label(self.frame, text="[편집]", font=('Malgun Gothic', 9, 'bold')).pack(side=tk.LEFT, padx=5)

        tk.Button(self.frame, text="⟲", width=3, command=undo_callback).pack(side=tk.LEFT, padx=2)
        tk.Button(self.frame, text="⟳", width=3, command=redo_callback).pack(side=tk.LEFT, padx=2)
        tk.Button(self.frame, text="+ 빈 타일", command=add_callback, bg="#f0f0f0").pack(side=tk.LEFT, padx=5)