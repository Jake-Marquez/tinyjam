/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_released(vk_space) 
	&& (dialog == noone || !instance_exists(dialog))) {
		
	var _sn = "FilmontStart"
		
	if (is_conflict) {
		_sn =  "FilmontConflict"
		spoken_to = true
	}
	
	dialog = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "FILMONT",
		yarn_file: "filmont.yarn",
		start_node: _sn
	})
	
	with (obj_player) {
		movement_locked = true;
	}
}
