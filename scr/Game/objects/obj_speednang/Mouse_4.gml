if (global.tongtien >= global.upgrade_cost_speed) {
    global.tongtien -= global.upgrade_cost_speed;
    global.spdnang += 0.1; // Tăng damage
    global.upgrade_cost_speed += 10; // Giá tăng
    txt = "Nâng cấp Speed: " + string(global.upgrade_cost_speed) + " tiền";
} else {
    show_message("Bạn không đủ tiền!");
}
