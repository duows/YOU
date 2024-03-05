if (instance_exists(target)) {
	x = lerp(x, target.x - cam_width / 2, cam_velc);
	y = lerp(y, target.y - cam_height / 2, cam_velc);
	
	x = clamp(x, 0, (room_width - cam_width));
	y = clamp(y, 0, (room_height - cam_height));
	
	camera_set_view_pos(view_camera[0], x, y);
} else {
	target = -1;
}



