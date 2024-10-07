/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player)) {
	
	var _d = instance_create_layer(x,y,"Instances",obj_dialog, {
		title: "BREACHER",
		yarn_file: "conflict.yarn",
		start_node: "ConflictStart"
	})
	
	_d.space_bar_counter = 1
	
	with (obj_player) {
		movement_locked = true;
	}
	
	instance_create_layer(x,y,"Instances",obj_pan, {
		panx: 360,
		pany: 620
	})
	
	instance_destroy()
}