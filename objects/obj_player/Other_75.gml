if (async_load[? "id"] == "dialogue_closed") {
	movement_locked = false;
	if (room == rm_maze_1) {
		instance_create_layer(0,0,"Instances", obj_fader, { rm: rm_main_1 })
	}
}