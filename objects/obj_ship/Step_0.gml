if (global.build_mode) {
	if (keyboard_check(vk_numpad0) || keyboard_check(ord("0"))) {
		block_selected = 0;
		block_selected_to_name = "none";
	}
	if (keyboard_check(vk_numpad1) || keyboard_check(ord("1"))) {
		block_selected = 1;
		block_selected_to_name = "core";
	}
	if (keyboard_check(vk_numpad2) || keyboard_check(ord("2"))) {
		block_selected = 2;
		block_selected_to_name = "generator";
	}
	if (keyboard_check(vk_numpad3) || keyboard_check(ord("3"))) {
		block_selected = 3;
		block_selected_to_name = "thruster";
	}
	if (keyboard_check(vk_numpad4) || keyboard_check(ord("4"))) {
		block_selected = 4;
		block_selected_to_name = "hull";
	}
	if (point_in_rectangle(mouse_x, mouse_y, x - ((ship_width + 1) / 2) * 32, y - ((ship_height+ 1) / 2) * 32, (x + ((ship_width + 1) / 2) * 32), y + ((ship_height + 1) / 2) * 32)) {
		mouse_in_grid = true;
		mouse_x_relative = floor(point_distance(mouse_x, (y - 16) - ((ship_height) / 2) * 32, (x - 16) - ((ship_width) / 2) * 32, (y - 16) - ((ship_height) / 2) * 32) div 32);
		mouse_y_relative = floor(point_distance((x - 16) - ((ship_width) / 2) * 32, mouse_y, (x - 16) - ((ship_width) / 2) * 32, (y - 16) - ((ship_height) / 2) * 32) div 32);
		if (mouse_x_relative > ship_width) mouse_x_relative = ship_width;
		if (mouse_y_relative > ship_height) mouse_y_relative = ship_height;
		if (mouse_check_button(mb_left)) {
			if (block_selected > 0) {
				if (!ds_list_find_value(ship_components[# mouse_x_relative, mouse_y_relative], 1)) {
					var component = instance_create_depth(x - (ship_width / 2) * 32 + (32 * mouse_x_relative), y - (ship_height/2) * 32 + (32 * mouse_y_relative), 0, obj_ship_part);
					component.part_type = string_lower(block_selected_to_name);
					component.parent = id;
					ds_list_set(ship_components[# mouse_x_relative, mouse_y_relative], 1, true)
					ds_list_set(ship_components[# mouse_x_relative, mouse_y_relative], 2, string_lower(block_selected_to_name));
					ds_list_set(ship_components[# mouse_x_relative, mouse_y_relative], 3, component.id);
				}
			}
		} else if (mouse_check_button(mb_right)) {
			if (ds_list_find_value(ship_components[# mouse_x_relative, mouse_y_relative], 1)) {
				var component = ds_list_find_value(ship_components[# mouse_x_relative, mouse_y_relative], 3);
				instance_destroy(component);
				ds_list_set(ship_components[# mouse_x_relative, mouse_y_relative], 1, false)
				ds_list_set(ship_components[# mouse_x_relative, mouse_y_relative], 2, "null");
				ds_list_set(ship_components[# mouse_x_relative, mouse_y_relative], 3, noone);
			}
		}
	}
	else mouse_in_grid = false;
}