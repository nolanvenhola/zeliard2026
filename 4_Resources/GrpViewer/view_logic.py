# view_logic.py
import tkinter as tk
from tkinter import ttk


class ViewModule:
    def __init__(self, parent, render_callback):
        self.render_callback = render_callback
        self.frame = tk.Frame(parent, relief=tk.GROOVE, bd=1, padx=5)
        self.frame.pack(side=tk.LEFT, padx=10)

        tk.Label(self.frame, text="[View]", font=('Arial', 9, 'bold')).pack(side=tk.LEFT, padx=5)

        tk.Label(self.frame, text="Mode:").pack(side=tk.LEFT)
        self.mode_var = tk.StringVar(value="VGA (Default)")
        modes = ["VGA (Default)", "EGA (8-color)", "MCGA (27-color)", "Tandy (16-color)", "CGA (4-color)",
                 "Hercules (2-color)"]
        self.mode_cb = ttk.Combobox(self.frame, textvariable=self.mode_var, values=modes, width=15, state="readonly")
        self.mode_cb.pack(side=tk.LEFT, padx=2)
        self.mode_cb.bind("<<ComboboxSelected>>", lambda e: self.render_callback())

        tk.Label(self.frame, text="Width:").pack(side=tk.LEFT)
        self.setX_var = tk.IntVar(value=32)
        tk.Spinbox(self.frame, from_=1, to=128, textvariable=self.setX_var, width=4, command=self.render_callback).pack(side=tk.LEFT, padx=2)

        tk.Label(self.frame, text="Zoom:").pack(side=tk.LEFT, padx=2)
        self.zoom_var = tk.IntVar(value=4)
        ttk.Combobox(self.frame, textvariable=self.zoom_var, values=[1, 2, 4, 8, 12], width=3, state="readonly").pack(side=tk.LEFT, padx=2)
        self.zoom_var.trace_add('write', lambda *args: self.render_callback())

        self.show_grid = tk.BooleanVar(value=True)
        tk.Checkbutton(self.frame, text="Grid", variable=self.show_grid, command=self.render_callback).pack(side=tk.LEFT, padx=5)

    def get_settings(self):
        return self.setX_var.get(), self.zoom_var.get(), self.show_grid.get(), self.mode_var.get()