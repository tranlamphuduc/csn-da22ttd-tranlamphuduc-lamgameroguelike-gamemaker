// Khởi tạo trạng thái và biến
state = "idle";             // Trạng thái ban đầu
cooldown_timer = 0;         // Bộ đếm thời gian chờ để kích hoạt kỹ năng
time_to_skill = 10 * room_speed; // Thời gian để kích hoạt kỹ năng (10 giây)

warning_timer = 0;          // Bộ đếm thời gian cảnh báo
normal_speed = 2;           // Tốc độ di chuyển bình thường
dash_speed = 4;             // Tốc độ lao vào

target_x = 0;               // Vị trí mục tiêu x
target_y = 0;               // Vị trí mục tiêu y

facing = 1;                 // Hướng quái: 1 là phải, -1 là trái
