/// @description Insert description here
// You can write your code in this editor
var spd = 0
with(obj_gui)
{
	room_goto(lastRoom)
	alarm_set(1,3)
	spd = lastSpeed
}

with(obj_player)
{
	speed = spd	
	image_alpha = 1
}
	
	
with(obj_gun)
{
	image_alpha = 1
}


instance_activate_object(obj_dialogue)