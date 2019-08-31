parent = noone;
switch (registry_type) {
	case 0:
		global.build_mode = true;
		global.show_grid = true;
		ship = instance_create_depth(room_width/2, room_height/2, 0, obj_ship);
	break;
}