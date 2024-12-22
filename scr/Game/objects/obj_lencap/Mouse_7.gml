if (state == "idle"){
	
	obj_lencap.state = "go away";
	image_blend = c_orange;
	// Hàm tìm chỉ số của phần tử trong mảng
	function array_index_of(_array, _value) {
    for (var i = 0; i < array_length_1d(_array); i++) {
        if (_array[i] == _value) {
            return i;  // Trả về chỉ số nếu tìm thấy
        }
    }
	 return -1;  // Trả về -1 nếu không tìm thấy
	}




	if (sprite_index == spr_vanlai_1) 
	{  
		obj_noelle.vp_1 ++;
		obj_noelle.dmg_trongkiem ++;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 0);
	}
	if(sprite_index == spr_vanlai_2 || sprite_index == spr_vanlai_3 || sprite_index == spr_vanlai_4 || sprite_index == spr_vanlai_5)
	{
		obj_noelle.dmg_trongkiem ++;
		obj_noelle.vp_1 ++;
		if(obj_noelle.vp_1 == 5)
		{
			obj_noelle.VatPhamConLai --;
			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 0);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 0);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
			
		}
	}





if (sprite_index == spr_luuthien_1) 
	{  
		obj_noelle.vp_1 ++;
		obj_noelle.dmg_ten ++;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 0);
	}
	if(sprite_index == spr_luuthien_2 || sprite_index == spr_luuthien_3 || sprite_index == spr_luuthien_4 || sprite_index == spr_luuthien_5)
	{
		obj_noelle.dmg_ten ++;
		obj_noelle.vp_1 ++;
		if(obj_noelle.vp_1 == 5)
		{
			obj_noelle.VatPhamConLai --;
			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 0);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 0);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
			
		}
	}




