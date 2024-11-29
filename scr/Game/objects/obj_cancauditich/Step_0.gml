// Step Event của quái vật

// Kiểm tra xem có đối tượng obj_lencap không
if (instance_exists(obj_lencap)) {
	image_speed = 0;
    // Nếu obj_lencap tồn tại, quái vật sẽ không làm gì và đứng yên
    move_towards_point(obj_noelle.x, obj_noelle.y, 0);
    skill_1_is_active = false; // Hủy bỏ kỹ năng nếu obj_lencap tồn tại
    return; // Dừng phần còn lại của mã khi obj_lencap tồn tại
}
else
{
	image_speed = 1;
	// Kiểm tra vị trí của nhân vật so với quái vật để điều chỉnh hướng quay
	if (obj_noelle.x > x) {
	    image_xscale = 1; // Quái quay phải
	} else {
	    image_xscale = -1; // Quái quay trái
	}

	// Di chuyển quái vật về phía nhân vật
	move_towards_point(obj_noelle.x, obj_noelle.y, 1); // Tốc độ di chuyển quái vật

	// Kiểm tra thời gian bắn kỹ năng (sau mỗi 6 giây)
	if (alarm[2] <= 0) {
	    // Chọn kỹ năng 1 để bắn tên lửa xung quanh
	    skill_1_is_active = true;
	    alarm[0] = room_speed; // Đặt thời gian đứng yên 1 giây sau khi dùng skill 1
	    alarm[2] = 360; // 6 giây = 360 frame
	}

	// Kỹ năng bắn tên lửa (skill 1)
	if (skill_1_is_active) {
		image_speed = 0;
	    var angle_step = 360 / 18; // 18 tên lửa bắn ra xung quanh quái vật
	    for (var i = 0; i < 18; i++) {
	        var angle = i * angle_step; // Tính góc cho tên lửa

	        // Tạo tên lửa
	        var rocket = instance_create_layer(x, y, "Instances", obj_rocket);
        
	        // Điều chỉnh hướng của tên lửa sao cho nó quay đúng hướng quái vật
	        rocket.direction = angle + direction; // Cộng thêm góc hướng của quái vật vào góc tên lửa
	        rocket.speed = 1; // Tốc độ tên lửa
	    }
    
	    skill_1_is_active = false;  // Reset kỹ năng sau khi bắn
	}
}