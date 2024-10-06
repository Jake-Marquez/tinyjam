x = 310
y = 700

ChatterboxLoadFromFile("sample.yarn");
box = ChatterboxCreate();
ChatterboxJump(box, "Start");

_x = 10;
_y = 36;

options = []

locked = false

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
	//Draw all content
	draw_text(x + 10, y + 10, title)
    var _i = 0;
    repeat(ChatterboxGetContentCount(box))
    {
        var _string = ChatterboxGetContent(box, _i);
		show_debug_message(_string)
        draw_text_ext(x + _x, y + 36, _string, 24, 600);
        _y += string_height(_string);
        ++_i;
    }
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
			array_push(options, instance_create_layer(710, 560-(36*_c), "Instances", obj_dialog_option, { 
				text: _string,
				param: _c,
				host: id,
				active: _c == 0 ? true : false
			}))
		}
	}

}


