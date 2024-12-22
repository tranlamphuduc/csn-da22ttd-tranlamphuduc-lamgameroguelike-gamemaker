if (global.tongtien >= global.upgrade_cost_damage) {
    global.tongtien -= global.upgrade_cost_damage;
    global.dmgnang += 0.2; // Tăng damage
    global.upgrade_cost_damage += 10; // Giá tăng
    txt = "Nâng cấp Damage: " + string(global.upgrade_cost_damage) + " tiền";
} else {
    show_message("Bạn không đủ tiền!");
}
