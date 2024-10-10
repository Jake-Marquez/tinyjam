/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_released(vk_space) 
	&& (dialog == noone || !instance_exists(dialog))) {
		
	var _sn = "AlfusStart"
		
	if (is_conflict) {
		_sn =  "AlfusConflict"
		spoken_to = true
	}
	
	dialog = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "ALFUS",
		yarn_file: "alfus.yarn",
		start_node: _sn
	})
	
	with (obj_player) {
		movement_locked = true;
	}
}