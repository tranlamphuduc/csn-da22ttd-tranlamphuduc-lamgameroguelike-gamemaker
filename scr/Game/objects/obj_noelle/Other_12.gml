if(instance_exists(obj_lencap)){ exit; }
if (global.nhanvat_duocchon == 3)
{
		audio_sound_gain(snd_arrow, global.effect_volume, 0);
		audio_play_sound(snd_arrow, global.effect_volume, false);
		if(vp_1 == 3)
		{
			alartime[2] = 80;
		}
		if(vp_1 == 5)
		{
			alartime[2] = 60;
		}
		var ten = instance_create_layer(x,y, "Instances", obj_ten);

	
		ten.direction = aim_dir;
	
		ten.image_angle = ten.direction;

		ten.speed	    = 8;
}
	

	