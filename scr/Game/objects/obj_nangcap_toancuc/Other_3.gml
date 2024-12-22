// Lưu thông tin vào file
ini_open("save_data.ini");
ini_write_real("SaveData", "money", global.tongtien);
ini_write_real("SaveData", "damage", global.dmgnang);
ini_write_real("SaveData", "speed", global.spdnang);
ini_write_real("SaveData", "hp", global.hpnang);

ini_write_real("SaveData", "cost_damage", global.upgrade_cost_damage);
ini_write_real("SaveData", "cost_speed", global.upgrade_cost_speed);
ini_write_real("SaveData", "cost_hp", global.upgrade_cost_hp);
ini_close();
