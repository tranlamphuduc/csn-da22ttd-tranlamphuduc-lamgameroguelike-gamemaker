// Create Event của quái vật
skill_1_is_active = false;  // Biến để kiểm tra khi nào dùng kỹ năng 1
direction = 0; // Đảm bảo hướng ban đầu là 0 (hoặc hướng mặc định mà bạn muốn)
// Đảm bảo đối tượng không bị vô hiệu hóa khi ra khỏi camera
instance_deactivate_object(self);