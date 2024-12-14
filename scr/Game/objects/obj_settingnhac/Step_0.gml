// Trong Step Event của obj_slider_music
if (mouse_check_button_pressed(mb_left)) {
    // Di chuyển thanh trượt theo chuột
    if (mouse_x > x && mouse_x < x + sprite_width) {
        global.music_volume = clamp((mouse_x - x) / sprite_width, 0, 1);
        // Cập nhật âm lượng nhạc nền
        audio_sound_gain(global.menu_music, global.music_volume, 0); // Điều chỉnh âm lượng nhạc nền
    }
}
