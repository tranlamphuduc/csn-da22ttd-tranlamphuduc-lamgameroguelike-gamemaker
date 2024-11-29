// Kiểm tra va chạm với nhân vật
if (instance_exists(obj_lencap)) {
	speed = 0; // Dừng phần còn lại của mã khi obj_lencap tồn tại
}

else
{
	speed= 2;
	if (place_meeting(x, y, obj_noelle)) {
	    // Giảm máu của nhân vật trúng chiêu
	    var nhanvat = instance_place(x, y, obj_noelle); 
	    if (nhanvat != noone) {
	        nhanvat.hp -= 15; // Trừ 15 máu của nhân vật
	    }

	    // Hủy đối tượng chiêu
	    instance_destroy(); 
	}
}
