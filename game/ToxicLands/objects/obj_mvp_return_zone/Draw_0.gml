var previous_alpha = draw_get_alpha();
var previous_color = draw_get_color();

draw_set_alpha(0.12);
draw_set_color(make_color_rgb(54, 90, 86));
draw_rectangle(
    x - zone_w * 0.5,
    y - zone_h * 0.5,
    x + zone_w * 0.5,
    y + zone_h * 0.5,
    true
);

if (global.mvp_loop_complete) {
    draw_set_alpha(1);
    draw_set_color(c_lime);
    draw_text(x - 36, y - 56, "LOOP COMPLETE");
}

draw_set_alpha(previous_alpha);
draw_set_color(previous_color);
