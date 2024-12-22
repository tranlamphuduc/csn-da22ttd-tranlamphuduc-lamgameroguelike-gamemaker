if (instance_exists(obj_lencap)) { 
    image_speed = 0;  
    exit; 
}


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
var left   = keyboard_check(vk_left)  or keyboard_check(ord("A"));
var right  = keyboard_check(vk_right) or keyboard_check(ord("D"));
var up     = keyboard_check(vk_up)    or keyboard_check(ord("W"));
var down   = keyboard_check(vk_down)  or keyboard_check(ord("S"));

var hor      = (right - left);
var vertical = (down  - up);


var next_x = x + hor * walkspeed;
var next_y = y + vertical * walkspeed;

if (!place_meeting(next_x, y, obj_cantro)) {
    x = next_x;
}
if (!place_meeting(x, next_y, obj_cantro)) {
    y = next_y;
}


if (mouse_x < x) {
    image_xscale = -1;
} else {
    image_xscale = 1; 
}


if (hor == 0 && vertical == 0) {
    image_index = 0;
}


center_y = y + center_y_offset;
aim_dir = point_direction(x, center_y, mouse_x, mouse_y);




if (place_meeting(x, y, obj_quai) || place_meeting(x, y, obj_boss)) {
    if (damage_delay >= damage_cooldown) {
        hp -= 10;
        damage_delay = 0; 
    } else {
        damage_delay += 1; 
    }
}






if (hp <= 0) {
    instance_destroy(); 
	global.tiennhanduoc = tien;
	room_goto(thua);
}
