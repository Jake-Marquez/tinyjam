if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   var _x = camera_get_view_x(view_camera[0])
   var _y = camera_get_view_y(view_camera[0])
   camera_set_view_pos(view_camera[0], _x + _xval, _y + _yval); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0], initx, inity); 
         shake = false; 
      } 
   } 
}