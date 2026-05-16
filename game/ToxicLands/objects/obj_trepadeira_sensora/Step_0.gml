if (hurt_cooldown > 0) {
    hurt_cooldown -= 1;
}

plant_attack_active = false;

var player = instance_find(obj_saimon, 0);

if (state != STATE_DEAD && hurt_cooldown <= 0 && player != noone) {
    if (player.attack_hitbox_active) {
        var sx1 = player.attack_hitbox_x;
        var sy1 = player.attack_hitbox_y;
        var sx2 = sx1 + player.attack_hitbox_w;
        var sy2 = sy1 + player.attack_hitbox_h;

        var px1 = bbox_left;
        var py1 = bbox_top;
        var px2 = bbox_right;
        var py2 = bbox_bottom;

        var was_hit = !(
            sx2 < px1 ||
            sx1 > px2 ||
            sy2 < py1 ||
            sy1 > py2
        );

        if (was_hit) {
            hp -= 1;
            hurt_cooldown = plant_hurt_cooldown;

            if (hp <= 0) {
                state = STATE_DEAD;
                state_timer = 0;
                plant_attack_active = false;
                image_alpha = 0.35;
            }
        }
    }
}

switch (state) {
    case STATE_IDLE:
        if (player != noone) {
            var distance_to_player = point_distance(x, y, player.x, player.y);

            if (distance_to_player <= detect_range) {
                var dx = player.x - x;
                var dy = player.y - y;

                if (abs(dx) > abs(dy)) {
                    attack_dir_x = sign(dx);
                    attack_dir_y = 0;
                } else {
                    attack_dir_x = 0;
                    attack_dir_y = sign(dy);
                }

                if (attack_dir_x == 0 && attack_dir_y == 0) {
                    attack_dir_x = 0;
                    attack_dir_y = 1;
                }

                state = STATE_TELEGRAPH;
                state_timer = 0;
            }
        }
    break;

    case STATE_TELEGRAPH:
        state_timer += 1;

        if (state_timer >= telegraph_duration) {
            state = STATE_ATTACK;
            state_timer = 0;
        }
    break;

    case STATE_ATTACK:
        state_timer += 1;

        if (state_timer >= attack_active_start && state_timer <= attack_active_end) {
            plant_attack_active = true;

            if (attack_dir_x > 0) {
                plant_attack_x = x + 12;
                plant_attack_y = y - 10;
                plant_attack_w = 32;
                plant_attack_h = 20;
            } else if (attack_dir_x < 0) {
                plant_attack_x = x - 44;
                plant_attack_y = y - 10;
                plant_attack_w = 32;
                plant_attack_h = 20;
            } else if (attack_dir_y > 0) {
                plant_attack_x = x - 12;
                plant_attack_y = y + 12;
                plant_attack_w = 24;
                plant_attack_h = 32;
            } else if (attack_dir_y < 0) {
                plant_attack_x = x - 12;
                plant_attack_y = y - 44;
                plant_attack_w = 24;
                plant_attack_h = 32;
            }
        }

        if (state_timer >= attack_duration) {
            state = STATE_RECOVER;
            state_timer = 0;
            plant_attack_active = false;
        }
    break;

    case STATE_RECOVER:
        state_timer += 1;

        if (state_timer >= recover_duration) {
            state = STATE_IDLE;
            state_timer = 0;
        }
    break;

    case STATE_DEAD:
        plant_attack_active = false;
    break;
}

// S012A: visual animation selection only.
// AI timing, damage, hitboxes, cooldowns, and collision remain unchanged.
switch (state) {
    case STATE_IDLE:
        if (sprite_index != spr_trepadeira_idle_proto) {
            sprite_index = spr_trepadeira_idle_proto;
            image_index = 0;
        }

        image_speed = 0.08;
    break;

    case STATE_TELEGRAPH:
        if (sprite_index != spr_trepadeira_telegraph_proto) {
            sprite_index = spr_trepadeira_telegraph_proto;
            image_index = 0;
        }

        image_speed = 0.16;
    break;

    case STATE_ATTACK:
        if (sprite_index != spr_trepadeira_attack_proto) {
            sprite_index = spr_trepadeira_attack_proto;
            image_index = 0;
        }

        image_speed = 0.25;
    break;

    case STATE_RECOVER:
        if (sprite_index != spr_trepadeira_idle_proto) {
            sprite_index = spr_trepadeira_idle_proto;
            image_index = 0;
        }

        image_speed = 0.04;
    break;

    case STATE_DEAD:
        if (sprite_index != spr_trepadeira_dead_proto) {
            sprite_index = spr_trepadeira_dead_proto;
            image_index = 0;
        }

        image_speed = 0;
    break;
}
