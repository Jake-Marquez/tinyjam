obj_player.movement_locked = true;

var _n = room_get_name(room)
struct_set(global.data.player_positions, _n + "_x", obj_player.x)
struct_set(global.data.player_positions, _n + "_y", obj_player.y)
obj_save_state._save()

if (fader == noone) {
	fader = instance_create_layer(0,0,"Instances", obj_fader, { rm: rm })
}