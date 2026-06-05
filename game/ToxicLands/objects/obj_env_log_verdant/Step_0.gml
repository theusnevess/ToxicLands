var p = instance_find(obj_saimon, 0);

if (p == noone) {
    is_open = false;
    reader = noone;
    exit;
}

var _dist = point_distance(x, y, p.x, p.y);
var _near = (_dist <= interact_range);

if (p.is_dead && is_open) {
    is_open = false;

    if (reader != noone && instance_exists(reader)) {
        reader.is_reading = false;
    }

    reader = noone;
}

// If player walks away, close.
if (!_near && is_open) {
    is_open = false;

    if (reader != noone && instance_exists(reader)) {
        reader.is_reading = false;
    }

    reader = noone;
}

// Toggle read with E when near.
// Do not open if Saimon is dead.
if (_near && !p.is_dead && keyboard_check_pressed(ord("E"))) {
    is_open = !is_open;

    if (is_open) {
        reader = p;
        p.is_reading = true;
    } else {
        p.is_reading = false;
        reader = noone;
    }
}

// Safety: if closed, ensure this reader is released.
if (!is_open && reader != noone && instance_exists(reader)) {
    reader.is_reading = false;
    reader = noone;
}
