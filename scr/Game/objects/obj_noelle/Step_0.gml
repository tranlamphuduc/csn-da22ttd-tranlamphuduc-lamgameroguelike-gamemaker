if(instance_exists(obj_lencap)){ image_speed = 0;  exit; }

///ko ra khoi map

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



image_speed = 1;
var left   = keyboard_check(vk_left)  or keyboard_check( ord("A") );
var right  = keyboard_check(vk_right) or keyboard_check( ord("D") );
var up     = keyboard_check(vk_up)    or keyboard_check( ord("W") );
var down   = keyboard_check(vk_down)  or keyboard_check( ord("S") );

var hor		 = (right - left);
var vertical = (down  - up);

x += hor      * walkspeed;
y += vertical * walkspeed;

// Kiểm tra vị trí chuột so với nhân vật
if (mouse_x < x) {
    // Chuột ở bên trái, xoay nhân vật sang trái
    image_xscale = -1; // Lật nhân vật qua trái
} else {
    // Chuột ở bên phải, xoay nhân vật sang phải
    image_xscale = 1;  // Đặt nhân vật nhìn qua phải
}
if (hor == 0 && vertical == 0)
{
	image_index = 0;
}

// Hướng bắn
center_y = y + center_y_offset;
aim_dir = point_direction(x, center_y, mouse_x, mouse_y);