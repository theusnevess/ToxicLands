visible = true;
sprite_index = spr_saimon_idle_proto;
mask_index = spr_saimon_placeholder;
image_alpha = 1;
image_blend = c_white;

collision_left = -12;
collision_right = 11;
collision_top = -40;
collision_bottom = 0;

// S013 - Minimal HUD readable values.
// Do not implement damage, death, filter drain, or status systems here.
hp_max = 3;
hp = hp_max;

filter_max = 100;
filter_value = filter_max;

// S014 - Basic player damage feedback.
hurt_invuln_timer = 0;
hurt_invuln_duration = 45;

hurt_flash_timer = 0;

// S016 - Minimal player failure state.
is_dead = false;

// S018B - Local reading lock for environmental log.
is_reading = false;

camera_width = 320;
camera_height = 180;
camera_border_x = 96;
camera_border_y = 54;

// S016 - Reset prototype loop flags on room start.
// This is local/minimal until a proper room/session manager exists.
global.has_filter_component = false;
global.mvp_loop_complete = false;

view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = camera_width;
view_hport[0] = camera_height;

camera_x = x - camera_width * 0.5;
camera_y = y - camera_height * 0.5;

camera_x = clamp(camera_x, 0, max(0, room_width - camera_width));
camera_y = clamp(camera_y, 0, max(0, room_height - camera_height));

camera_x = round(camera_x);
camera_y = round(camera_y);

camera_id = camera_create_view(
    camera_x,
    camera_y,
    camera_width,
    camera_height
);

view_camera[0] = camera_id;

facing_x = 0;
facing_y = 1;

is_attacking = false;
attack_timer = 0;
attack_duration = 12;

attack_cooldown = 0;
attack_cooldown_duration = 24;

attack_active_start = 4;
attack_active_end = 8;

attack_dir_x = 0;
attack_dir_y = 1;

attack_hitbox_active = false;
attack_hitbox_x = 0;
attack_hitbox_y = 0;
attack_hitbox_w = 0;
attack_hitbox_h = 0;
