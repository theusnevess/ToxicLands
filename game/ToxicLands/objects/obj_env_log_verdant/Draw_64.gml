var p = instance_find(obj_saimon, 0);

if (p == noone) {
    exit;
}

var _dist = point_distance(x, y, p.x, p.y);
var _near = (_dist <= interact_range);

var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

if (_gw <= 0) {
    _gw = 320;
}

if (_gh <= 0) {
    _gh = 180;
}

// Prompt only when near, closed, and player is not dead.
if (_near && !is_open && !p.is_dead) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_set_alpha(0.75);
    draw_set_color(make_color_rgb(8, 10, 8));
    draw_rectangle(_gw * 0.5 - 34, _gh - 34, _gw * 0.5 + 34, _gh - 18, false);

    draw_set_alpha(1);
    draw_set_color(make_color_rgb(160, 150, 120));
    draw_text(_gw * 0.5, _gh - 26, "E — Ler");

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_set_alpha(1);
}

// Text box when open.
if (is_open) {
    var _box_x1 = 12;
    var _box_y1 = max(30, _gh - 126);
    var _box_x2 = _gw - 12;
    var _box_y2 = _gh - 10;
    var _text_x = _box_x1 + 16;
    var _text_y = _box_y1 + 10;
    var _line_h = 12;

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    draw_set_alpha(0.88);
    draw_set_color(make_color_rgb(7, 9, 7));
    draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, false);

    draw_set_alpha(1);
    draw_set_color(make_color_rgb(150, 150, 135));
    draw_text(_text_x, _text_y, log_line_0);

    draw_set_color(make_color_rgb(130, 134, 118));
    draw_text(_text_x, _text_y + _line_h * 2, log_line_2);
    draw_text(_text_x, _text_y + _line_h * 3, log_line_3);
    draw_text(_text_x, _text_y + _line_h * 5, log_line_4);

    draw_set_halign(fa_right);
    draw_set_color(make_color_rgb(95, 120, 80));
    draw_text(_box_x2 - 8, _box_y2 - 14, "E fecha");

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_set_alpha(1);
}
