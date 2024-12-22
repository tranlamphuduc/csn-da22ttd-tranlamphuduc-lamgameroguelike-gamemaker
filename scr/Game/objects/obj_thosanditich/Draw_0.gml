


if (skill_active) {
    if (skill_warning_duration > 0) {

        draw_set_color(warning_color);


        var warning_dir = point_direction(x, y, skill_target_x, skill_target_y);
        var warning_end_x = x + lengthdir_x(skill_length, warning_dir);
        var warning_end_y = y + lengthdir_y(skill_length, warning_dir);

        draw_line_width(x, y, warning_end_x, warning_end_y, 40); 
    } else {

        draw_set_color(laser_color);

        var laser_dir = point_direction(x, y, skill_target_x, skill_target_y);
        var laser_end_x = x + lengthdir_x(skill_length, laser_dir);
        var laser_end_y = y + lengthdir_y(skill_length, laser_dir);

        draw_line_width(x, y, laser_end_x, laser_end_y, 10);


        if (collision_line(x, y, laser_end_x, laser_end_y, obj_noelle, true, true)) {
            obj_noelle.hp -= 50; 
        }
    }
    draw_set_color(c_white); 
}

draw_self();