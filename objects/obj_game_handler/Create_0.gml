var _room = room_get_name(room);
switch (_room) {
	case "rm_init":
		room_goto_next();
	break;
	case "rm_builder":
		global.build_mode = true;
		global.show_grid = true;
		ship = instance_create_depth(room_width / 2, room_height / 2, 0, obj_ship);
	break;
}