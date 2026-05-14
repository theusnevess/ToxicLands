draw_self();

if (attack_hitbox_active) {
    var previous_alpha = draw_get_alpha();
    var previous_color = draw_get_color();

    draw_set_alpha(0.35);
    draw_set_color(c_red);
    draw_rectangle(
        attack_hitbox_x,
        attack_hitbox_y,
        attack_hitbox_x + attack_hitbox_w,
        attack_hitbox_y + attack_hitbox_h,
        false
    );

    draw_set_alpha(previous_alpha);
    draw_set_color(previous_color);
}
