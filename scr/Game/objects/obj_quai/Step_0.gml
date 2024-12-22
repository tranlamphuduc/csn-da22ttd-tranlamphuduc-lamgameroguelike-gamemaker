// Step Event của quái vật
var move_speed = 0.5; // Tốc độ di chuyển của quái
var push_back_distance = 10; // Khoảng cách bị đẩy lại khi va chạm
if (obj_noelle.x > x) { 
        image_xscale = 1;  // Quái quay phải
    } else { 
        image_xscale = -1; // Quái quay trái
    }
// Kiểm tra va chạm với tường
if (instance_exists(obj_lencap)) {
        speed = 0; 
        image_speed = 0; // Dừng chuyển động khi có obj_lencap
}

else{
	speed = 0.5; 
    image_speed = 0.5;
	if (place_meeting(x + lengthdir_x(move_speed, direction), y + lengthdir_y(move_speed, direction), obj_cantro)) {
	    // Nếu có va chạm, thay đổi hướng di chuyển
	    var push_direction = point_direction(x, y, obj_noelle.x, obj_noelle.y); // Hướng từ quái đến nhân vật
	    var push_back_x = x + lengthdir_x(push_back_distance, push_direction + 180); // Đẩy quái ra khỏi tường
	    var push_back_y = y + lengthdir_y(push_back_distance, push_direction + 180);

	    // Di chuyển quái ra khỏi tường
	    if (!place_meeting(push_back_x, push_back_y, obj_cantro)) {
	        x = push_back_x; // Di chuyển quái theo hướng đẩy
	        y = push_back_y;
	    } else {
	        // Nếu vẫn va chạm sau khi đẩy, tìm một hướng khác để di chuyển
	        var random_angle = irandom_range(0, 360); // Chọn một góc ngẫu nhiên
	        var random_x = x + lengthdir_x(push_back_distance, random_angle); // Tính toán vị trí mới
	        var random_y = y + lengthdir_y(push_back_distance, random_angle);
        
	        if (!place_meeting(random_x, random_y, obj_cantro)) {
	            x = random_x;
	            y = random_y;
	        }
	    }
	} else {
	    // Quái di chuyển bình thường về phía nhân vật
	    move_towards_point(obj_noelle.x, obj_noelle.y, move_speed);
	}
}