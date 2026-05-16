STATE_IDLE = 0;
STATE_TELEGRAPH = 1;
STATE_ATTACK = 2;
STATE_RECOVER = 3;
STATE_DEAD = 4;

sprite_index = spr_trepadeira_idle_proto;
mask_index = spr_trepadeira_sensora_v2;

state = STATE_IDLE;
state_timer = 0;

hp = 3;

detect_range = 72;
attack_range = 44;

telegraph_duration = 24;
attack_duration = 10;
attack_active_start = 4;
attack_active_end = 7;
recover_duration = 36;

hurt_cooldown = 0;
plant_hurt_cooldown = 12;

attack_dir_x = 0;
attack_dir_y = 1;

plant_attack_active = false;
plant_attack_x = 0;
plant_attack_y = 0;
plant_attack_w = 0;
plant_attack_h = 0;

collision_left = -22;
collision_right = 22;
collision_top = -24;
collision_bottom = 0;
