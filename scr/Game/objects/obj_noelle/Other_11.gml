if(instance_exists(obj_lencap)){ exit; }
if (global.nhanvat_duocchon == 2)
{
	audio_sound_gain(snd_fireball, global.effect_volume, 0);
	audio_play_sound(snd_fireball, global.effect_volume, false);
	
	if(vp_1 == 0 || vp_1 == 1 || vp_1 == 2)
	{
		var sach = instance_create_layer(x,y, "Instances", obj_fireball);
			sach.direction = aim_dir;
	
			sach.image_angle = sach.direction;

			sach.speed	    = 4;
	}
	
	if(vp_1 == 3 || vp_1 == 4)
	{
		var sach = instance_create_layer(x,y, "Instances", obj_fireball);
		var sach1 = instance_create_layer(x,y, "Instances", obj_fireball);
		var sach2 = instance_create_layer(x,y, "Instances", obj_fireball);
			sach.direction = aim_dir;
	
			sach.image_angle = sach.direction;

			sach.speed	    = 4;
			
			sach1.direction = aim_dir+ 20;
	
			sach1.image_angle = sach1.direction;

			sach1.speed	    = 4;
			
			sach2.direction = aim_dir - 20;
	
			sach2.image_angle = sach2.direction;

			sach2.speed	    = 4;
	}
	if(vp_1 == 5)
	{
		var sach = instance_create_layer(x,y, "Instances", obj_fireball);
		var sach1 = instance_create_layer(x,y, "Instances", obj_fireball);
		var sach2 = instance_create_layer(x,y, "Instances", obj_fireball);
		var sach3 = instance_create_layer(x,y, "Instances", obj_fireball);
		var sach4 = instance_create_layer(x,y, "Instances", obj_fireball);
		sach.direction = aim_dir;
	
		sach.image_angle = sach.direction;

		sach.speed	    = 4;
	
		sach1.direction = aim_dir+ 20;
	
		sach1.image_angle = sach1.direction;

		sach1.speed	    = 4;

		sach3.direction = aim_dir+ 40;
	
		sach3.image_angle = sach1.direction;

		sach3.speed	    = 4;

		sach2.direction = aim_dir - 20;
	
		sach2.image_angle = sach2.direction;

		sach2.speed	    = 4;
	
		sach4.direction = aim_dir - 40;
	
		sach4.image_angle = sach4.direction;

		sach4.speed	    = 4;
	}
}