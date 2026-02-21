import tkinter as tk
from tkinter import filedialog, messagebox
from PIL import Image, ImageTk, ImageDraw
import os
import file_logic, info_logic, tile_logic, edit_logic, view_logic, render_logic


class ZeliardGrpViewer:
    def __init__(self, root):
        self.root = root
        self.root.title("Zeliard GRP Viewer")
        self.root.geometry("1600x980")

        self.raw_data = "";
        self.tiles_list = []
        self.history = [];
        self.redo_stack = []
        self.is_modified = False;
        self.current_file_path = ""
        self.panels = []

        self.drag_start_idx = None
        self.floating_image_id = None
        self.floating_tile_img = None

        self.setup_ui()
        self.bind_shortcuts()
        self.root.protocol("WM_DELETE_WINDOW", self.on_closing)

    def setup_ui(self):
        # Main toolbar container (vertical pack)
        self.main_toolbar = tk.Frame(self.root, padx=5, pady=5, relief=tk.RAISED, bd=1)
        self.main_toolbar.pack(side=tk.TOP, fill=tk.X)

        # First row (file, file info)
        self.row1 = tk.Frame(self.main_toolbar)
        self.row1.pack(side=tk.TOP, fill=tk.X, pady=2)

        self.file_module = file_logic.FileModule(self.row1, self.load_file, self.save_file)
        self.info_module = info_logic.InfoModule(self.row1)

        # Second row (offset, edit, view)
        self.row2 = tk.Frame(self.main_toolbar)
        self.row2.pack(side=tk.TOP, fill=tk.X, pady=2)

        self.offset_module = tile_logic.OffsetModule(self.row2, self.process_data_to_tiles)
        self.edit_module = edit_logic.EditModule(self.row2, self.undo, self.redo, self.add_empty_tile)
        self.view_module = view_logic.ViewModule(self.row2, self.render)

        # Register panels for drag and drop
        for mod in [self.file_module, self.info_module, self.offset_module, self.edit_module, self.view_module]:
            self.register_panel(mod.frame)

        # Canvas and scrollbars
        container = tk.Frame(self.root)
        container.pack(fill=tk.BOTH, expand=True)

        self.canvas = tk.Canvas(container, bg="#1a1a1a", highlightthickness=0)
        self.v_scroll = tk.Scrollbar(container, orient=tk.VERTICAL, command=self.canvas.yview)
        self.h_scroll = tk.Scrollbar(self.root, orient=tk.HORIZONTAL, command=self.canvas.xview)

        self.canvas.configure(yscrollcommand=self.v_scroll.set, xscrollcommand=self.h_scroll.set)

        self.v_scroll.pack(side=tk.RIGHT, fill=tk.Y)
        self.canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        self.h_scroll.pack(side=tk.BOTTOM, fill=tk.X)

        self.canvas.bind("<Button-1>", self.on_click)
        self.canvas.bind("<B1-Motion>", self.on_drag)
        self.canvas.bind("<ButtonRelease-1>", self.on_drop)

    def register_panel(self, frame):
        self.panels.append(frame)
        label = frame.winfo_children()[0]
        label.config(cursor="fleur")
        label.bind("<Button-1>", lambda e: self.on_p_drag_start(e, frame))
        label.bind("<B1-Motion>", lambda e: self.on_p_drag_move(e, frame))

    def on_p_drag_start(self, event, frame):
        frame._drag_x = event.x

    def on_p_drag_move(self, event, frame):
        idx = self.panels.index(frame)
        # Move within same row only, or swap overall order ignoring rows
        if event.x > 30 and idx < len(self.panels) - 1:
            self.swap_panels(idx, idx + 1)
        elif event.x < -30 and idx > 0:
            self.swap_panels(idx, idx - 1)

    def swap_panels(self, i, j):
        self.panels[i], self.panels[j] = self.panels[j], self.panels[i]
        # Detach all panels then rearrange into 2-row layout
        for p in self.panels: p.pack_forget()

        # Panels 0-1 go in row1, panels 2-4 go in row2
        for idx, p in enumerate(self.panels):
            target_row = self.row1 if idx < 2 else self.row2
            p.master = target_row  # Update master frame if needed
            p.pack(side=tk.LEFT, padx=10)

    # ... (remaining functions: process_data_to_tiles, render, on_click etc.)

    def process_data_to_tiles(self):
        if not self.raw_data: return
        byte_offs, bit_offs = self.offset_module.get_settings()
        self.tiles_list = tile_logic.extract_tiles(self.raw_data, byte_offs, bit_offs)
        self.render()

    def render(self):
        if not self.tiles_list: return
        s_x, z, show_grid, mode = self.view_module.get_settings()
        s_y = (len(self.tiles_list) + s_x - 1) // s_x

        full_img = Image.new("RGB", (s_x * 16, s_y * 16), (30, 30, 30))
        for j, tile_hex in enumerate(self.tiles_list):
            tx, ty = (j % s_x) * 16, (j // s_x) * 16
            full_img.paste(render_logic.render_tile(tile_hex, mode), (tx, ty))

        resized = full_img.resize((s_x * 16 * z, s_y * 16 * z), Image.NEAREST)

        if show_grid and z > 1:
            draw = ImageDraw.Draw(resized)
            if z >= 4:
                for x in range(0, s_x * 16 * z, z):
                    draw.line([(x, 0), (x, s_y * 16 * z)], fill=(60, 60, 60) if x % (16 * z) else (110, 110, 110))
                for y in range(0, s_y * 16 * z, z):
                    draw.line([(0, y), (s_x * 16 * z, y)], fill=(60, 60, 60) if y % (16 * z) else (110, 110, 110))

        self.tk_img = ImageTk.PhotoImage(resized)
        self.canvas.delete("all")
        self.canvas.create_image(0, 0, anchor=tk.NW, image=self.tk_img)
        self.canvas.config(scrollregion=self.canvas.bbox("all"))
        self.update_all_info()

    def update_all_info(self):
        if not self.current_file_path: return
        size = os.path.getsize(self.current_file_path)
        name = os.path.basename(self.current_file_path)
        self.info_module.update_info(name, size, len(self.tiles_list), self.is_modified)

    def on_click(self, event):
        self.drag_start_idx = self.get_index_from_mouse(event)
        if self.drag_start_idx is not None:
            _, z, _, mode = self.view_module.get_settings()
            tile_data = self.tiles_list[self.drag_start_idx]
            float_img = render_logic.render_tile(tile_data, mode).resize((16 * z, 16 * z), Image.NEAREST)
            self.floating_tile_img = ImageTk.PhotoImage(float_img)
            self.floating_image_id = self.canvas.create_image(event.x, event.y, image=self.floating_tile_img)

    def on_drag(self, event):
        if self.floating_image_id: self.canvas.coords(self.floating_image_id, event.x, event.y)

    def on_drop(self, event):
        if self.floating_image_id: self.canvas.delete(self.floating_image_id); self.floating_image_id = None
        end_idx = self.get_index_from_mouse(event)
        if self.drag_start_idx is not None and end_idx is not None and self.drag_start_idx != end_idx:
            self.save_to_history()
            self.tiles_list[self.drag_start_idx], self.tiles_list[end_idx] = \
                self.tiles_list[end_idx], self.tiles_list[self.drag_start_idx]
            self.set_modified(True);
            self.render()
        self.drag_start_idx = None

    def get_index_from_mouse(self, event):
        s_x, z, _, _ = self.view_module.get_settings()
        cx, cy = self.canvas.canvasx(event.x), self.canvas.canvasy(event.y)
        col, row = int(cx // (16 * z)), int(cy // (16 * z))
        idx = row * s_x + col
        return idx if 0 <= idx < len(self.tiles_list) else None

    def undo(self):
        if self.history:
            self.redo_stack.append(list(self.tiles_list))
            self.tiles_list = self.history.pop();
            self.set_modified(True);
            self.render()

    def redo(self):
        if self.redo_stack:
            self.history.append(list(self.tiles_list))
            self.tiles_list = self.redo_stack.pop();
            self.set_modified(True);
            self.render()

    def add_empty_tile(self):
        self.save_to_history()
        self.tiles_list.append("0" * 64);
        self.set_modified(True);
        self.render()

    def save_to_history(self):
        self.history.append(list(self.tiles_list));
        self.redo_stack.clear()
        if len(self.history) > 50: self.history.pop(0)

    def load_file(self):
        p = filedialog.askopenfilename()
        if p:
            self.current_file_path = p
            with open(p, "rb") as f: self.raw_data = f.read().hex().upper()
            self.process_data_to_tiles()

    def save_file(self):
        p = filedialog.asksaveasfilename(defaultextension=".bin")
        if p:
            with open(p, "wb") as f: f.write(bytes.fromhex("".join(self.tiles_list)))
            self.set_modified(False)

    def set_modified(self, status=True):
        self.is_modified = status; self.update_all_info()

    def bind_shortcuts(self):
        self.root.bind("<Control-z>", lambda e: self.undo())
        self.root.bind("<Control-y>", lambda e: self.redo())

    def on_closing(self):
        if self.is_modified and not messagebox.askyesno("Quit", "There are unsaved changes. Quit without saving?"): return
        self.root.destroy()


if __name__ == "__main__":
    root = tk.Tk();
    app = ZeliardGrpViewer(root);
    root.mainloop()