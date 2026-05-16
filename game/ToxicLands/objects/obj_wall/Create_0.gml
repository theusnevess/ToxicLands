var grid_x = floor(x / 32);
var grid_y = floor(y / 32);
wall_seed = abs(grid_x * 17 + grid_y * 31);

image_speed = 0;
image_index = wall_seed mod 4;
