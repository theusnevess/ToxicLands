// S011B - Visual atmosphere only.
// No audio, particle system, shader, or gameplay logic.

rain_count = 40;
rain_speed = 2.2;
rain_slant = 3;
rain_length = 9;
rain_offset = 0;

overlay_alpha = 0.07;
vignette_alpha = 0.10;
fog_alpha = 0.035;
rain_alpha = 0.27;

rain_x = array_create(rain_count, 0);
rain_y = array_create(rain_count, 0);

for (var i = 0; i < rain_count; i += 1) {
    rain_x[i] = irandom(max(1, room_width) - 1);
    rain_y[i] = irandom(max(1, room_height) - 1);
}
