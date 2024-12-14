if fullscreen_enabled == true {
            window_set_fullscreen(false);
			fullscreen_enabled = false;
			sprite_index = spr_kocheck;
        } else {
            window_set_fullscreen(true);  
			fullscreen_enabled = true;
			sprite_index = spr_check;
        }