state = "awake";

path = path_add();
vel = 2.0;

color = "red"
visible = false
switch (color) {
	case "red":
		sprite_index = spr_red_enemy_one
		break;
	case "blue":
		sprite_index = spr_blue_enemy_one_walk
		break;
	case "white":
		sprite_index = spr_white_enemy
		break;
}