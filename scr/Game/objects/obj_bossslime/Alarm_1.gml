// Sau khi dừng 0.5 giây, quái trở lại di chuyển bình thường
if (instance_exists(obj_lencap)) {
}
else
{
	speed = 0.5;
	image_speed = 0.5;  // Đặt lại tốc độ ban đầu (hoặc tốc độ bạn muốn cho quái)
}