/// @description Insert description here
// You can write your code in this editor
if (is_fade_in == true) {
	image_alpha += 0.01
	if (image_alpha == 1) {
		is_fade_in = false
		room_goto(rm)
	}
} else {
	
	image_alpha -= 0.01
	if (image_alpha == 0) {
		instance_destroy()
	}
}