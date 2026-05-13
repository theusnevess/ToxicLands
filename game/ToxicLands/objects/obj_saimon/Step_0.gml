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

if (move_x != 0 && move_y != 0) {
    move_x *= 0.7071;
    move_y *= 0.7071;
}

var move_speed = 1.25;
x += move_x * move_speed;
y += move_y * move_speed;
