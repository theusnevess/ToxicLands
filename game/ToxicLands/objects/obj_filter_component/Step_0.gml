can_collect = false;

var player = instance_find(obj_saimon, 0);

if (player != noone) {
    var distance_to_player = point_distance(x, y, player.x, player.y);

    if (distance_to_player <= collect_range) {
        can_collect = true;

        if (keyboard_check_pressed(ord("E"))) {
            global.has_filter_component = true;
            instance_destroy();
        }
    }
}
