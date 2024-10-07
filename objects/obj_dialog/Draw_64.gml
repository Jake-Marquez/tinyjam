/// @description Insert description here
// You can write your code in this editor

if (y > 600) {
	y-=6
}

draw_self()

_x = 10;
_y = 10;

if (ChatterboxIsStopped(box)) {
	//draw_text(_x, _y, "(Chatterbox stopped)");
	var _map = ds_map_create();
	_map[? "id"] = "dialogue_closed";
	_map[? "result"] = true;
	event_perform_async(ev_async_system_event, _map);

	instance_destroy()
	
} else if (ChatterboxIsWaiting(box)) {
	//Draw all content
	_draw_text()
	
	if (ChatterboxGetOptionCount(box) > 0) {
		_draw_options()
	} else {
		//draw_text(_x, _y, "(Press Space)");
		if (array_length(options) == 0) {
			if (keyboard_check_released(vk_space) && locked == false && space_bar_counter > 0) {
				ChatterboxContinue(box);
			}
			if (keyboard_check_released(vk_space)) {
				space_bar_counter += 1
			}
		}
	}
	
} else {
    //Draw all content
	_draw_text()
	//Draw all options
	_draw_options()
}
