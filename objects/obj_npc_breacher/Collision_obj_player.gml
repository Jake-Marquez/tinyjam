/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_released(vk_space) 
	&& (dialog == noone || !instance_exists(dialog))) {
		
	if (room == rm_main_2) {
		global.death_reason = 2
		room_goto(rm_outro)
		return
	}
	
	dialog = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "DETECTIVE BREACHER",
		yarn_file: "breacher.yarn",
		start_node: "BreacherStart"
	})
	
	with (obj_player) {
		movement_locked = true;
	}
}