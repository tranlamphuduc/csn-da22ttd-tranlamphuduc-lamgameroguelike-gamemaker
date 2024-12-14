// Lấy tọa độ của camera
var camera_x = camera_get_view_x(view_camera[0]) + 390;
var camera_y = camera_get_view_y(view_camera[0]) + 10 ;

x = camera_x + 270;  
y = camera_y + 34; 

// Hiển thị đồng hồ
draw_set_color(c_white);
draw_text(camera_x, camera_y, formatted_minutes+ ":" + formatted_seconds);
