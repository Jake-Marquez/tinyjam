/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_released(vk_space) 
	&& (dialog == noone || !instance_exists(dialog))) {
		
	var _sn = "SilStart"
		
	if (is_conflict) {
		_sn =  "SilConflict"
		spoken_to = true
	}
	
	dialog = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "SIL",
		yarn_file: "sil.yarn",
		start_node: _sn
	})
	
	with (obj_player) {
		movement_locked = true;
	}
}