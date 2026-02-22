"""
export_decompiled.py - Export all decompiled functions from Cutter to a .c file

Run from Cutter's Python Console:
  exec(open(r"C:\Projects\Zeliard\3_Assembly\cutter\export_decompiled.py").read())

Output: cutter/working/<module_name>.c
"""

import cutter
import os
import re

WORKING_BASE = r"C:\Projects\Zeliard\3_Assembly\cutter\working"

def strip_ansi(text):
    return re.sub(r'\x1b\[[0-9;]*[mGKHFJ]', '', text)

def export_current_binary():
    core = cutter.core()

    # Get current file info
    info = core.cmdj("ij")
    binary_path = info.get("core", {}).get("file", "unknown")
    binary_name = os.path.splitext(os.path.basename(binary_path))[0].lower()

    # Determine output path based on known module names
    module_map = {
        "zeliad":              "core/zeliad",
        "chunk_00_zelres1":    "zelres1/code/opening_scene",
        "chunk_00_zelres2":    "zelres2/code/main_game_loop",
        # Add more as needed, or just use binary_name
    }
    module_path = module_map.get(binary_name, binary_name)
    out_c = os.path.join(WORKING_BASE, module_path + ".c")
    os.makedirs(os.path.dirname(out_c), exist_ok=True)

    # Get all functions
    functions = core.cmdj("aflj") or []
    print(f"Found {len(functions)} functions in {binary_name}")

    lines = []
    lines.append(f"/* {binary_name.upper()} - Ghidra decompilation via Cutter */")
    lines.append(f"/* Source: {binary_path} */")
    lines.append(f"/* Functions: {len(functions)} */")
    lines.append(f"/* 16-bit x86 real mode. CS:0x10C = chunk loader, 0xFF00+ = game state globals */")
    lines.append(f"")

    for i, fn in enumerate(functions):
        addr = fn.get("offset", 0)
        name = fn.get("name", f"fcn_{addr:08x}")
        size = fn.get("size", 0)

        print(f"  [{i+1}/{len(functions)}] Decompiling {name} @ 0x{addr:04x} ({size} bytes)...")

        # Seek to function and decompile with rz-ghidra
        core.cmd(f"s 0x{addr:x}")
        decomp = strip_ansi(core.cmd("pdg"))

        lines.append(f"/* ---- {name} @ 0x{addr:04x} ({size} bytes) ---- */")
        lines.append(decomp.strip())
        lines.append(f"")

    with open(out_c, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    size_kb = os.path.getsize(out_c) / 1024
    print(f"\nSaved: {out_c} ({size_kb:.1f} KB)")
    return out_c

# Run it
result = export_current_binary()
print(f"Done! Open: {result}")
