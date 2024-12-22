


if (instance_exists(obj_lencap)) {
    image_speed = 0;

    move_towards_point(obj_noelle.x, obj_noelle.y, 0);
    skill_1_is_active = false;
    return; 
}
else
{
    image_speed = 0.5;

    if (obj_noelle.x > x) {
        image_xscale = 1; 
    } else {
        image_xscale = -1; 
    }


    var move_angle = point_direction(x, y, obj_noelle.x, obj_noelle.y);


    var next_x = x + lengthdir_x(0.5, move_angle);
    var next_y = y + lengthdir_y(0.5, move_angle);


    if (!place_meeting(next_x, next_y, obj_cantro)) {

        x = next_x;
        y = next_y;
    }


    if (alarm[2] <= 0) {
        skill_1_is_active = true;
        alarm[0] = room_speed;
        alarm[2] = 360; 
    }


    if (skill_1_is_active) {
        image_speed = 0;
        var angle_step = 360 / 18; 
        for (var i = 0; i < 18; i++) {
            var angle = i * angle_step;


            var rocket = instance_create_layer(x, y, "Instances", obj_rocket);
        
     
            rocket.direction = angle + direction; 
            rocket.speed = 1; 
        }
    
        skill_1_is_active = false; 
    }
}
