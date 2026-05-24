// S014 - Minimal hurt feedback.
// No particles, no shake, no red screen, no hurt state.
if (hurt_flash_timer > 0) {
    if ((hurt_flash_timer div 3) mod 2 == 0) {
        draw_set_alpha(0.55);
        draw_self();
        draw_set_alpha(1);
    } else {
        draw_self();
    }
} else {
    draw_self();
}
