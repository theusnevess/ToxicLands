rain_offset += rain_speed;

if (rain_offset >= max(1, room_height)) {
    rain_offset -= max(1, room_height);
}
