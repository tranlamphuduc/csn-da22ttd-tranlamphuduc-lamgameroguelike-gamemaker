event_inherited();
if(obj_noelle.vp_1== 0 || obj_noelle.vp_1== 1 || obj_noelle.vp_1== 2)
{
	sprite_index = spr_chem_1;
}
if(obj_noelle.vp_1== 3 || obj_noelle.vp_1== 4)
{
	sprite_index = spr_chem_2;
}
if(obj_noelle.vp_1== 5)
{
	sprite_index = spr_chem_3;
}
x  =  obj_noelle.x + addX;
y  =  obj_noelle.y;