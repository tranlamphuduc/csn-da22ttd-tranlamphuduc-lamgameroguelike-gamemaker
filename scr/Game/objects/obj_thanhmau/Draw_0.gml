// Vẽ thanh máu nền (màu đen)
draw_set_color(c_black);
draw_rectangle(x - bar_width / 2, y - bar_height / 2, x + bar_width / 2, y + bar_height / 2, false);

// Tính toán tỷ lệ thanh máu
var hp_ratio = hp / maxhpt; 

// Vẽ thanh máu với màu xanh lá
draw_set_color(c_lime);  
// Vẽ thanh máu với chiều rộng thay đổi theo tỷ lệ hp_ratio
draw_rectangle(x - bar_width / 2, y - bar_height / 2, 
               x - bar_width / 2 + (bar_width - 1) * hp_ratio, 
               y + bar_height / 2, false);
