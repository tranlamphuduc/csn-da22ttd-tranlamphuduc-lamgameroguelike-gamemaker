if(instance_exists(obj_lencap)){ exit; }
if (global.nhanvat_duocchon == 1)
{
	var trongkiem = instance_create_layer(x,y, "Instances", obj_trongkiem);
	trongkiem.image_xscale = image_xscale;
	audio_sound_gain(snd_slash, global.effect_volume, 0);
	audio_play_sound(snd_slash, global.effect_volume, false);
	if (image_xscale ==  1){ trongkiem.addX=  5; }
	if (image_xscale == -1){ trongkiem.addX= -5; }
}