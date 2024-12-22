// Tính toán hướng đến vị trí của nhân vật (obj_noelle)
var direction_to_noelle = point_direction(x, y, obj_noelle.x, obj_noelle.y);

// Đảm bảo chỉ bắn khi quái không có đối tượng obj_lencap
if (!instance_exists(obj_lencap)) {

    // Tạo 3 tên lửa và bắn chúng theo các khoảng thời gian
    for (var i = 0; i < 3; i++) {
        // Tạo tên lửa tại vị trí của quái
        var arrow = instance_create_layer(x, y, "Instances", obj_phaokhi);

        // Đặt hướng và tốc độ của tên lửa
        arrow.direction = direction_to_noelle + (i * 5); // Điều chỉnh hướng để các tên lửa không bay thẳng một hàng
        arrow.speed = 4;
        arrow.image_angle = arrow.direction;

        // Dừng quái lại trong 0.5 giây
        image_speed = 0;
		speed = 0;

        // Đặt alarm cho tên lửa sau các khoảng thời gian nhất định
        alarm[1] = room_speed * 0.5;  // Sau 0.5 giây, khôi phục di chuyển
        alarm[0] = room_speed * (3 + i * 0.5); // Tăng thời gian bắn để tạo khoảng cách giữa các lần bắn
    }

}
