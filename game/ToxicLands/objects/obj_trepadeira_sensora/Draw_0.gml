draw_self();

var previous_alpha = draw_get_alpha();
var previous_color = draw_get_color();

if (state == STATE_TELEGRAPH) {
    draw_set_alpha(0.35);
    draw_set_color(c_lime);
    draw_circle(x, y, attack_range, false);
}

if (plant_attack_active) {
    draw_set_alpha(0.35);
    draw_set_color(c_lime);
    draw_rectangle(
        plant_attack_x,
        plant_attack_y,
        plant_attack_x + plant_attack_w,
        plant_attack_y + plant_attack_h,
        false
    );
}

draw_set_alpha(previous_alpha);
draw_set_color(previous_color);
