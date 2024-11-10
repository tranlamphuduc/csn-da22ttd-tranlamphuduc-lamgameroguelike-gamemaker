if(instance_exists(obj_lencap)){ exit; }

var ten = instance_create_layer(x,y, "Instances", obj_trongkiem_2);
var ten1 = instance_create_layer(x,y, "Instances", obj_trongkiem_2);
var ten2 = instance_create_layer(x,y, "Instances", obj_trongkiem_2);
	
	ten.direction = aim_dir;
	
	ten.image_angle = ten.direction;

	ten.speed	    = 4;
	
	ten1.direction = aim_dir+ 30;
	
	ten1.image_angle = ten1.direction;

	ten1.speed	    = 4;


	ten2.direction = aim_dir - 30;
	
	ten2.image_angle = ten2.direction;

	ten2.speed	    = 4;
	