save_file_name = "savedata.json";

function _save_defaults() {
	return {
	    player_positions: {
			rm_main_1_x: 700,
			rm_main_1_y: 545,
		}
	}
}

if (!file_exists(save_file_name)) {
	var _struct_json = json_stringify(_save_defaults());
	var _file = file_text_open_write(save_file_name);
	file_text_write_string(_file, _struct_json);
	file_text_close(_file);
}

var _save_file = file_text_open_read(save_file_name)
var _save_file_text = file_text_read_string(_save_file)
global.data = json_parse(_save_file_text);

function _save() {
	var _struct_json = json_stringify(global.data);
	var _file = file_text_open_write(save_file_name);
	file_text_write_string(_file, _struct_json);
	file_text_close(_file);
}