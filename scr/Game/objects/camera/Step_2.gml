var _cam_width= camera_get_view_width( view_camera[0] );
var _cam_height = camera_get_view_height( view_camera[0] );

if instance_exists(obj_noelle)
{
	x = obj_noelle.x - _cam_width / 2;
	y = obj_noelle.center_y - _cam_height / 2;
	
	

	if x_shake_amount > 0
	{
		x_shake_dir += x_shake_dir_spd;
		x_shake_amount -= x_shake_amount_spd;
	}
	else
	{
		x_shake_dir = 0;
		x_shake_amount = 0;
	}
	x_shake = dsin( x_shake_dir ) * x_shake_amount;
	
	if y_shake_amount > 0
	{
		y_shake_dir += x_shake_dir_spd;
		y_shake_amount -= x_shake_amount_spd;
	}
	else
	{
		y_shake_dir = 0;
		y_shake_amount = 0;
	}
	y_shake = dsin( y_shake_dir ) * y_shake_amount;

	x += x_shake;
	y += y_shake;
}


//x = clamp( x, 0, room_width - _cam_width );
//y = clamp( y, 0, room_height - _cam_height );

camera_set_view_pos( view_camera[0], x, y );