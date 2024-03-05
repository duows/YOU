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

#endregion

#region collision

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

