/// @arg0 x
/// @arg1 y
/// @arg2 cell_size
/// @arg3 width
/// @arg4 height
/// @arg5 color
/// @arg6 falloff
var xx = argument0;
var yy = argument1;
var cell_size = argument2;
var width = argument3;
var height = argument4;
var color = argument5;
var falloff = argument6;
draw_set_color(color);
if (!falloff)
	draw_rectangle(xx - ((width / 2) * cell_size), (yy - (height / 2) * cell_size), (xx + (width / 2) * cell_size), (yy + (height / 2) * cell_size), true);
for (var i = 1; i < height; i++) {
	draw_line(xx - ((width / 2) * cell_size), (yy - (height / 2) * cell_size) + i * cell_size, (xx + (width / 2) * cell_size), (yy - (height / 2) * cell_size) + i * cell_size);
}
for (var j = 1; j < width; j++) {
	draw_line(xx - ((width / 2) * cell_size) + j * cell_size, yy - ((height / 2) * cell_size), xx - ((width / 2) * cell_size) + j * cell_size, yy + (height / 2) * cell_size);
}