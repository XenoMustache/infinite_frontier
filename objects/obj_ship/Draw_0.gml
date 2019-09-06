if (global.build_mode) {
	if (global.show_grid)
		draw_grid(x, y, cell_size, ship_width + 1, ship_height + 1, c_gray, true);
	draw_set_color(c_white);
	draw_arrow(x + ((cell_size) * (ship_width/2) + 64), y + ((16) * 4), x + (cell_size * (ship_width/2) + 64), y - (16 * 4), 10);
	if (mouse_in_grid && block_selected > 0) {
		draw_set_alpha(0.5);
		draw_sprite(spr_test, block_selected - 1, x - (ship_width / 2) * cell_size + (cell_size * mouse_x_relative), y - (ship_height/2) * cell_size + (cell_size * mouse_y_relative));
		draw_set_alpha(1);
	}
}