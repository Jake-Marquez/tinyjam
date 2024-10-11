if (async_load[? "id"] == "dialogue_closed") {
	if (room == rm_main_2 && spoken_to == true) {
			switch (global.data.equipped) {
				case 2:
					global.death_reason = 4;
					break;
				case 4:
					global.death_reason = 5;
					break;
				default:
					global.death_reason = 3;
					break;
			}
			room_goto(rm_outro)
			return
	}
}