if (keyboard_check_released(vk_space)) {
	
	if (global.data.takeRepulsor==1) {
		global.data.rockDestroyed = 1
		obj_save_state._save()
		instance_destroy(collision)
		instance_destroy()
	} else {
		if (dialog == noone ||  !instance_exists(dialog)) {
			dialog = instance_create_layer(x,y,"Instances",obj_dialog, {
				title: "INFO",
				yarn_file: "rock.yarn",
				start_node: "RockStart"
			})
	
			with (obj_player) {
				movement_locked = true;
			}
		}
	}
	
}