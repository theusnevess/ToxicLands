var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

if (gui_width <= 0) {
    gui_width = 320;
}

if (gui_height <= 0) {
    gui_height = 180;
}

var previous_alpha = draw_get_alpha();
var previous_color = draw_get_color();

draw_set_alpha(overlay_alpha);
draw_set_color(make_color_rgb(6, 8, 7));
draw_rectangle(0, 0, gui_width, gui_height, false);

draw_set_alpha(vignette_alpha);
draw_set_color(make_color_rgb(3, 4, 3));
draw_rectangle(0, 0, gui_width, 14, false);
draw_rectangle(0, gui_height - 14, gui_width, gui_height, false);
draw_rectangle(0, 0, 14, gui_height, false);
draw_rectangle(gui_width - 14, 0, gui_width, gui_height, false);

draw_set_alpha(fog_alpha);
draw_set_color(make_color_rgb(28, 34, 29));
draw_rectangle(0, gui_height * 0.18, gui_width, gui_height * 0.38, false);
draw_set_alpha(fog_alpha * 0.7);
draw_rectangle(0, gui_height * 0.58, gui_width, gui_height * 0.76, false);

draw_set_alpha(rain_alpha);
draw_set_color(make_color_rgb(58, 66, 61));

var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);
var camera_width = camera_get_view_width(view_camera[0]);
var camera_height = camera_get_view_height(view_camera[0]);

if (camera_width <= 0) {
    camera_width = 320;
}

if (camera_height <= 0) {
    camera_height = 180;
}

var gui_scale_x = gui_width / camera_width;
var gui_scale_y = gui_height / camera_height;

for (var i = 0; i < rain_count; i += 1) {
    var drop_length = rain_length + (i mod 3);
    var drop_slant = rain_slant + ((i mod 3) - 1);
    var rain_world_x = (rain_x[i] + (rain_offset * 0.22) + (i * 13)) mod room_width;
    var rain_world_y = (rain_y[i] + rain_offset + (i * 7)) mod room_height;
    var rain_draw_x = round((rain_world_x - camera_x) * gui_scale_x);
    var rain_draw_y = round((rain_world_y - camera_y) * gui_scale_y);

    if (
        rain_draw_x > -16 &&
        rain_draw_x < gui_width + 16 &&
        rain_draw_y > -16 &&
        rain_draw_y < gui_height + 16
    ) {
        draw_line(
            rain_draw_x,
            rain_draw_y,
            rain_draw_x + round(drop_slant * gui_scale_x),
            rain_draw_y + round(drop_length * gui_scale_y)
        );
    }
}

draw_set_alpha(previous_alpha);
draw_set_color(previous_color);
