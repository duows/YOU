cell_size = 64;
room_width = cell_size * 40;
room_height = room_width div 2;

cell_h = room_width div cell_size;
cell_v = room_height div cell_size;

grid = ds_grid_create(cell_h, cell_v);

ds_grid_clear(grid, 0);

north = 1;
west = 2;
east = 4;
south = 8;

var tile_layer = layer_tilemap_get_id("WallsTiles");

tilemap_set_width(tile_layer, cell_h);
tilemap_set_height(tile_layer, cell_v);

#region procedural_generation
randomize();
var dir = irandom(3);

var xx = cell_h div 2;
var yy = cell_v div 2;

var steps = 1500;

var prop = 1;

for (var i = 0; i < steps; i++) {
    
    dir = irandom(3);
    
    xx += lengthdir_x(1,dir * 90);
    yy += lengthdir_y(1,dir * 90);
    
    xx = clamp(xx, 4, cell_h - 2);
    yy = clamp(yy, 4, cell_v - 2);
    
    grid[# xx, yy] = 1;
}
#endregion
/*
#region AutoTiling

for (var _xx = 0; _xx < cell_h;_xx++) {
    for (var _yy = 0; _yy < cell_v;_yy++) {
		if (grid[# _xx, _yy] == 0) {
			var n = grid[# _xx, _yy - 1] == 0
			var w = grid[# _xx - 1, _yy] == 0
			var e = grid[# _xx + 1, _yy] == 0
			var s = grid[# _xx, _yy + 1] == 0
			
			var tile_index = n * north + w * west + e * east + s * south + 1 
			
			tilemap_set(tile_layer, tile_index, _xx, _yy)
			
		} else if (grid[# _xx, _yy] == 1) {
			tilemap_set(tile_layer, 17, _xx, _yy)
			
		}
	}
}

#endregion*/

#region draw_walls

var _enemySpawnChance = .1;
randomize();

for (var _xx = 0; _xx < cell_h;_xx++) {
    for (var _yy = 0; _yy < cell_v;_yy++) {
        if (grid[# _xx, _yy] == 0) {
            instance_create_layer(_xx * cell_size, _yy * cell_size, "Instances", obj_wall);
        } else if (grid[# _xx, _yy] == 1) {
            var x1 = (_xx * cell_size) + (cell_size / 2);
            var y1 = (_yy * cell_size) + (cell_size / 2);
            
            if (random(1)  <= _enemySpawnChance) {
                instance_create_layer(x1, y1, "Instances", obj_enemy);
            }
            
            if (!instance_exists(obj_player)) {
                instance_create_layer(x1, y1, "Instances", obj_player);
            }
        }
    }

}

#endregion