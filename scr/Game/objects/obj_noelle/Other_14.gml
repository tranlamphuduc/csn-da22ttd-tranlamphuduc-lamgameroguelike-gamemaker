if(instance_exists(obj_lencap)){ exit; }
if(global.nhanvat_duocchon == 1)
{
	if(hp < max_hp)
	{
		if(vp_2 >0)
		{
			if(vp_2 == 1 || vp_2 == 2)
			{
				hp+= 10;
			}
			if(vp_2 == 3 || vp_2 == 4)
			{
				hp+= 20;
			}
			if(vp_2 == 5)
			{
				hp+= 40;
			}
			instance_create_layer(x, y, "Instances", obj_buoidienbatdau);
		}
	}
}
if (global.nhanvat_duocchon == 2 || global.nhanvat_duocchon == 3)
{
	if(hp < max_hp)
	{
		if(vp_2 >0)
		{
			if(vp_2 == 1 || vp_2 == 2)
			{
				hp+= 5;
			}
			if(vp_2 == 3 || vp_2 == 4)
			{
				hp+= 10;
			}
			if(vp_2 == 5)
			{
				hp+= 15;
			}
			instance_create_layer(x, y, "Instances", obj_buoidienbatdau);
		}
	}
}
	

