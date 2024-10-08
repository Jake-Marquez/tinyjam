if (keyboard_check_released(vk_space) 
	&& (dialog == noone || !instance_exists(dialog))) {
		
	var _start_node = "TransporterStart"
	if (global.data.useRepulsor == 1) {
		_start_node = "TransporterFullyOpen"
	} else if (global.data.equipped == 3) {
		_start_node = "TransporterTakeRepulsor"
	} else if (global.data.useSword == 1) {
		_start_node = "TransporterPartiallyOpen"
	} else if (global.data.equipped == 1) {
		_start_node = "TransporterTakeSword"
	}

	dialog = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "TRANSPORTER",
		yarn_file: "transporter.yarn",
		start_node: _start_node
	})

	with (obj_player) {
		movement_locked = true;
	}
}