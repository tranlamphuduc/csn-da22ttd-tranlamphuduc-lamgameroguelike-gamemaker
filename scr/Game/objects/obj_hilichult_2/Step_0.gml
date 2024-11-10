// Nếu Alarm chưa được kích hoạt, khởi động quá trình bắn tên
if (alarm[0] == -1) {
    alarm[0] = room_speed * 2;  // Mỗi 2 giây quái sẽ bắn
}
