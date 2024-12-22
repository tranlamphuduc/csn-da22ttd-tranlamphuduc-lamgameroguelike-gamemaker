if(room == Tuychinh)
{
	global.music_volume = min(global.music_volume + 0.1, 1); 
	audio_sound_gain(global.menu_music, global.music_volume, 0);
}