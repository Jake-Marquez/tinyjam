shake = false;
shake_time = 0;
shake_magnitude = 0;
shake_fade = 0.25;
initx = camera_get_view_x(view_camera[0])
inity = camera_get_view_y(view_camera[0])

if (run_auto==true) {
	alarm[0]=round(random_range(600,1200))
}