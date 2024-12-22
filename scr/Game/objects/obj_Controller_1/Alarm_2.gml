
var spawn_points = [
    [173, 742],
    [265, 1496],
    [680, 1561],
    [1084, 1445],
    [607, 602],
    [1327, 301],
    [664, 204],
    [939, 629],
    [1174, 918],
    [754, 1238]
];

repeat(1) {
	    // Lựa chọn điểm spawn ngẫu nhiên từ danh sách
	var random_spawn = spawn_points[irandom(array_length_1d(spawn_points) - 1)];
	var spawn_x = random_spawn[0];
	var spawn_y = random_spawn[1];

	// Kiểm tra xem điểm spawn có nằm trong phạm vi camera không
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	var _vw = camera_get_view_width(view_camera[0]);
	var _vh = camera_get_view_height(view_camera[0]);

	if (spawn_x < _vx || spawn_x > (_vx + _vw) || spawn_y < _vy || spawn_y > (_vy + _vh)) {
	    // Nếu điểm spawn nằm ngoài phạm vi camera, tạo quái vật tại đó
	    instance_create_layer(spawn_x, spawn_y, "Instances", obj_bossTyrant);
	} else {
	    // Nếu điểm spawn nằm trong phạm vi camera, thử lại
	    alarm[2] = alaTime2;
	}
}
