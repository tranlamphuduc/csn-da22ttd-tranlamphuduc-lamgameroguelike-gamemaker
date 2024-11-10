if(instance_exists(obj_lencap)){ exit; }

var trongkiem = instance_create_layer(x,y, "Instances", obj_trongkiem);
	trongkiem.image_xscale = image_xscale;
	if (image_xscale ==  1){ trongkiem.addX=  5; }
	if (image_xscale == -1){ trongkiem.addX= -5; }