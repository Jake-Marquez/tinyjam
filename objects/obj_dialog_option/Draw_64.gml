/// @description Insert description here
// You can write your code in this editor
if (active == true) {
	sprite_index = spr_dialog_option_active
} else {
	sprite_index = spr_dialog_option
}
draw_self()
draw_text_ext(x+10, y+5, text, 24, 340);