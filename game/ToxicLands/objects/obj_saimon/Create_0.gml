camera_width = 320;
camera_height = 180;
camera_border_x = 96;
camera_border_y = 54;

view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = camera_width;
view_hport[0] = camera_height;

camera_x = clamp(round(x - camera_width * 0.5), 0, max(0, room_width - camera_width));
camera_y = clamp(round(y - camera_height * 0.5), 0, max(0, room_height - camera_height));

camera_id = camera_create_view(
    camera_x,
    camera_y,
    camera_width,
    camera_height
);

view_camera[0] = camera_id;
