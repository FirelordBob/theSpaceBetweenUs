/// @description Insert description here
// You can write your code in this editor
if(room != roomPause)
	window_mouse_set(clamp(window_mouse_get_x(),20,window_get_width()-20),clamp(window_mouse_get_y(),20,window_get_height()-20))
else
{
	with(obj_player)
	{
		speed = 0
		image_alpha = 0	
	}
	with(obj_gun)
	{
		speed = 0
		image_alpha = 0	
	}
	with(obj_blast)
		instance_destroy()
	with(obj_explosion)
		instance_destroy()
			
}
	

if(device_mouse_x_to_gui(0) > display_get_gui_width()-60 && device_mouse_x_to_gui(0) < display_get_gui_width() && device_mouse_y_to_gui(0) > 20 && device_mouse_y_to_gui(0) < 60 && mouse_check_button_released(mb_left))
{
	alarm_set(2,1)
		
}
