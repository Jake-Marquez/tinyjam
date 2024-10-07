if (keyboard_check_released(vk_space) 
	&& (dialog == noone || !instance_exists(dialog))) {
		
	var _node = "StatueStart"
	if (global.data.takeSword == 1) {
		_node = "StatueTakeSword"
	}

	dialog = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "INFO",
		yarn_file: "statue.yarn",
		start_node: _node
	})

	with (obj_player) {
		movement_locked = true;
	}
}