if(instance_exists(obj_lencap)){ exit; }


xp    += 1;
if (xp >= xpNext){
	xp = 1;
	xpNext = 1;
	var item_sprites = [
        [spr_Kaboom_1, spr_Kaboom_2, spr_Kaboom_3, spr_Kaboom_4, spr_Kaboom_5],
        [spr_buoidienbatdau_1, spr_buoidienbatdau_2, spr_buoidienbatdau_3, spr_buoidienbatdau_4, spr_buoidienbatdau_5],
        [spr_bomnay_1, spr_bomnay_2, spr_bomnay_3, spr_bomnay_4, spr_bomnay_5],
        [spr_tanghp_1, spr_tanghp_2, spr_tanghp_3, spr_tanghp_4, spr_tanghp_5],
        [spr_tangdame_1, spr_tangdame_2, spr_tangdame_3, spr_tangdame_4, spr_tangdame_5],
        [spr_tangtoc_1, spr_tangtoc_2, spr_tangtoc_3, spr_tangtoc_4, spr_tangtoc_5],
        [spr_banhxelua_1, spr_banhxelua_2, spr_banhxelua_3, spr_banhxelua_4, spr_banhxelua_5],
		[spr_themora]
    ];
	
	var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
	var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

	
// Hàm chọn ngẫu nhiên 3 vũ khí	
	SoDuocRandomRa = []; 
	if(SoVatPhamDaChon < 5)
	{
		while (array_length(SoDuocRandomRa) < 3) 
		{
			var index = irandom(array_length(SoNgauNhien) - 1);  // Chọn một chỉ số ngẫu nhiên trong mảng arr
			var selected_item = SoNgauNhien[index];  // Lấy phần tử tại chỉ số ngẫu nhiên
			 // Kiểm tra xem phần tử đã được chọn chưa
			if (!array_contains(SoDuocRandomRa, selected_item)) 
			{
				array_push(SoDuocRandomRa, selected_item);  // Thêm phần tử vào mảng chọn nếu chưa có
			}
		}
	}
	else
	{
		if(VatPhamConLai == 3)
		{
			array_push(CacVatPhamDaChon, 7);
		}
		if(VatPhamConLai == 2)
		{
			array_push(CacVatPhamDaChon, 8);
		}
		if(VatPhamConLai == 1)
		{
			array_push(CacVatPhamDaChon, 9);
		}

			while (array_length(SoDuocRandomRa) < 3) 
			{
				var index = irandom(array_length(CacVatPhamDaChon) - 1);
				var selected_item = CacVatPhamDaChon[index];
				if (!array_contains(SoDuocRandomRa, selected_item)) 
				{
					array_push(SoDuocRandomRa, selected_item);
				}
			}
		
	}
	
	
	for (var i = 0; i < 3; i++) {
		if(SoDuocRandomRa[i] == 0)
		{
	        var _sprite_index = item_sprites[SoDuocRandomRa[i]][vp_1];
	        var xPos = _vx + (i - 1) * 250;  // Khoảng cách giữa các thẻ
	        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
	        obj.destinationx = xPos - (i - 1) * 60;
	        obj.destinationy = _vy;
	        obj.image_alpha  = 1;
	        obj.sprite_index = _sprite_index;
		}
		if(SoDuocRandomRa[i] == 1)
		{
	        var _sprite_index = item_sprites[SoDuocRandomRa[i]][vp_2];
	        var xPos = _vx + (i - 1) * 250;  // Khoảng cách giữa các thẻ
	        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
	        obj.destinationx = xPos - (i - 1) * 60;
	        obj.destinationy = _vy;
	        obj.image_alpha  = 1;
	        obj.sprite_index = _sprite_index;
		}
		if(SoDuocRandomRa[i] == 2)
		{
	        var _sprite_index = item_sprites[SoDuocRandomRa[i]][vp_3];
	        var xPos = _vx + (i - 1) * 250;  // Khoảng cách giữa các thẻ
	        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
	        obj.destinationx = xPos - (i - 1) * 60;
	        obj.destinationy = _vy;
	        obj.image_alpha  = 1;
	        obj.sprite_index = _sprite_index;
		}
		if(SoDuocRandomRa[i] == 3)
		{
	        var _sprite_index = item_sprites[SoDuocRandomRa[i]][vp_4];
	        var xPos = _vx + (i - 1) * 250;  // Khoảng cách giữa các thẻ
	        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
	        obj.destinationx = xPos - (i - 1) * 60;
	        obj.destinationy = _vy;
	        obj.image_alpha  = 1;
	        obj.sprite_index = _sprite_index;
		}
		if(SoDuocRandomRa[i] == 4)
		{
	        var _sprite_index = item_sprites[SoDuocRandomRa[i]][vp_5];
	        var xPos = _vx + (i - 1) * 250;  // Khoảng cách giữa các thẻ
	        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
	        obj.destinationx = xPos - (i - 1) * 60;
	        obj.destinationy = _vy;
	        obj.image_alpha  = 1;
	        obj.sprite_index = _sprite_index;
		}
		if(SoDuocRandomRa[i] == 5)
		{
	        var _sprite_index = item_sprites[SoDuocRandomRa[i]][vp_6];
	        var xPos = _vx + (i - 1) * 250;  // Khoảng cách giữa các thẻ
	        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
	        obj.destinationx = xPos - (i - 1) * 60;
	        obj.destinationy = _vy;
	        obj.image_alpha  = 1;
	        obj.sprite_index = _sprite_index;
		}
		if(SoDuocRandomRa[i] == 6)
		{
	        var _sprite_index = item_sprites[SoDuocRandomRa[i]][vp_7];
	        var xPos = _vx + (i - 1) * 250;  // Khoảng cách giữa các thẻ
	        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
	        obj.destinationx = xPos - (i - 1) * 60;
	        obj.destinationy = _vy;
	        obj.image_alpha  = 1;
	        obj.sprite_index = _sprite_index;
		}
		//thêm vũ khí nữa
		if(SoDuocRandomRa[i] == 7 || SoDuocRandomRa[i] == 8 || SoDuocRandomRa[i] == 9)
		{
	        var _sprite_index = item_sprites[7][0];
	        var xPos = _vx + (i - 1) * 250;  // Khoảng cách giữa các thẻ
	        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
	        obj.destinationx = xPos - (i - 1) * 60;
	        obj.destinationy = _vy;
	        obj.image_alpha  = 1;
	        obj.sprite_index = _sprite_index;
		}
    }
}



