
if (instance_exists(obj_lencap)) {
    is_time_stopped = true;  // Dừng đồng hồ
}
else
{
	is_time_stopped = false;
}

// Kiểm tra nếu biến start_ticks chưa được khởi tạo
if (!is_started && !is_time_stopped) {
    start_ticks = current_time; // Lấy thời gian hiện tại làm điểm bắt đầu
    is_started = true;
}

// Kiểm tra nếu đồng hồ bị dừng
if (is_time_stopped) {
    // Không làm gì khi đồng hồ bị dừng
    return;
}

// Tính toán thời gian trôi qua bằng ticks
elapsed_ticks = current_time - start_ticks;

// Chuyển đổi từ ticks sang giây
elapsed_seconds = elapsed_ticks / room_speed; // room_speed là số ticks mỗi giây

// Tính phút và giây từ giây
minutes = floor(elapsed_seconds / 16.7); // Lấy số phút
seconds = floor(elapsed_seconds mod 60); // Lấy số giây còn lại

// Đảm bảo phút và giây luôn có 2 chữ số
formatted_minutes = (minutes < 10) ? "0" + string(minutes) : string(minutes);
formatted_seconds = (seconds < 10) ? "0" + string(seconds) : string(seconds);

