
if (instance_exists(obj_lencap)) {
    count_up = false;
}
else
{
	count_up = true;
}

if (count_up = true) {
	giay += 1/room_speed;
}

if (giay < 60) && (giay > 59.9)
{
	giay  = 0;
	phut += 1;
}

// Đảm bảo phút và giây luôn có 2 chữ số
formatted_minutes = (phut < 10) ? "0" + string(phut) : string(phut);
formatted_seconds = (giay < 10) ? "0" + string(giay) : string(giay);

