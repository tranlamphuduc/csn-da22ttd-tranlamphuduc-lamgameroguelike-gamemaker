draw_self()
var music_width = 250;  
var music_height = 20; 

var music_length = music_width * global.music_volume; 
draw_set_font(font_vietnamese);
draw_set_color(c_black);
draw_text(x - music_width -10, y, "Nhạc nền: ");



draw_set_color(c_gray);
draw_rectangle(x, y, x + music_width, y + music_height, false);

draw_set_color(c_green);  
draw_rectangle(x, y, x + music_length, y + music_height, false);


