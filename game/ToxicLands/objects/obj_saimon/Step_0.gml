var move_x = 0;
var move_y = 0;

// S016 - Minimal death/failure state.
if (hp <= 0) {
    hp = 0;
    is_dead = true;
}

if (is_dead) {
    is_attacking = false;
    attack_hitbox_active = false;

    if (keyboard_check_pressed(ord("R"))) {
        room_restart();
    }

    exit;
}

// S014 - Hurt timers.
if (hurt_invuln_timer > 0) {
    hurt_invuln_timer -= 1;
}

if (hurt_flash_timer > 0) {
    hurt_flash_timer -= 1;
}

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
    if (mouse_check_button_pressed(mb_left)) {
        is_attacking = true;
        attack_timer = 0;
        attack_cooldown = attack_cooldown_duration;

        var attack_mouse_x = mouse_x - x;
        var attack_mouse_y = mouse_y - y;
        var attack_mouse_distance = sqrt(
            attack_mouse_x * attack_mouse_x +
            attack_mouse_y * attack_mouse_y
        );

        if (attack_mouse_distance <= 0) {
            attack_dir_x = 0;
            attack_dir_y = 1;
        } else {
            attack_dir_x = attack_mouse_x / attack_mouse_distance;
            attack_dir_y = attack_mouse_y / attack_mouse_distance;
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

// S012A: visual animation selection only.
// Movement, attack timing, hitboxes, collision, and camera remain unchanged.
var visual_moving = (move_x != 0 || move_y != 0);

if (is_attacking) {
    var attack_sprite = spr_saimon_attack_down;
    
    if (abs(attack_dir_x) > abs(attack_dir_y)) {
        if (attack_dir_x > 0) {
            attack_sprite = spr_saimon_attack_right;
        } else {
            attack_sprite = spr_saimon_attack_left;
        }
    } else {
        if (attack_dir_y < 0) {
            attack_sprite = spr_saimon_attack_up;
        } else {
            attack_sprite = spr_saimon_attack_down;
        }
    }

    if (sprite_index != attack_sprite) {
        sprite_index = attack_sprite;
        image_index = 0;
    }

    image_speed = 0.35;
} else if (visual_moving) {
    var run_sprite = spr_saimon_run_down;

    if (move_x < 0 && move_y < 0) {
        run_sprite = spr_saimon_run_up_left;
    } else if (move_x > 0 && move_y < 0) {
        run_sprite = spr_saimon_run_up_right;
    } else if (move_x < 0 && move_y > 0) {
        run_sprite = spr_saimon_run_down_left;
    } else if (move_x > 0 && move_y > 0) {
        run_sprite = spr_saimon_run_down_right;
    } else if (move_y < 0) {
        run_sprite = spr_saimon_run_up;
    } else if (move_y > 0) {
        run_sprite = spr_saimon_run_down;
    } else if (move_x < 0) {
        run_sprite = spr_saimon_run_left;
    } else if (move_x > 0) {
        run_sprite = spr_saimon_run_right;
    }

    if (sprite_index != run_sprite) {
        sprite_index = run_sprite;
        image_index = 0;
    }

    image_speed = 0.28;
} else {
    if (sprite_index != spr_saimon_idle_proto) {
        sprite_index = spr_saimon_idle_proto;
        image_index = 0;
    }

    image_speed = 0.10;
}

var move_speed = 1;

var move_amount_x = round(move_x * move_speed);
var move_amount_y = round(move_y * move_speed);

if (move_amount_x != 0) {
    var step_x = sign(move_amount_x);
    var steps_x = abs(move_amount_x);

    repeat (steps_x) {
        var next_x = x + step_x;
        var blocked_x = collision_rectangle(
            next_x + collision_left,
            y + collision_top,
            next_x + collision_right,
            y + collision_bottom,
            obj_wall,
            false,
            true
        ) != noone;

        if (!blocked_x) {
            var plant_count_x = instance_number(obj_trepadeira_sensora);

            for (var i = 0; i < plant_count_x; i += 1) {
                var plant_x = instance_find(obj_trepadeira_sensora, i);

                if (
                    plant_x != noone &&
                    plant_x.state != plant_x.STATE_DEAD &&
                    next_x + collision_right >= plant_x.x + plant_x.collision_left &&
                    next_x + collision_left <= plant_x.x + plant_x.collision_right &&
                    y + collision_bottom >= plant_x.y + plant_x.collision_top &&
                    y + collision_top <= plant_x.y + plant_x.collision_bottom
                ) {
                    blocked_x = true;
                    break;
                }
            }
        }

        if (!blocked_x) {
            x += step_x;
        } else {
            break;
        }
    }
}

if (move_amount_y != 0) {
    var step_y = sign(move_amount_y);
    var steps_y = abs(move_amount_y);

    repeat (steps_y) {
        var next_y = y + step_y;
        var blocked_y = collision_rectangle(
            x + collision_left,
            next_y + collision_top,
            x + collision_right,
            next_y + collision_bottom,
            obj_wall,
            false,
            true
        ) != noone;

        if (!blocked_y) {
            var plant_count_y = instance_number(obj_trepadeira_sensora);

            for (var j = 0; j < plant_count_y; j += 1) {
                var plant_y = instance_find(obj_trepadeira_sensora, j);

                if (
                    plant_y != noone &&
                    plant_y.state != plant_y.STATE_DEAD &&
                    x + collision_right >= plant_y.x + plant_y.collision_left &&
                    x + collision_left <= plant_y.x + plant_y.collision_right &&
                    next_y + collision_bottom >= plant_y.y + plant_y.collision_top &&
                    next_y + collision_top <= plant_y.y + plant_y.collision_bottom
                ) {
                    blocked_y = true;
                    break;
                }
            }
        }

        if (!blocked_y) {
            y += step_y;
        } else {
            break;
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

        var attack_hitbox_size = 22;
        var attack_center_x = x + attack_dir_x * 28;
        var attack_center_y = y + attack_dir_y * 24;

        attack_hitbox_w = attack_hitbox_size;
        attack_hitbox_h = attack_hitbox_size;
        attack_hitbox_x = round(attack_center_x - attack_hitbox_w * 0.5);
        attack_hitbox_y = round(attack_center_y - attack_hitbox_h * 0.5);
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
