if (instance_exists(obj_lencap)) { 
    image_speed = 0;  
    exit; 
}

// Không ra khỏi map
var safe_margin = 10;

if (x < safe_margin) {
    x = safe_margin; 
}
if (x > room_width - safe_margin) {
    x = room_width - safe_margin; 
}
if (y < safe_margin) {
    y = safe_margin; 
}
if (y > room_height - safe_margin) {
    y = room_height - safe_margin; 
}

// Kiểm tra phím di chuyển
image_speed = 1;
var left   = keyboard_check(vk_left)  or keyboard_check(ord("A"));
var right  = keyboard_check(vk_right) or keyboard_check(ord("D"));
var up     = keyboard_check(vk_up)    or keyboard_check(ord("W"));
var down   = keyboard_check(vk_down)  or keyboard_check(ord("S"));

var hor      = (right - left);
var vertical = (down  - up);

// Kiểm tra va chạm với tường trước khi di chuyển
var next_x = x + hor * walkspeed;
var next_y = y + vertical * walkspeed;

if (!place_meeting(next_x, y, obj_cantro)) {
    x = next_x; // Di chuyển theo trục X nếu không va chạm
}
if (!place_meeting(x, next_y, obj_cantro)) {
    y = next_y; // Di chuyển theo trục Y nếu không va chạm
}

// Đổi hướng hình ảnh dựa vào chuột
if (mouse_x < x) {
    image_xscale = -1;
} else {
    image_xscale = 1; 
}

// Đứng yên thì dừng animation
if (hor == 0 && vertical == 0) {
    image_index = 0;
}

// Tính toán hướng ngắm
center_y = y + center_y_offset;
aim_dir = point_direction(x, center_y, mouse_x, mouse_y);



// Kiểm tra va chạm với quái
if (place_meeting(x, y, obj_quai)) {
    if (damage_delay >= damage_cooldown) {
        hp -= 10; // Giảm máu khi va chạm
        damage_delay = 0; // Reset thời gian delay
    } else {
        damage_delay += 1; // Tăng thời gian delay nếu chưa đến lúc
    }
}





// Kiểm tra chết
if (hp <= 0) {
    instance_destroy(); 
	room_goto(Chonnhanvat);
}
