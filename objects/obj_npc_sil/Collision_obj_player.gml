/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space) 
	&& (dialog == noone || !instance_exists(dialog))) {
	
	dialog = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "STEVE"
	})
	
	with (obj_player) {
		movement_locked = true;
	}
}