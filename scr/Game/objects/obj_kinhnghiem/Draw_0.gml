
draw_set_color(c_black);
draw_rectangle(x - bar_width / 2, y - bar_height / 2, x + bar_width / 2, y + bar_height / 2, false);

var xp_ratio = xp / xpNext; 
draw_set_color(c_blue);
draw_rectangle(x - bar_width / 2 + 1, y - bar_height / 2 + 1, x - bar_width / 2 + (bar_width - 2) * xp_ratio, y + bar_height / 2 - 1, false);



