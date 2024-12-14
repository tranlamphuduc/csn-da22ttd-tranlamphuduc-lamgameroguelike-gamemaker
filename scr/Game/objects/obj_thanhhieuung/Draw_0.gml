draw_self()
var effect_width = 250; 
var effect_height = 20;

var effect_length = effect_width * global.effect_volume; 
draw_set_font(font_vietnamese);
draw_set_color(c_black);
draw_text(x - effect_width -10, y, "Hiệu ứng: ");
draw_text(x - effect_width -10, y +120, "Full màn hình: ");
draw_set_color(c_gray);
draw_rectangle(x, y, x + effect_width, y + effect_height, false);

draw_set_color(c_green);  
draw_rectangle(x, y, x + effect_length, y + effect_height, false);
