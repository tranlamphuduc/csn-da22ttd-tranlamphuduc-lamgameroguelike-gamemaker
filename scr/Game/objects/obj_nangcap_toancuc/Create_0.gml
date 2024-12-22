// Kiểm tra nếu file INI tồn tại
if (file_exists("save_data.ini")) {
    ini_open("save_data.ini");



   global.tongtien = ini_read_real("SaveData", "money", 0);
    global.dmgnang = ini_read_real("SaveData", "damage", 0);
    global.spdnang = ini_read_real("SaveData", "speed", 0);
    global.hpnang = ini_read_real("SaveData", "hp", 0);

    global.upgrade_cost_damage = ini_read_real("SaveData", "cost_damage", 10);
    global.upgrade_cost_speed = ini_read_real("SaveData", "cost_speed", 15);
    global.upgrade_cost_hp = ini_read_real("SaveData", "cost_hp", 25);

    ini_close();
} else {

    global.tongtien = 0;   
    global.dmgnang = 0;     
    global.spdnang = 0;
    global.hpnang = 0;  

    global.upgrade_cost_hp = 10;   
    global.upgrade_cost_speed = 15; 
    global.upgrade_cost_damage = 25;   


    ini_open("save_data.ini");
    ini_write_real("SaveData", "money", global.tongtien);
    ini_write_real("SaveData", "damage", global.dmgnang);
    ini_write_real("SaveData", "speed", global.spdnang);
    ini_write_real("SaveData", "hp", global.hpnang);
    ini_write_real("SaveData", "cost_damage", global.upgrade_cost_damage);
    ini_write_real("SaveData", "cost_speed", global.upgrade_cost_speed);
    ini_write_real("SaveData", "cost_hp", global.upgrade_cost_hp);
    ini_close();
}
