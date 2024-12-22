// Kiểm tra các room có nhạc nền chung
if room == Menu || room == Tuychinh || room == Nangcap || room == Chonmap || room == Chonnhanvat || room = thua || room = Thang{
    if global.menu_music == noone {
		global.menu_music = snd_menu; 
        audio_play_sound(snd_menu, global.music_volume, true);
		audio_sound_gain(global.menu_music, global.music_volume, 0);
    }
} else {
    if global.menu_music == snd_menu {
        audio_stop_sound(global.menu_music); 
        global.menu_music = noone;
    }
}

	

if room == Choi {
    if global.menu_music == noone {
		global.menu_music = snd_choi; 
        audio_play_sound(snd_choi, global.music_volume, true);  
		audio_sound_gain(global.menu_music, global.music_volume, 0);
    }
} else {
    if global.menu_music == snd_choi {
        audio_stop_sound(global.menu_music); 
        global.menu_music = noone;
    }
}
