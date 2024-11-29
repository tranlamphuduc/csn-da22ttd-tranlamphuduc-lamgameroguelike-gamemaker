/// dieu khien cua quai
// You can write your code in this editor

with(obj_quai){
	image_speed = 1;
	direction = point_direction(x,y, obj_noelle.x, obj_noelle.y);
	speed     = walkSpeed;
	if(obj_noelle.x > x){ image_xscale = 1; }
	else{ image_xscale = -1; }
	depth     = -y;
	if(instance_exists(obj_lencap)){
		speed = 0; 
		image_speed = 0;
	}
}
obj_noelle.depth     = -obj_noelle.y;

///loop
alarm[0] = alaTime;