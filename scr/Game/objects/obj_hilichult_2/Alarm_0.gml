var direction_to_noelle = point_direction(x, y, obj_noelle.x, obj_noelle.y);
var arrow = instance_create_layer(x, y, "Instances", obj_arrow);

if (instance_exists(obj_lencap)) {
}
else
{
	arrow.direction = direction_to_noelle;
	arrow.speed = 2;
	arrow.image_angle = arrow.direction;

	// Dừng quái lại trong 0.5 giây
	speed = 0;
	alarm[1] = room_speed * 0.5;  // Sau 0.5 giây khôi phục di chuyển


	alarm[0] = room_speed * 2;
}