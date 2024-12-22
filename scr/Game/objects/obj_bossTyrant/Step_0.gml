// Lấy thông tin nhân vật
var player = obj_noelle;
var angle_to_player = point_direction(x, y, player.x, player.y);

// Xác định hướng quái: 
// Nếu góc nằm bên phải quái (0 - 180 độ), quái quay phải; ngược lại quay trái


if (instance_exists(obj_lencap)) {

    image_speed = 0;

    state = "idle"; 
} else {
	 if (obj_noelle.x > x) {
        image_xscale = 1; 
    } else {
        image_xscale = -1; 
    }
    image_speed = 0.5;

    if (state == "idle") {
    
        var move_angle = point_direction(x, y, player.x, player.y);
        

        var next_x = x + lengthdir_x(normal_speed, move_angle);
        var next_y = y + lengthdir_y(normal_speed, move_angle);
        

        if (!place_meeting(next_x, y, obj_cantro)) {
            x = next_x; 
        }
        if (!place_meeting(x, next_y, obj_cantro)) {
            y = next_y; 
        }


        cooldown_timer++;
        if (cooldown_timer >= time_to_skill) {
            state = "charging"; 
            warning_timer = room_speed;
            cooldown_timer = 0; 

        
            var offset_distance = 350;
            target_x = x + lengthdir_x(offset_distance, angle_to_player);
            target_y = y + lengthdir_y(offset_distance, angle_to_player);
        }
    }
    else if (state == "charging") {

        warning_timer--;
        if (warning_timer <= 0) {
            state = "dashing";
        }
    }
    else if (state == "dashing") {

        var dash_angle = point_direction(x, y, target_x, target_y);
        

        var next_dash_x = x + lengthdir_x(dash_speed, dash_angle);
        var next_dash_y = y + lengthdir_y(dash_speed, dash_angle);
        

        if (!place_meeting(next_dash_x, next_dash_y, obj_cantro)) {

            x = next_dash_x;
            y = next_dash_y;
        } else {

            state = "idle"; 

        }

    
        if (point_distance(x, y, target_x, target_y) <= 4) {
            state = "idle";
        }
    }
}
