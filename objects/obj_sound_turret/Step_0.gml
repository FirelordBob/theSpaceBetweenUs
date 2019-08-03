/// @description Insert description here
// You can write your code in this editor
var player
with(obj_player)
	player = id
if(distance_to_object(player) < range && !firing)
{
	
	angle = point_direction(x,y,player.x,player.y)
	var dist = point_direction(x,y,player.x,player.y)
	var vision = 1
	for(var i = 0; i < dist; i+=8)
	{	
		if(position_meeting(x + lengthdir_x(i,angle),y + lengthdir_y(i,angle),obj_ground))
			vision = 0
	}
	if(ready && vision)
	{
		ready = 0
		firing = 1
		alarm_set(2,fireTime)
		with(instance_create_depth(x + lengthdir_x(sprite_width/4,angle),y + lengthdir_y(sprite_width/4,angle),depth-1,obj_sound_wave))
		{
			direction = other.angle
			speed = 2
			image_xscale = .6
			image_yscale = .3
			image_angle = other.angle
		}
		
	}
}