x = 310
y = 700

options = []
locked = false
space_bar_counter = 0

if (struct_exists(global, "dialog_close_timeout")) {
	if ((current_time - global.dialog_close_timeout) < 1000) {
		var _map = ds_map_create();
		_map[? "id"] = "dialogue_closed";
		_map[? "result"] = true;
		event_perform_async(ev_async_system_event, _map);
		instance_destroy();
		return;
	}
}

function _get_equipped() { return global.data.equipped }

ChatterboxLoadFromFile(yarn_file);
box = ChatterboxCreate(yarn_file);
ChatterboxJump(box, start_node);
ChatterboxAddFunction("equipped", _get_equipped);

function _update_variable(_name, _new_value, _old_value) {
	struct_set(global.data, _name, _new_value)
	
	if (_name == "takeSword") {
		array_push(global.data.inventory, 1)
	}
	
	if (_name == "takeRepulsor") {
		array_push(global.data.inventory, 3)
		var _map = ds_map_create();
		_map[? "id"] = "inventory_updated";
		_map[? "result"] = true;
		event_perform_async(ev_async_system_event, _map);
	}
	
	if (_name == "useRepulsor") {
		array_push(global.data.inventory, 4)
		var _map = ds_map_create();
		_map[? "id"] = "inventory_updated";
		_map[? "result"] = true;
		event_perform_async(ev_async_system_event, _map);
	}
	
	if (_name == "removeSword") {
		global.data.inventory = obj_save_state._remove_from_array(global.data.inventory, 1)
		array_push(global.data.inventory, 2)
		var _map = ds_map_create();
		_map[? "id"] = "inventory_updated";
		_map[? "result"] = true;
		event_perform_async(ev_async_system_event, _map);
	}
	
	obj_save_state._save()
}
ChatterboxVariableSetCallback(_update_variable)

function _increment_active_options(_inc) {
	if (array_length(options)==0) {
		return
	}
	
	var _a = 0
	for (var _i = 0; _i < array_length(options); _i++) {
		if (options[_i].active == true) {
			_a = _i
			options[_i].active = false
		}
	}
	
	if (_inc==true) { _a += 1 }
	else { _a -= 1 }
	
	if (_a >= array_length(options)) { _a = 0 }
	else if (_a <= 0) { _a = (array_length(options) - 1) }
	
	options[_a].active = true;
}

function _draw_text() {
	
	var _title = title;
	
	var _x = 10;
	var _y = 36;
	
    var _i = 0;
    repeat(ChatterboxGetContentCount(box))
    {
        var _string = ChatterboxGetContent(box, _i);
		//show_debug_message(_string)
        draw_text_ext(x + _x, y + 36, _string, 24, 600);
        _y += string_height(_string);
		var _metadata_title = ChatterboxGetContentMetadata(box, _i);
		
		if (array_length(_metadata_title) > 0) {
			_title = _metadata_title[0]
		}
		
        ++_i;
    }
	
	draw_text(x + 10, y + 10, _title)
}

function _select_option() {
	
	if (array_length(options)==0) {
		return
	}
	
	var _a = 0
	for (var _i = 0; _i < array_length(options); _i++) {
		if (options[_i].active == true) {
			_a = _i
		}
	}
	
	for (var _c = 0; _c < array_length(options); _c++) {
		instance_destroy(options[_c])
	}
	options = []
	ChatterboxSelect(box, _a);
	
	locked = true;
	alarm[0]=30
}

function _draw_options() {
	
	if (array_length(options) == 0) {
		var _count = ChatterboxGetOptionCount(box);
		for (var _c = 0; _c < _count; _c++) {
			var _string = ChatterboxGetOption(box, _c);
			array_push(options, instance_create_layer(590, 560-(36*_c), "Instances", obj_dialog_option, { 
				text: _string,
				param: _c,
				host: id,
				active: _c == 0 ? true : false
			}))
		}
	}

}


