import sys
from PIL import Image

def print_image(img_path):
    img = Image.open(img_path).convert("RGBA")
    width, height = img.size
    
    # Map colors to characters
    # Find bounding box
    min_x, min_y, max_x, max_y = width, height, 0, 0
    for y in range(height):
        for x in range(width):
            if img.getpixel((x, y))[3] > 0:
                min_x = min(min_x, x)
                min_y = min(min_y, y)
                max_x = max(max_x, x)
                max_y = max(max_y, y)
    
    color_map = {}
    chars = "X#*O0@o=-+:. "
    char_idx = 0
    
    print(f"\n--- {img_path} ---")
    for y in range(min_y, max_y + 1):
        line = []
        for x in range(min_x, max_x + 1):
            r, g, b, a = img.getpixel((x, y))
            if a == 0:
                line.append("  ")
            else:
                color = (r, g, b)
                if color not in color_map:
                    color_map[color] = chars[char_idx % len(chars)]
                    char_idx += 1
                c = color_map[color]
                # Try to use colors in terminal if possible, but for simple text just use chars
                line.append(f"{c}{c}")
        print("".join(line))
    
    print("\nColor Map:")
    for color, char in color_map.items():
        print(f"Char '{char}': RGB{color}")

import os
dir_path = "/home/matheusneves/Projetos/ToxicLands/game/ToxicLands/sprites/spr_saimon_run_up/"
files = sorted([f for f in os.listdir(dir_path) if f.endswith('.png')])
print_image(os.path.join(dir_path, files[0]))
