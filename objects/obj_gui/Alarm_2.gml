/// @description Insert description here
// You can write your code in this editor
if(room != roomPause)
	{
		lastRoom = room
		alarm_set(1,2);
		room_persistent = true
		room_goto(roomPause)
		instance_deactivate_object(obj_dialogue)
		audio_pause_all()
		with(obj_player)
		{
			other.lastSpeed = speed
			speed = 0
		}
	}
	else
	{
		with(obj_player)
		{
			speed = other.lastSpeed		
			image_alpha = 1
		}
	
	
		with(obj_gun)
		{
			image_alpha = 1
		}
		room_goto(lastRoom)
		alarm_set(1,3)
		audio_resume_all()
	
	}