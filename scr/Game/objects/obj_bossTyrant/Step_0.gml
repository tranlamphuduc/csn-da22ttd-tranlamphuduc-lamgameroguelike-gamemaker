// Lấy thông tin nhân vật
var player = obj_noelle; 
var angle_to_player = point_direction(x, y, player.x, player.y);

// Xác định hướng quái: 
// Nếu góc nằm bên phải quái (0 - 180 độ), quái quay phải; ngược lại quay trái
if (angle_to_player >= 90 && angle_to_player <= 270) {
    facing = -1; // Quay trái
} else {
    facing = 1; // Quay phải
}

if (instance_exists(obj_lencap)) {
	image_speed = 0;
    // Nếu obj_lencap tồn tại, quái sẽ đứng yên
    state = "idle"; // Giữ quái ở trạng thái "idle" và không di chuyển
} else {
	image_speed = 1;
    if (state == "idle") {
        // Trạng thái bình thường: quái di chuyển về phía nhân vật
        var move_angle = point_direction(x, y, player.x, player.y);
        
        // Tính toán vị trí di chuyển tiếp theo
        var next_x = x + lengthdir_x(normal_speed, move_angle);
        var next_y = y + lengthdir_y(normal_speed, move_angle);
        
        // Kiểm tra va chạm với tường (obj_cantro) trước khi di chuyển
        if (!place_meeting(next_x, y, obj_cantro)) {
            x = next_x; // Di chuyển theo trục X nếu không va chạm
        }
        if (!place_meeting(x, next_y, obj_cantro)) {
            y = next_y; // Di chuyển theo trục Y nếu không va chạm
        }

        // Đếm ngược thời gian để kích hoạt kỹ năng
        cooldown_timer++;
        if (cooldown_timer >= time_to_skill) {
            state = "charging"; // Chuyển sang trạng thái chuẩn bị lao
            warning_timer = room_speed; // Hiển thị cảnh báo trong 1 giây
            cooldown_timer = 0; // Reset thời gian

            // Lưu vị trí mục tiêu (vị trí hướng tới phía nhân vật + khoảng offset)
            var offset_distance = 350; // Khoảng cách xác định trước
            target_x = x + lengthdir_x(offset_distance, angle_to_player);
            target_y = y + lengthdir_y(offset_distance, angle_to_player);
        }
    }
    else if (state == "charging") {
        // Hiển thị đường cảnh báo (đang chuẩn bị lao)
        warning_timer--;
        if (warning_timer <= 0) {
            state = "dashing"; // Chuyển sang trạng thái lao
        }
    }
    else if (state == "dashing") {
        // Di chuyển về vị trí đã lưu (target_x, target_y)
        var dash_angle = point_direction(x, y, target_x, target_y);
        
        // Tính toán vị trí lao vào
        var next_dash_x = x + lengthdir_x(dash_speed, dash_angle);
        var next_dash_y = y + lengthdir_y(dash_speed, dash_angle);
        
        // Kiểm tra va chạm với tường (obj_cantro) khi lao vào
        if (!place_meeting(next_dash_x, next_dash_y, obj_cantro)) {
            x = next_dash_x; // Di chuyển theo trục X nếu không va chạm
            y = next_dash_y; // Di chuyển theo trục Y nếu không va chạm
        }

        // Khi quái đến gần mục tiêu, quay lại trạng thái "idle"
        if (point_distance(x, y, target_x, target_y) <= 4) {
            state = "idle"; // Quay lại trạng thái ban đầu
        }
    }
}
