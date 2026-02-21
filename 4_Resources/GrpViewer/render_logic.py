# render_logic.py
from PIL import Image


def get_palette(mode):
    if mode == "VGA (Default)":
        # Zeliard default 4-color/8-color mixed palette
        return [(8, 8, 8), (255, 255, 255), (255, 0, 0), (0, 255, 0), (0, 0, 255), (255, 255, 0), (255, 0, 255),
                (0, 255, 255)]
    elif mode == "EGA (8-color)":
        return [(0, 0, 0), (0, 0, 170), (0, 170, 0), (0, 170, 170), (170, 0, 0), (170, 0, 170), (170, 85, 0),
                (170, 170, 170)]
    # ... (remaining modes same as above)
    return [(0, 0, 0), (255, 255, 255)]


def render_tile(tile_hex, mode):
    palette = get_palette(mode)
    tile_img = Image.new("RGB", (16, 16), (32, 64, 128))  # Background color
    px = tile_img.load()

    try:
        lines = [tile_hex[i:i + 8] for i in range(0, 64, 8)]
        for y, h in enumerate(lines):
            g = [int(h[i], 16) for i in range(8)]
            # Pixel bit combination logic (Zeliard GRP format)
            p = [(g[0] // 8) + (g[4] // 8) * 2, ((g[0] % 8) // 4) + ((g[4] % 8) // 4) * 2,
                 ((g[0] % 4) // 2) + ((g[4] % 4) // 2) * 2, (g[0] % 2) + (g[4] % 2) * 2,
                 (g[1] // 8) + (g[5] // 8) * 2, ((g[1] % 8) // 4) + ((g[5] % 8) // 4) * 2,
                 ((g[1] % 4) // 2) + ((g[5] % 4) // 2) * 2, (g[1] % 2) + (g[5] % 2) * 2,
                 (g[2] // 8) + (g[6] // 8) * 2, ((g[2] % 8) // 4) + ((g[6] % 8) // 4) * 2,
                 ((g[2] % 4) // 2) + ((g[6] % 4) // 2) * 2, (g[2] % 2) + (g[7] % 2) * 2,
                 (g[3] // 8) + (g[7] // 8) * 2, ((g[3] % 8) // 4) + ((g[7] % 8) // 4) * 2,
                 ((g[3] % 4) // 2) + ((g[7] % 4) // 2) * 2, (g[3] % 2) + (g[7] % 2) * 2]
            for x in range(16):
                c_idx = p[x] % len(palette)
                if p[x] != 0:
                    px[x, y * 2] = px[x, y * 2 + 1] = palette[c_idx]
                    # Outline drawing logic
                    if x > 0 and p[x - 1] == 0: px[x - 1, y * 2] = px[x - 1, y * 2 + 1] = (0, 0, 0)
                    if x < 15 and p[x + 1] == 0: px[x + 1, y * 2] = px[x + 1, y * 2 + 1] = (0, 0, 0)
                elif x > 0 and p[x - 1] != 0:
                    px[x, y * 2] = px[x, y * 2 + 1] = (0, 0, 0)
    except:
        pass
    return tile_img