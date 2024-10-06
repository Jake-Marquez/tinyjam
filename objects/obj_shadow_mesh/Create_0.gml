var _w = round(room_width / 32)
var _h = round(room_height / 32)

for (var _a = 0; _a <= _w; _a++) {
	for (var _b = 0; _b <= _h; _b++) {
		instance_create_layer(_a * 32, _b * 32, "Instances", obj_shadow, { 
			max_darkness: max_darkness,
			extra_dark: extra_dark
		})
		var _r = instance_create_layer(_a * 32, _b * 32, "Instances", obj_shadow_2, {
			max_darkness: max_darkness,
			extra_dark: extra_dark
		})
		_r.image_xscale = -1
		_r.image_yscale = -1
	}
}