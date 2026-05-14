var move_x = 0;
var move_y = 0;

if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {
    move_x -= 1;
}

if (keyboard_check(ord("D")) || keyboard_check(vk_right)) {
    move_x += 1;
}

if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {
    move_y -= 1;
}

if (keyboard_check(ord("S")) || keyboard_check(vk_down)) {
    move_y += 1;
}

if (move_x != 0 || move_y != 0) {
    facing_x = move_x;
    facing_y = move_y;
}

if (!is_attacking && attack_cooldown <= 0) {
    if (keyboard_check_pressed(vk_space)) {
        is_attacking = true;
        attack_timer = 0;
        attack_cooldown = attack_cooldown_duration;

        attack_dir_x = facing_x;
        attack_dir_y = facing_y;

        if (attack_dir_x == 0 && attack_dir_y == 0) {
            attack_dir_x = 0;
            attack_dir_y = 1;
        }
    }
}

if (is_attacking) {
    attack_timer += 1;

    if (attack_timer >= attack_duration) {
        is_attacking = false;
        attack_timer = 0;
    }
}

if (attack_cooldown > 0) {
    attack_cooldown -= 1;
}

var move_speed = 1;

var move_amount_x = move_x * move_speed;
var move_amount_y = move_y * move_speed;

if (move_amount_x != 0) {
    var step_x = sign(move_amount_x);

    if (!place_meeting(x + move_amount_x, y, obj_wall)) {
        x += move_amount_x;
    } else {
        while (!place_meeting(x + step_x, y, obj_wall)) {
            x += step_x;
        }
    }
}

if (move_amount_y != 0) {
    var step_y = sign(move_amount_y);

    if (!place_meeting(x, y + move_amount_y, obj_wall)) {
        y += move_amount_y;
    } else {
        while (!place_meeting(x, y + step_y, obj_wall)) {
            y += step_y;
        }
    }
}

x = round(x);
y = round(y);

attack_hitbox_active = false;

if (is_attacking) {
    var active_frame = attack_timer >= attack_active_start && attack_timer <= attack_active_end;

    if (active_frame) {
        attack_hitbox_active = true;

        if (attack_dir_x > 0) {
            attack_hitbox_x = x + 16;
            attack_hitbox_y = y - 8;
            attack_hitbox_w = 24;
            attack_hitbox_h = 16;
        } else if (attack_dir_x < 0) {
            attack_hitbox_x = x - 40;
            attack_hitbox_y = y - 8;
            attack_hitbox_w = 24;
            attack_hitbox_h = 16;
        } else if (attack_dir_y > 0) {
            attack_hitbox_x = x - 12;
            attack_hitbox_y = y + 12;
            attack_hitbox_w = 24;
            attack_hitbox_h = 20;
        } else if (attack_dir_y < 0) {
            attack_hitbox_x = x - 12;
            attack_hitbox_y = y - 32;
            attack_hitbox_w = 24;
            attack_hitbox_h = 20;
        }
    }
}

if (x < camera_x + camera_border_x) {
    camera_x = x - camera_border_x;
} else if (x > camera_x + camera_width - camera_border_x) {
    camera_x = x - (camera_width - camera_border_x);
}

if (y < camera_y + camera_border_y) {
    camera_y = y - camera_border_y;
} else if (y > camera_y + camera_height - camera_border_y) {
    camera_y = y - (camera_height - camera_border_y);
}

camera_x = clamp(camera_x, 0, max(0, room_width - camera_width));
camera_y = clamp(camera_y, 0, max(0, room_height - camera_height));

camera_x = round(camera_x);
camera_y = round(camera_y);

camera_set_view_pos(camera_id, camera_x, camera_y);
