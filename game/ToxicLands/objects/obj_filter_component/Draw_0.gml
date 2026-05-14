draw_self();

if (can_collect) {
    var previous_alpha = draw_get_alpha();
    var previous_color = draw_get_color();

    draw_set_alpha(0.35);
    draw_set_color(c_lime);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);

    draw_set_alpha(previous_alpha);
    draw_set_color(previous_color);
}
