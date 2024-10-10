if (async_load[? "id"] == "dialogue_closed") {
	if (room == rm_main_2 && spoken_to == true) {
			global.death_reason = 2
			room_goto(rm_outro)
			return
	}
}