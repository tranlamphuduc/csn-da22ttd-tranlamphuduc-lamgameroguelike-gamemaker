// Trong sự kiện Step của obj_beam
move_towards_point(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), speed);

// Kiểm tra va chạm với nhân vật
if (place_meeting(x, y, obj_noelle)) {
     // Giảm 10 máu, thay đổi giá trị tùy theo yêu cầu
    instance_destroy();  // Hủy tia sáng sau khi va chạm
}
