if (array_length(options) > 0) {
	for (var _c = 0; _c < array_length(options); _c++) {
		instance_destroy(options[_c])
	}
}

global.dialog_close_timeout = current_time