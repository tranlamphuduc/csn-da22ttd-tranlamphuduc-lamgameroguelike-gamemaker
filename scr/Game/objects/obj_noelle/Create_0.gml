walkspeed = 2;

alartime[0] = 80;
alartime[1] = 500;
alartime[2] = 100;

alarm[0] = alartime[0];
alarm[1] = alartime[1];
alarm[2] = alartime[2];

slot[0] = "trongkiem";
slot[1] = "sach";
slot[2] = "ten";

dmg_trongkiem   = 3;
dmg_sach        = 1;
dmg_ten         = 2;

collectRadius = 50;

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


// bánh xe lửa
if (!instance_exists(obj_banhxelua)) {
    instance_create_layer(x, y, "Instances", obj_banhxelua);
	obj_banhxelua.angle= 180;
	instance_create_layer(x, y, "Instances", obj_banhxelua);
}
