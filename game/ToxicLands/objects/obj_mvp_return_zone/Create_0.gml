zone_w = 64;
zone_h = 48;

loop_message_shown = false;

if (!variable_global_exists("mvp_loop_complete")) {
    global.mvp_loop_complete = false;
}

if (!variable_global_exists("has_filter_component")) {
    global.has_filter_component = false;
}
