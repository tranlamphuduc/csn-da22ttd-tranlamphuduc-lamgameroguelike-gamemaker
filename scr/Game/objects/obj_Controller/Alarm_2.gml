

var _list = ds_list_create();
var _num = collision_circle_list(obj_noelle.x, obj_noelle.y, obj_noelle.collectRadius, obj_lvl, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
        _list[| i].canFly = true;
    }
}
ds_list_destroy(_list);

var _list1 = ds_list_create();
var _num1 = collision_circle_list(obj_noelle.x, obj_noelle.y, obj_noelle.collectRadius, obj_lvl_1, false, true, _list1, false);
if (_num1 > 0)
{
    for (var i = 0; i < _num1; ++i;)
    {
        _list1[| i].canFly = true;
    }
}
ds_list_destroy(_list1);

var _list2 = ds_list_create();
var _num2 = collision_circle_list(obj_noelle.x, obj_noelle.y, obj_noelle.collectRadius, obj_mora, false, true, _list2, false);
if (_num2 > 0)
{
    for (var i = 0; i < _num2; ++i;)
    {
        _list2[| i].canFly = true;
    }
}
ds_list_destroy(_list2);
alarm[2] = alaTime2; 