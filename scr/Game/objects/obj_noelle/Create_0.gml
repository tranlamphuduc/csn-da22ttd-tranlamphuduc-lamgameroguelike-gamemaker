global.tiennhanduoc = 0;
if (global.nhanvat_duocchon == 1)
{
	walkspeed = 1 + global.spdnang;
	max_hp = 100 + global.hpnang;    
	hp = max_hp;     
}
if (global.nhanvat_duocchon == 2)
{
	walkspeed = 1 + global.spdnang;
	max_hp = 80 + global.hpnang;   
	hp = max_hp;     
}
if (global.nhanvat_duocchon == 3)
{
	walkspeed = 1.5 + global.spdnang;
	max_hp = 80 + global.hpnang;    
	hp = max_hp;     
}
alartime[0] = 80;
alartime[1] = 120;
alartime[2] = 120;
alartime[3] = 360;
alartime[4] = 480;

alarm[0] = alartime[0];
alarm[1] = alartime[1];
alarm[2] = alartime[2];
alarm[3] = alartime[3];
alarm[4] = alartime[4];

slot[0] = "trongkiem";
slot[1] = "sach";
slot[2] = "ten";
slot[3] = "bom";
slot[4] = "hoimau";

dmg_congthem = 0;
dmg_trongkiem   = 2000 + global.dmgnang + dmg_congthem;
dmg_sach        = 3 + global.dmgnang + dmg_congthem;
dmg_ten         = 2 + global.dmgnang + dmg_congthem;
dmg_banhxelua = 2 + global.dmgnang + dmg_congthem;
dmg_boomnay = 2 + global.dmgnang + dmg_congthem;

collectRadius = 50;


tien = 0;

xp     = 0;
xpNext = 10;

center_y_offset = -5;
center_y = y + center_y_offset;
aim_dir = 0;


// thẻ ngẫu nhiên

	SoNgauNhien = [0, 1, 2, 3, 4, 5, 6];
	SoVatPhamDaChon = 0;
	CacVatPhamDaChon = [];
	vp_1=0; vp_2=0; vp_3=0; vp_4=0; vp_5=0; vp_6=0; vp_7=0;
	VatPhamConLai = 5;




damage_delay = 0;
damage_cooldown = 30; 




/* bánh xe lửa
if (!instance_exists(obj_banhxelua)) {
    instance_create_layer(x, y, "Instances", obj_banhxelua);
	obj_banhxelua.angle= 180;
	instance_create_layer(x, y, "Instances", obj_banhxelua);
}*/
