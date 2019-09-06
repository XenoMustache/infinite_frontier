/// @arg0 ship_name
/// @arg1 raw_name
var ship_name = argument0;
var raw_name = argument1;
if (file_exists(string(ship_name) + ".spb")) file_delete(string(ship_name) + ".spb");
file_text_open_write(string(ship_name) + ".sbp");
file_text_write_string(string(ship_name) + ".sbp", "[name = " + "\"" + string(raw_name) + "\"]");
for (var i = 0; i < ship_width + 1; i++) {
	for (var j = 0; j < ship_height + 1; j++) {
		
	}
}