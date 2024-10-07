var _x = camera_get_view_x(view_camera[0])
var _y = camera_get_view_y(view_camera[0])
var _dist = point_distance(_x, _y, panx, pany)
if (_dist > 3) {
	var _xdiff = panx > _x  ? 1 : -1;
	var _ydiff = pany > _y ? 1 : -1;
	camera_set_view_pos(view_camera[0], _x + _xdiff, _y + _ydiff); 
} else {
	instance_destroy()
}
