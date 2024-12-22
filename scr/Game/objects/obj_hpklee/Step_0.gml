

// Lấy tọa độ của camera
var camera_x = camera_get_view_x(view_camera[0]) -235;
var camera_y = camera_get_view_y(view_camera[0]);

// Đảm bảo obj_klee luôn ở trong phạm vi của camera
x = camera_x + 270;  // Điều chỉnh 10 pixels vào trong camera (để tránh việc vướng vào biên)
y = camera_y + 34;  // Điều chỉnh 10 pixels vào trong camera
