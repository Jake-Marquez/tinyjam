if (global.data.rockDestroyed == 1) {
	instance_destroy()
} else {
	dialog = noone
	collision = instance_create_layer(x, y, "Instances", obj_wall)
}