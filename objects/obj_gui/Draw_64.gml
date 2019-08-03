if instance_exists(myPlayer) {
	draw_text(view_xport[0]+100,view_yport[0]+20,"Health: " + string(myPlayer.currentHealth))
}
draw_rectangle(display_get_gui_width()-40,20,display_get_gui_width()-20,40,0)
if(device_mouse_x_to_gui(0) > display_get_gui_width()-40 && device_mouse_x_to_gui(0) < display_get_gui_width()-20 && device_mouse_y_to_gui(0) > 20 && device_mouse_y_to_gui(0) < 40 && mouse_check_button_released(mb_left))
{
	if(room != roomPause)
	{
		lastRoom = room
		room_goto(roomPause)
	}
	else
		room_goto(lastRoom)
}