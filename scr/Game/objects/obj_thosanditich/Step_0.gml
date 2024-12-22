// Boss di chuyển hoặc đứng yên dựa trên trạng thái
if (instance_exists(obj_lencap)) {
	move_speed = 0;
	image_speed = 0;
    // Nếu obj_lencap tồn tại, quái vật sẽ không làm gì và đứng yên
    move_towards_point(obj_noelle.x, obj_noelle.y, 0);
    skill_1_is_active = false; // Hủy bỏ kỹ năng nếu obj_lencap tồn tại
    return; // Dừng phần còn lại của mã khi obj_lencap tồn tại
}
else
{
	if (obj_noelle.x > x) {
	    image_xscale = 1; 
	} else {
	    image_xscale = -1;
	}
	image_speed = 1;
	move_speed = 1;
	if (is_moving && !skill_active) {
	    // Kiểm tra mục tiêu
	    if (target == noone) {
	        target = obj_noelle; // Gán mục tiêu là nhân vật
	    }

	    // Di chuyển về phía mục tiêu
	    var dx = target.x - x;
	    var dy = target.y - y;
	    var dist = point_distance(x, y, target.x, target.y);

	    if (dist > 10) {
	        x += (dx / dist) * move_speed;
	        y += (dy / dist) * move_speed;
	    }

	    // Đếm ngược thời gian để dùng skill
	    time_to_skill -= 1;
	    if (time_to_skill <= 0) {
	        skill_active = true;
	        is_moving = false; // Boss đứng yên khi dùng skill

	        // Ghi lại vị trí của nhân vật tại thời điểm bắt đầu skill
	        skill_target_x = target.x;
	        skill_target_y = target.y;

	        time_to_skill = 360; // Reset thời gian cho lần dùng skill tiếp theo
	    }
	} else if (skill_active) {
	    // Nếu skill đang kích hoạt
	    if (skill_warning_duration > 0) {
	        skill_warning_duration -= 1; // Giảm thời gian cảnh báo
	    } else {
	        // Bắn laser (1 frame)
	        skill_active = false; // Tắt skill
	        skill_warning_duration = 60; // Reset thời gian cảnh báo
	        is_moving = true; // Boss tiếp tục di chuyển
	    }
	}
}
