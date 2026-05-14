if (!global.mvp_loop_complete) {
    var player = instance_find(obj_saimon, 0);

    if (player != noone) {
        var zone_left = x - zone_w * 0.5;
        var zone_right = x + zone_w * 0.5;
        var zone_top = y - zone_h * 0.5;
        var zone_bottom = y + zone_h * 0.5;

        var saimon_inside =
            player.x >= zone_left &&
            player.x <= zone_right &&
            player.y >= zone_top &&
            player.y <= zone_bottom;

        if (saimon_inside && global.has_filter_component) {
            global.mvp_loop_complete = true;

            if (!loop_message_shown) {
                show_debug_message("MVP LOOP COMPLETE");
                loop_message_shown = true;
            }
        }
    }
}
