if (global.data.takeRepulsor && collision == noone) {
	collision = instance_create_layer(
		x, y, "Instances", obj_wall
	)
	collision.image_xscale = 3
}

if (global.data.takeRepulsor) {
	image_alpha = 1
} else {
	image_alpha = 0
}