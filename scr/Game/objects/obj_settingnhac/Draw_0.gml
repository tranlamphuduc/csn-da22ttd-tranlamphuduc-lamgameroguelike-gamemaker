// Trong Draw Event của obj_slider_music
if room == Tuychinh {
	draw_self();
	draw_text(x + sprite_width + 10, y, string(global.music_volume));  // Hiển thị giá trị âm lượng
}