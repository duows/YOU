if (index == 0) {
	index = 2
} else {
	index--
}


if (variable_global_exists("all_enemies")) {
	for (var i = 0; i < ds_list_size(global.all_enemies); i++) {
		global.all_enemies[| i].visible = true
	}
}