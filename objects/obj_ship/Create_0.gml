if (global.build_mode) {
	ship_width = 5;
	ship_height = 5;
	block_selected = 0;
	block_selected_to_name = "none";
	cell_size = 32;
	ship_components = ds_grid_create(ship_width + 1, ship_height + 1);
	mouse_in_grid = false;
	mouse_x_relative = 0;
	mouse_y_relative = 0;
	for (var i = 0; i < ship_width + 1; i++) {
		for (var j = 0; j < ship_height + 1; j++) {
			ship_components[# i, j] = ds_list_create();
			ds_list_set(ship_components[# i, j], 1, false);
			ds_list_set(ship_components[# i, j], 2, "null");
			ds_list_set(ship_components[# i, j], 3, noone);
		}
	}
	core = instance_create_depth(x - (ship_width / 2) * cell_size + (cell_size * floor(ship_width / 2)), y - (ship_height/2) * cell_size + (cell_size * floor(ship_height/2)), 0, obj_ship_part);
	core.part_type = "core";
	core.parent = id;
	ds_list_set(ship_components[# ship_width / 2, ship_height / 2], 1, true);
	ds_list_set(ship_components[# ship_width / 2, ship_height / 2], 2, "core");
	ds_list_set(ship_components[# ship_width / 2, ship_height / 2], 3, core.id);
} else {
	
}