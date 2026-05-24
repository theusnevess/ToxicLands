import os
import sys
from PIL import Image
from collections import Counter

dir_path = "/home/matheusneves/Projetos/ToxicLands/game/ToxicLands/sprites/spr_saimon_run_up/"
files = [f for f in os.listdir(dir_path) if f.endswith('.png')]

all_colors = Counter()

for file in files:
    img = Image.open(os.path.join(dir_path, file)).convert("RGBA")
    for pixel in img.getdata():
        if pixel[3] > 0: # not transparent
            all_colors[pixel] += 1

print("Colors sorted by frequency:")
for color, count in all_colors.most_common():
    print(f"Color {color}: {count} pixels")

