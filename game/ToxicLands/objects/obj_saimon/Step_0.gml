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

var move_speed = 1;
x += move_x * move_speed;
y += move_y * move_speed;

if (x < camera_x + camera_border_x) {
    camera_x = round(x - camera_border_x);
} else if (x > camera_x + camera_width - camera_border_x) {
    camera_x = round(x - (camera_width - camera_border_x));
}

if (y < camera_y + camera_border_y) {
    camera_y = round(y - camera_border_y);
} else if (y > camera_y + camera_height - camera_border_y) {
    camera_y = round(y - (camera_height - camera_border_y));
}

camera_x = clamp(camera_x, 0, max(0, room_width - camera_width));
camera_y = clamp(camera_y, 0, max(0, room_height - camera_height));

camera_set_view_pos(camera_id, camera_x, camera_y);
