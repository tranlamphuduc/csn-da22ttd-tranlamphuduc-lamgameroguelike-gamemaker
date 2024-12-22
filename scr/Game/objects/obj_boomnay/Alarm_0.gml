sprite_index = spr_boom;

// Kiểm tra bom đã phát nổ (sprite là spr_boom và là frame cuối của hoạt ảnh)
if (sprite_index == spr_boom) {

var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_quai, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		if (_list[| i].sprite_index == _list[| i].spr){
			var dir = point_direction(x,y, _list[| i].x, _list[| i].y)
			_list[| i].x = _list[| i].x + lengthdir_x(5, dir );
			_list[| i].y = _list[| i].y + lengthdir_y(5, dir );
			
			
			
			_list[| i].hp -= dmg;
			if (_list[| i].hp <= 0){
				instance_destroy(_list[| i]);
		}}
	}
}
ds_list_destroy(_list);





var _list1 = ds_list_create();
var _num1 = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_boss, false, true, _list1, false);
if (_num1 > 0)
{
    for (var i = 0; i < _num1; ++i;)
    {
		if (_list1[| i].sprite_index == _list1[| i].spr){
			var dir = point_direction(x,y, _list1[| i].x, _list1[| i].y)
			_list1[| i].x = _list1[| i].x + lengthdir_x(5, dir );
			_list1[| i].y = _list1[| i].y + lengthdir_y(5, dir );
			
			
			
			_list1[| i].hp -= dmg;
			if (_list1[| i].hp <= 0){
				instance_destroy(_list1[| i]);
		}}
	}
}
ds_list_destroy(_list1);



}
