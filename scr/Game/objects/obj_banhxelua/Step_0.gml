event_inherited();
if(instance_exists(obj_lencap)){ exit; }
if (instance_exists(center_object)) {

    angle += rotate_speed;
    

    if (angle >= 360) angle -= 360;
    

    x = center_object.x + lengthdir_x(radius, angle);
    y = center_object.y + lengthdir_y(radius, angle);
}
image_angle += 10;