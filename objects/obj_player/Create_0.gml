/// @description Insert description here
// You can write your code in this editor
was_up = false
movement_locked = false

var _n = room_get_name(room)

if (room != rm_maze_1) {
	if (struct_exists(global.data.player_positions,  _n + "_x")) {
		x = struct_get(global.data.player_positions,  _n + "_x")
	}
	if (struct_exists(global.data.player_positions,  _n + "_y")) {
		y = struct_get(global.data.player_positions,  _n + "_y") + 14
	}
}
