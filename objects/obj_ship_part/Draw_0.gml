/// @draw part
switch(part_type) {
	case "core":
		image_index = 0;
	break;
	case "generator":
		image_index = 1;
	break;
	case "thruster":
		image_index = 2;
	break;
	case "hull":
		image_index = 3;
}
image_speed = 0;
draw_self();
