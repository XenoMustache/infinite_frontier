if (global.show_grid)
	draw_grid(x, y, 32, ship_width + 1, ship_height + 1, c_gray, true);
draw_set_color(c_white);
draw_arrow(x + ((32) * (ship_width/2) + 64), y + ((16) * 4), x + (32 * (ship_width/2) + 64), y - (16 * 4), 10);
if (mouse_in_grid && block_selected > 0) {
	draw_set_alpha(0.5);
	draw_sprite(spr_test, block_selected - 1, x - (ship_width / 2) * 32 + (32 * mouse_x_relative), y - (ship_height/2) * 32 + (32 * mouse_y_relative));
	draw_set_alpha(1);
}