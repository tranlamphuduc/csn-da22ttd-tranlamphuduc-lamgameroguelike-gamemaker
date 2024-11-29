// Xoay sprite theo hướng trái/phải
if (facing == 1) {
    draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_white, 1); // Quay phải (bình thường)
} else {
    draw_sprite_ext(sprite_index, -1, x, y, -1, 1, 0, c_white, 1); // Quay trái (lật ngang)
}

// Vẽ đường cảnh báo nếu đang "charging"
if (state == "charging") {
    draw_set_color(c_red);
    draw_line_width(x, y, target_x, target_y, 3); // Vẽ đường cảnh báo
}
