slots = []

function _build_slots() {
	var _x = 10;
	var _y = 10;

	for (var _z = 0; _z < array_length(slots); _z++) {
		instance_destroy(slots[_z])
	}
	slots = [];
	for (var _i = 0; _i < array_length(global.data.inventory); _i++) {

		array_push(
			slots, 
			instance_create_layer(_x + (74 * _i), _y, "Instances", obj_inventory_slot, {
				inventory_id: global.data.inventory[_i]
			})
		)
	
		if (global.data.equipped == global.data.inventory[_i]) {
			slots[_i].active = true
		}

	}
}

function _deactivate_all() {
	for (var _i = 0; _i < array_length(slots); _i++) {
		slots[_i].active = false
	}
}

function _select(_a) {
	slots[_a].active = true;
	global.data.equipped = slots[_a].inventory_id
	obj_save_state._save()
}

_build_slots()