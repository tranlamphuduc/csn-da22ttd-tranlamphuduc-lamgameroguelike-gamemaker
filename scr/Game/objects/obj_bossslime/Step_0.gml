if (instance_exists(obj_lencap)) {
    image_speed = 0;
    speed = 0;
} else {
    if (obj_noelle.x > x) {
        image_xscale = 1; // Quái quay phải
    } else {
        image_xscale = -1; // Quái quay trái
    }
    
    speed = 0;
    image_speed = 0.5;
    
    // Kiểm tra xem quái có va chạm với tường khi di chuyển không
    var move_direction = point_direction(x, y, obj_noelle.x, obj_noelle.y); // Tính hướng đi về obj_noelle
    var move_x = lengthdir_x(image_speed, move_direction);
    var move_y = lengthdir_y(image_speed, move_direction);
    
    // Kiểm tra nếu có va chạm với tường (obj_cantro)
    if (!place_meeting(x + move_x, y + move_y, obj_cantro)) {
        // Nếu không va chạm, cho phép di chuyển
        move_towards_point(obj_noelle.x, obj_noelle.y, image_speed);
    }
    
    if (alarm[0] == -1) {
        alarm[0] = room_speed * 2;  // Mỗi 2 giây quái sẽ bắn
    }
}
