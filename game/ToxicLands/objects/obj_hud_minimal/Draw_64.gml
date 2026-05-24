// S013 - Minimal HUD: health + filter.
// Visual only. No damage, no drain, no gameplay changes.

var p = instance_find(obj_saimon, 0);

if (p == noone) {
    exit;
}

var hud_x = 8;
var hud_y = 8;

// Base dimensions approved by Hub.
var vida_icon_size = 6;
var vida_icon_gap = 4;

var filter_bar_w = 64;
var filter_bar_h = 6;

// Colors: muted, dirty, readable.
var col_outline = make_color_rgb(8, 9, 8);
var col_hp_empty = make_color_rgb(35, 25, 22);
var col_hp_fill = make_color_rgb(105, 42, 30);

var col_filter_bg = make_color_rgb(10, 13, 11);
var col_filter_frame = make_color_rgb(5, 6, 5);
var col_filter_fill = make_color_rgb(88, 135, 55);

// --------------------
// Health markers
// --------------------
for (var i = 0; i < p.hp_max; i++) {
    var _x1 = hud_x + i * (vida_icon_size + vida_icon_gap);
    var _y1 = hud_y;
    var _x2 = _x1 + vida_icon_size;
    var _y2 = _y1 + vida_icon_size;

    // Wet dark outline.
    draw_set_color(col_outline);
    draw_rectangle(_x1 - 1, _y1 - 1, _x2 + 1, _y2 + 1, false);

    // Filled or empty marker.
    if (i < p.hp) {
        draw_set_color(col_hp_fill);
    } else {
        draw_set_color(col_hp_empty);
    }

    draw_rectangle(_x1, _y1, _x2, _y2, false);
}

// --------------------
// Filter bar
// --------------------
var filter_x = hud_x;
var filter_y = hud_y + vida_icon_size + 7;

var _ratio = 0;

if (p.filter_max > 0) {
    _ratio = clamp(p.filter_value / p.filter_max, 0, 1);
}

draw_set_color(col_filter_frame);
draw_rectangle(
    filter_x - 1,
    filter_y - 1,
    filter_x + filter_bar_w + 1,
    filter_y + filter_bar_h + 1,
    false
);

draw_set_color(col_filter_bg);
draw_rectangle(
    filter_x,
    filter_y,
    filter_x + filter_bar_w,
    filter_y + filter_bar_h,
    false
);

draw_set_color(col_filter_fill);
draw_rectangle(
    filter_x,
    filter_y,
    filter_x + floor(filter_bar_w * _ratio),
    filter_y + filter_bar_h,
    false
);

// S016 - Minimal failure message.
// Prototype text only. Not final UI.
if (p.is_dead) {
    var _gw = display_get_gui_width();
    var _gh = display_get_gui_height();

    if (_gw <= 0) {
        _gw = 320;
    }

    if (_gh <= 0) {
        _gh = 180;
    }

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_set_alpha(0.75);
    draw_set_color(make_color_rgb(8, 10, 8));
    draw_rectangle(
        _gw * 0.5 - 64,
        _gh * 0.5 - 18,
        _gw * 0.5 + 64,
        _gh * 0.5 + 22,
        false
    );

    draw_set_alpha(1);
    draw_set_color(make_color_rgb(150, 135, 95));
    draw_text(_gw * 0.5, _gh * 0.5 - 6, "FILTRO ROMPIDO");

    draw_set_color(make_color_rgb(95, 120, 70));
    draw_text(_gw * 0.5, _gh * 0.5 + 8, "PRESSIONE R");

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_set_alpha(1);
}

// Reset draw state.
draw_set_color(c_white);
draw_set_alpha(1);