instance_destroy(other.id);

/*
// Kiểm tra sự tồn tại của obj_lencap
if (instance_exists(obj_lencap)) { exit; }

xp += 1;
if (xp >= xpNext) {
    xp = 0;
    xpNext = xpNext * 3 / 2;

    var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
    var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);

    // Mảng các sprite cho 15 vật phẩm với mỗi vật phẩm có 6 sprite cấp độ
    var item_sprites = [
        [spr_vatpham1_lvl1, spr_vatpham1_lvl2, spr_vatpham1_lvl3, spr_vatpham1_lvl4, spr_vatpham1_lvl5, spr_vatpham1_lvl6],
        [spr_vatpham2_lvl1, spr_vatpham2_lvl2, spr_vatpham2_lvl3, spr_vatpham2_lvl4, spr_vatpham2_lvl5, spr_vatpham2_lvl6],
        // Thêm các vật phẩm khác...
        [spr_vatpham15_lvl1, spr_vatpham15_lvl2, spr_vatpham15_lvl3, spr_vatpham15_lvl4, spr_vatpham15_lvl5, spr_vatpham15_lvl6]
    ];

    // Khởi tạo mảng lưu vật phẩm đã chọn và cấp độ hiện tại của mỗi vật phẩm
    if (!variable_global_exists("selected_items")) {
        global.selected_items = [];
        global.item_counts = array_create(15, 0);  // Đếm số lần chọn
        global.item_levels = array_create(15, 0);  // Theo dõi cấp độ của mỗi vật phẩm
    }

    var chosen_items = [];
    if (array_length(global.selected_items) < 5) {
        while (array_length(chosen_items) < 3) {
            var index = irandom(array_length(item_sprites) - 1);
            if (global.item_counts[index] < 6) {
                chosen_items[array_length(chosen_items)] = index;
                global.item_counts[index] += 1;

                // Cấp độ hiện tại
                global.item_levels[index] = min(global.item_levels[index] + 1, 5);  // Cấp tối đa là 5
                if (array_length(global.selected_items) < 5) {
                    array_push(global.selected_items, index);
                }
            }
        }
    } else {
        chosen_items = global.selected_items;
    }

    // Tạo các vật phẩm trong màn hình lên cấp
    for (var i = 0; i < 3; i++) {
        var _sprite_index = item_sprites[chosen_items[i]][global.item_levels[chosen_items[i]]];
        var xPos = _vx + (i - 1) * 115;
        var obj = instance_create_depth(xPos, _vy, -2000, obj_lencap);
        obj.destinationx = xPos - (i - 1) * 60;
        obj.destinationy = _vy;
        obj.image_alpha  = 1;
        obj.sprite_index = _sprite_index;
    }
}

instance_destroy(other.id);*/
