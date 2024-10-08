save_file_name = "savedata.json";

function _save_defaults() {
	return {
	    player_positions: {
			rm_main_1_x: 765,
			rm_main_1_y: 1135
		},
		takeSword: 0,
		takeRepulsor: 0,
		useSword: 0,
		useRepulsor: 0,
		rockDestroyed: 0,
		equipped: 0,
		inventory: [0],
		items: [
			{
				id: 1,
				name: "Rusty Sword"
			},
			{
				id: 2,
				name: "Lampsi"
			},
			{
				id: 3,
				name: "Repulsor"
			},
			{
				id: 4,
				name: "Deimos"
			}
		]
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
global.death_reason = 0

function _save() {
	var _struct_json = json_stringify(global.data);
	var _file = file_text_open_write(save_file_name);
	file_text_write_string(_file, _struct_json);
	file_text_close(_file);
}

function _remove_from_array(_arr, _v) {
	var _sub = []
	for (var _i = 0; _i < array_length(_arr); _i++) {
		if (_arr[_i] != _v) {
			array_push(_sub, _arr[_i])
		}
	}
	return _sub;
}

function _find_item_by_key(_arr, _k, _v) {
	for (var _i = 0; _i < array_length(_arr); _i++) {
		var _item = _arr[_i]
		var _val = struct_get(_item, _k)
		if (_val == _v) return _item
	}
}
