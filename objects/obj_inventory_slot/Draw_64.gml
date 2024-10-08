/// @description Insert description here
// You can write your code in this editor
sprite_index = active ? spr_slot_active : spr_slot;

var _sprite_id = spr_slot_empty
switch (inventory_id) {
	case 0:
		_sprite_id = spr_slot_empty
		break;
	case 1:
		_sprite_id = spr_slot_sword
		break;
	case 2:
		_sprite_id = spr_slot_lampsi
		break;
	case 3:
		_sprite_id = spr_slot_repulsor
		break;
	case 4:
		_sprite_id = spr_slot_deimos
		break;
}

if (active == true) {
	var _n = "Hand";
	if (inventory_id != 0) {
		var _item = obj_save_state._find_item_by_key(global.data.items, "id", inventory_id)
		_n = _item.name
	}
	draw_text_ext(x, y + 70, _n, 24, 64)
}

draw_sprite(_sprite_id, 0, x, y);

draw_self()