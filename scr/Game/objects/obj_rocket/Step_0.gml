// Step Event của obj_rocket
if (instance_exists(obj_lencap)) {
	speed = 0; // Dừng phần còn lại của mã khi obj_lencap tồn tại
}
else
{
	speed = 1; // Tốc độ tên lửa (có thể thay đổi tùy ý)

	// Di chuyển tên lửa theo hướng đã được gán
	x += lengthdir_x(speed, direction); // Cập nhật x theo hướng và tốc độ
	y += lengthdir_y(speed, direction); // Cập nhật y theo hướng và tốc độ
	// Quay tên lửa theo hướng di chuyển của nó
	image_angle = direction; // Quay hình ảnh tên lửa theo hướng của n
	// Kiểm tra nếu tên lửa va chạm với đối tượng (ví dụ: nhân vật hoặc vật thể)
	if (place_meeting(x, y, obj_noelle)) {
    // Tạo hiệu ứng va chạm hoặc xử lý khi tên lửa trúng mục tiêu
	    instance_destroy(); // Hủy tên lửa sau khi va chạm
	}
}