if (sprite_index == spr_Kaboom_1) 
	{  
		obj_noelle.vp_1 ++;
		obj_noelle.dmg_sach ++;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 0);
	}
	if(sprite_index == spr_Kaboom_2 || sprite_index == spr_Kaboom_3 || sprite_index == spr_Kaboom_4 || sprite_index == spr_Kaboom_5)
	{
		obj_noelle.dmg_sach ++;
		obj_noelle.vp_1 ++;
		if(obj_noelle.vp_1 == 5)
		{
			obj_noelle.VatPhamConLai --;
			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 0);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 0);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
			
		}
	}


	if (sprite_index == spr_buoidienbatdau_3) 
	{
		obj_noelle.alartime[4] = 460;
	}
	if (sprite_index == spr_buoidienbatdau_3) 
	{
		obj_noelle.alartime[4] = 440;
	}

	
	if (sprite_index == spr_buoidienbatdau_1) 
	{  
		obj_noelle.vp_2 ++;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 1);
	}
	if(sprite_index == spr_buoidienbatdau_2 || sprite_index == spr_buoidienbatdau_3 || sprite_index == spr_buoidienbatdau_4 || sprite_index == spr_buoidienbatdau_5)
	{
		obj_noelle.vp_2 ++;
		if(obj_noelle.vp_2 == 5)
		{
			obj_noelle.VatPhamConLai --;

			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 1);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 1);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
			
		}
	}
	  
	  
	  
	  
	if (sprite_index == spr_bomnay_3)
	{
		obj_noelle.alartime[3] = 340;
	}
	if (sprite_index == spr_bomnay_5)
	{
		obj_noelle.alartime[3] = 300;
	}
	
	if (sprite_index == spr_bomnay_1) 
	{  
		obj_noelle.vp_3 ++;
		obj_noelle.dmg_boomnay ++;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 2);
	}
	if(sprite_index == spr_bomnay_2 || sprite_index == spr_bomnay_3 || sprite_index == spr_bomnay_4 || sprite_index == spr_bomnay_5)
	{
		obj_noelle.vp_3 ++;
		obj_noelle.dmg_boomnay ++;
		if(obj_noelle.vp_3 == 5)
		{
			obj_noelle.VatPhamConLai --;
			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 2);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 2);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
			
		}
	}
	
	
	
	
	if (sprite_index == spr_tanghp_1) 
	{  
		obj_noelle.vp_4 ++;
		obj_noelle.max_hp += 10;
		obj_noelle.hp += 10;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 3);
	}
	if(sprite_index == spr_tanghp_2 || sprite_index == spr_tanghp_3 || sprite_index == spr_tanghp_4 || sprite_index == spr_tanghp_5)
	{
		obj_noelle.vp_4 ++;
		obj_noelle.max_hp += 10;
		obj_noelle.hp += 10;
		if(obj_noelle.vp_4 == 5)
		{
			obj_noelle.VatPhamConLai --;
			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 3);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 3);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
			
		}
	}
	
	
	
	
	if (sprite_index == spr_tangdame_1) 
	{  
		obj_noelle.vp_5 ++;
		obj_noelle.dmg_congthem += 0.2;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 4);
	}
	if(sprite_index == spr_tangdame_2 || sprite_index == spr_tangdame_3 || sprite_index == spr_tangdame_4 || sprite_index == spr_tangdame_5)
	{
		obj_noelle.dmg_congthem += 0.2;
		obj_noelle.vp_5 ++;
		if(obj_noelle.vp_5 == 5)
		{
			obj_noelle.VatPhamConLai --;
			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 4);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 4);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
			
		}
	}
	
	
	
	
	
	if (sprite_index == spr_tangtoc_1) 
	{  
		obj_noelle.vp_6 ++;
		obj_noelle.walkspeed += 0.3;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 5);
	}
	if(sprite_index == spr_tangtoc_2 || sprite_index == spr_tangtoc_3 || sprite_index == spr_tangtoc_4 || sprite_index == spr_tangtoc_5)
	{
		obj_noelle.vp_6 ++;
		if(obj_noelle.vp_6 == 5)
		{
			obj_noelle.VatPhamConLai --;
			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 5);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 5);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
			
		}
	}
	
	
	
	
	
	if (sprite_index == spr_banhxelua_3)
	{
		with (obj_banhxelua) 
		{
			 instance_destroy();
		}
		if (!instance_exists(obj_banhxelua)) {
		   for (var i = 0; i < 2; i++) {
		        var angle = 180 * i; 
		        var x_pos = x + lengthdir_x(100, angle);
		        var y_pos = y + lengthdir_y(100, angle);
        
		        var new_instance = instance_create_layer(x_pos, y_pos, "Instances", obj_banhxelua);
		        new_instance.angle = angle;
		    }
		}
	}
	
	
	
	if (sprite_index == spr_banhxelua_5)
	{
		with (obj_banhxelua) 
		{
			 instance_destroy();
		}
		if (!instance_exists(obj_banhxelua)) {
		   for (var i = 0; i < 3; i++) {
		        var angle = 120 * i; 
		        var x_pos = x + lengthdir_x(100, angle);
		        var y_pos = y + lengthdir_y(100, angle);
        
		        var new_instance = instance_create_layer(x_pos, y_pos, "Instances", obj_banhxelua);
		        new_instance.angle = angle;
		    }
		}
	}

	
	if (sprite_index == spr_banhxelua_1) 
	{  
		instance_create_layer(x, y, "Instances", obj_banhxelua);
		obj_noelle.vp_7 ++;
		obj_noelle.dmg_banhxelua ++;
		obj_noelle.SoVatPhamDaChon ++;
		array_push(obj_noelle.CacVatPhamDaChon, 6);
	}
	if(sprite_index == spr_banhxelua_2 || sprite_index == spr_banhxelua_3 || sprite_index == spr_banhxelua_4 || sprite_index == spr_banhxelua_5)
	{
		obj_noelle.vp_7 ++;
		obj_noelle.dmg_banhxelua ++;
		if(obj_noelle.vp_7 == 5)
		{
			obj_noelle.VatPhamConLai --;
			var index = array_index_of(obj_noelle.CacVatPhamDaChon, 6);
			var index1 = array_index_of(obj_noelle.SoNgauNhien, 6);
			if (index != -1) {
				array_delete(obj_noelle.CacVatPhamDaChon, index,1);
			}
			if (index1 != -1)
			{
				array_delete(obj_noelle.SoNgauNhien, index1,1);
			}
		}
	}
	
	
	
	
	
	
	
	if(sprite_index == spr_mora)
	{
		obj_noelle.tien += 10;
	}
	
	
	
}