
if (instance_exists(obj_lencap)) {
	speed = 0; 
}
else
{
	speed = 1;


	x += lengthdir_x(speed, direction);
	y += lengthdir_y(speed, direction); 

	image_angle = direction;

	if (place_meeting(x, y, obj_noelle)) {
	    var nhanvat = instance_place(x, y, obj_noelle); 
	    if (nhanvat != noone) {
	        nhanvat.hp -= 15; 
	    }

	    instance_destroy(); 
	}
}
