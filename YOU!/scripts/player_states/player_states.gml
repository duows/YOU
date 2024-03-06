// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_states_free(){
	#region walk

	var up = keyboard_check(ord("W"));
	var down = keyboard_check(ord("S"));
	var right = keyboard_check(ord("D"));
	var left = keyboard_check(ord("A"));

	var pressed = right - left != 0 || down - up != 0;

	var move_dir = point_direction(0, 0, (right - left), (down - up));

	velh = lengthdir_x(velc * pressed, move_dir);
	velv = lengthdir_y(velc * pressed, move_dir);

	if (velh != 0 || velv != 0) {
		sprite_index = spr_player_walk;
	} else {
		sprite_index = spr_player_idle;
	}

	if (keyboard_check(vk_shift) && (can_dash)) {
		velh = 0;
		velv = 0;
		
		alarm[0] = dash_cooldown
		
		can_dash = false
		
		dash_direction = point_direction(x, y, mouse_x, mouse_y)
	
		sprite_index = spr_player_dash
		
		state = player_states_dash;
	}

		if (place_meeting(x+velh, y, obj_wall)) {
		while (!place_meeting(x+sign(velh), y, obj_wall)) {
			x+=sign(velh);
		}
		velh = 0;
	}

	x+=velh;

	if (place_meeting(x, y+velv, obj_wall)) {
		while (!place_meeting(x, y+sign(velv), obj_wall)) {
			y+=sign(velv);
		}
		velv = 0;
	}

	y+=velv;

	#endregion
}

function player_states_dash() {
	velh = lengthdir_x(dash_force, dash_direction);
	velv = lengthdir_y(dash_force, dash_direction);
	
	dash_time++
	
	if (place_meeting(x+velh, y, obj_wall)) {
		while (!place_meeting(x+sign(velh), y, obj_wall)) {
			x+=sign(velh);
		}
		dash_time = dash_distance
		velh = 0;
	}

	x+=velh;

	if (place_meeting(x, y+velv, obj_wall)) {
		while (!place_meeting(x, y+sign(velv), obj_wall)) {
			y+=sign(velv);
		}
		dash_time = dash_distance
		velv = 0;
	}

	y+=velv;
	
	if  (dash_time >= dash_distance) {
		dash_time = 0
		velh = 0
		velv = 0
		state = player_states_free
	}
}