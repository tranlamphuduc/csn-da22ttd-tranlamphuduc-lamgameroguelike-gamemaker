
with(obj_quai){
    image_speed = 1;
    direction = point_direction(x, y, obj_noelle.x, obj_noelle.y);
    speed = walkSpeed;


    if (obj_noelle.x > x) { 
        image_xscale = 1; 
    } else { 
        image_xscale = -1;
    }

    depth = -y;


    if (instance_exists(obj_lencap)) {
        speed = 0; 
        image_speed = 0;
    }
    else {

        var move_angle = point_direction(x, y, obj_noelle.x, obj_noelle.y);
        var next_x = x + lengthdir_x(speed, move_angle); 
        var next_y = y + lengthdir_y(speed, move_angle); 


        if (!place_meeting(next_x, next_y, obj_cantro)) {
  
            x = next_x;
            y = next_y;
        } else {


            var direction_1 = move_angle + 90;
            var direction_2 = move_angle - 90; 
            var direction_3 = move_angle + 180;


            var found_path = false;
            for (var i = 0; i < 4; i++) {
var try_angle = (i == 0) ? move_angle : ((i == 1) ? direction_1 : ((i == 2) ? direction_2 : direction_3));

                var next_x_try = x + lengthdir_x(speed, try_angle);
                var next_y_try = y + lengthdir_y(speed, try_angle);


                if (!place_meeting(next_x_try, next_y_try, obj_cantro)) {
                    x = next_x_try;
                    y = next_y_try;
                    found_path = true;
                    break;
                }
            }

  
            if (!found_path) {
                speed = 0;
                image_speed = 0;
            }
        }
    }
}


obj_noelle.depth = -obj_noelle.y;

