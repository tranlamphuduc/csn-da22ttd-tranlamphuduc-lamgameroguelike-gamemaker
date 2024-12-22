if(instance_exists(obj_lencap)){ 
	image_speed = 0;
	exit; }
else
{
	image_speed = 1;
	if(canFly == true){
		move_towards_point(obj_noelle.x, obj_noelle.y, 2);
	}
}