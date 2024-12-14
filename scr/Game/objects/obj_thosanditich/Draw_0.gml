

// Hiệu ứng skill
if (skill_active) {
    if (skill_warning_duration > 0) {
        // Vẽ cảnh báo màu đỏ
        draw_set_color(warning_color);

        // Vẽ đường cảnh báo cắt qua nhân vật
        var warning_dir = point_direction(x, y, skill_target_x, skill_target_y);
        var warning_end_x = x + lengthdir_x(skill_length, warning_dir);
        var warning_end_y = y + lengthdir_y(skill_length, warning_dir);

        draw_line_width(x, y, warning_end_x, warning_end_y, 16); // Tăng bề rộng cảnh báo
    } else {
        // Vẽ tia laser màu trắng
        draw_set_color(laser_color);

        var laser_dir = point_direction(x, y, skill_target_x, skill_target_y);
        var laser_end_x = x + lengthdir_x(skill_length, laser_dir);
        var laser_end_y = y + lengthdir_y(skill_length, laser_dir);

        draw_line_width(x, y, laser_end_x, laser_end_y, 10); // Tăng bề rộng tia laser

        // Gây sát thương nếu nhân vật nằm trên tia laser
        if (collision_line(x, y, laser_end_x, laser_end_y, obj_noelle, true, true)) {
            obj_noelle.hp -= 20; // Ví dụ: trừ 20 máu
        }
    }
    draw_set_color(c_white); // Reset màu vẽ
}

draw_self();