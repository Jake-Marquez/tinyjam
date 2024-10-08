if (keyboard_check(ord("1"))) {
	_deactivate_all()
	if (array_length(slots) > 0) { _select(0) }
} else if (keyboard_check(ord("2"))) {
	_deactivate_all()
	if (array_length(slots) > 1) { _select(1) }
} else if (keyboard_check(ord("3"))) {
	_deactivate_all()
	if (array_length(slots) > 2) { _select(2) }
} else if (keyboard_check(ord("4"))) {
	_deactivate_all()
	if (array_length(slots) > 3) { _select(3) }
} else if (keyboard_check(ord("5"))) {
	_deactivate_all()
	if (array_length(slots) > 4) { _select(4) }
}

