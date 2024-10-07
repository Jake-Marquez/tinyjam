/// @description Insert description here
// You can write your code in this editor
if (global.data.takeRepulsor == 1
	&& place_meeting(x, y, obj_player)
) {
	with (obj_screenshake)
	{
		shake = true;
		shake_time = 30;
		shake_magnitude = 5;
		shake_fade = 0.2;
	}
	
	var _d = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "INFO",
		yarn_file: "cavein.yarn",
		start_node: "CaveInStart"
	})
	
	_d.space_bar_counter = 1
	
	with (obj_player) {
		movement_locked = true;
	}
	
	instance_destroy()
}