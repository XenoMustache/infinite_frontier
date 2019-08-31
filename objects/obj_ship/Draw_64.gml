draw_set_color(c_white);
draw_text(5, 5, "Block Selected: " + string(block_selected_to_name) 
	+ "\nGrid X: " + string(mouse_x_relative) + "\nGrid Y: " + string(mouse_y_relative));
//if (block_selected > 0) draw_sprite(spr_test, block_selected - 1, 20, 44);