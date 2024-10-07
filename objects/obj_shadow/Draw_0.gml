var _dist = distance_to_object(obj_player)
var _p = _dist / 100
var _pr = min(_p, max_darkness)
if (extra_dark && global.data.useSword == 0) {
	_pr += 0.8
}

if (r > tr) {
	r -= 0.01
}
if (r < tr) {
	r += 0.01
}

image_alpha=_pr

if (_pr != max_darkness) {
	image_alpha+=r
}

draw_self()