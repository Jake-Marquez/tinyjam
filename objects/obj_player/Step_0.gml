/// @description Insert description here
// You can write your code in this editor
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _hspd = _right - _left;
var _vspd = _down - _up;
depth = -y

if (movement_locked == true) {
	return;
}

if (_hspd != 0 || _vspd != 0)
{
    var _spd = 3;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
	move_and_collide(_xadd, _yadd, obj_wall)
    //x = x + _xadd;
    //y = y + _yadd;
	if (_right && !_left) {
		sprite_index = spr_player_walk_h
		image_xscale = -1
		was_up=false
	} else if (_left && !_right) {
		sprite_index = spr_player_walk_h
		image_xscale = 1
		was_up=false
	} else if (_up && !_left && !_right && !_down) {
		sprite_index = spr_player_walk_u
		was_up=true
	} else if (_down && !_left && !_right && !_up) {
		sprite_index = spr_player_walk_d
		was_up=false
	}
	image_speed = 1
} else {
	if (was_up) {
		sprite_index = spr_player_walk_u
		image_speed = 0
		image_index = 0
	} else {
		sprite_index = spr_player_idle
	}
}