if(instance_exists(obj_lencap)){ exit; }

var sach = instance_create_layer(x,y, "Instances", obj_trongkiem_1);
	sach.direction= irandom_range(45,135);
	sach.speed	  = 4;
	sach.gravity  = 0.1;
	sach.friction = 0.01;
	