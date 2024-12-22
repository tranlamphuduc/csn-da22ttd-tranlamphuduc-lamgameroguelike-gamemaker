if (global.tongtien >= global.upgrade_cost_hp) {
    global.tongtien -= global.upgrade_cost_hp;
    global.hpnang += 10; // Tăng damage
    global.upgrade_cost_hp += 10; // Giá tăng
    txt = "Nâng cấp Hp: " + string(global.upgrade_cost_hp) + " tiền";
} else {
    show_message("Bạn không đủ tiền!");
}
