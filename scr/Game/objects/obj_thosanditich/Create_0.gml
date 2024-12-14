// Biến di chuyển
move_speed = 1; // Tốc độ di chuyển của boss
target = noone; // Mục tiêu (nhân vật)

// Biến trạng thái
is_moving = true; // Boss có thể di chuyển hay không
skill_active = false; // Kiểm tra trạng thái skill

// Biến thời gian
time_to_skill = 420; // 7 giây (60 steps = 1 giây)
skill_warning_duration = 60; // 1 giây cảnh báo
skill_length = 1000; // Độ dài của tia laser

// Biến cho skill
skill_target_x = 0; // Vị trí X cố định của nhân vật khi boss dùng skill
skill_target_y = 0; // Vị trí Y cố định của nhân vật khi boss dùng skill

// Màu sắc
warning_color = c_red; // Màu cảnh báo
laser_color = c_white; // Màu laser
// Đảm bảo đối tượng không bị vô hiệu hóa khi ra khỏi camera
instance_deactivate_object(self);

