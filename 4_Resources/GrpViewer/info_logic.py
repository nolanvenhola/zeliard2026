# info_logic.py
import tkinter as tk


class InfoModule:
    def __init__(self, parent):
        self.frame = tk.Frame(parent, relief=tk.GROOVE, bd=1, padx=5)
        self.frame.pack(side=tk.LEFT, padx=10)

        tk.Label(self.frame, text="[File Info]", font=('Arial', 9, 'bold')).pack(side=tk.LEFT, padx=5)

        self.name_var = tk.StringVar(value="File: None")
        self.size_var = tk.StringVar(value="Size: 0 KB")
        self.count_var = tk.StringVar(value="Tiles: 0")
        self.status_var = tk.StringVar(value="Status: -")

        tk.Label(self.frame, textvariable=self.name_var).pack(side=tk.LEFT, padx=5)
        tk.Label(self.frame, textvariable=self.size_var).pack(side=tk.LEFT, padx=5)
        tk.Label(self.frame, textvariable=self.count_var).pack(side=tk.LEFT, padx=5)

        # Store status label as instance variable to allow color changes
        self.status_label = tk.Label(self.frame, textvariable=self.status_var, font=('Arial', 9, 'bold'))
        self.status_label.pack(side=tk.LEFT, padx=5)

    def update_info(self, filename, filesize, tile_count, is_modified):
        name = filename if len(filename) < 20 else filename[:17] + "..."
        self.name_var.set(f"File: {name}")
        self.size_var.set(f"Size: {filesize / 1024:,.1f} KB")
        self.count_var.set(f"Tiles: {tile_count}")

        if is_modified:
            self.status_var.set("Status: ● Modified")
            self.status_label.config(fg="red")   # Red when modified
        else:
            self.status_var.set("Status: Saved")
            self.status_label.config(fg="green")  # Green when saved
