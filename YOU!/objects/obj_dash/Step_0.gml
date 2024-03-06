image_alpha -= 0.3

if (obj_player.x_position >= 0) {
	image_xscale = -1
} else {
	image_xscale = 1
}

if (image_alpha <= 0) {
	instance_destroy()
}