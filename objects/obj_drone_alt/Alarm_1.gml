/// @description Insert description here
// You can write your code in this editor

var player  = noone
with(obj_player)
	player = id
if(instance_exists(player) && distance_to_object(player) < range && !firing)
{
	
	angle = point_direction(x,y,player.x,player.y)
	var dist = point_distance(x,y,player.x,player.y)
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
		alarm_set(3,fireTime)

		with(instance_create_depth(x + lengthdir_x(sprite_width/2,angle),y + lengthdir_y(sprite_width/2,angle),depth-1,obj_turret_bullet))
		{
			direction = other.angle - 15
			speed = 5
			image_xscale = .8
			image_yscale = .5
			image_angle = other.angle - 15
		}
		with(instance_create_depth(x + lengthdir_x(sprite_width/2,angle),y + lengthdir_y(sprite_width/2,angle),depth-1,obj_turret_bullet))
		{
			direction = other.angle + 15
			speed = 5
			image_xscale = .8
			image_yscale = .5
			image_angle = other.angle + 15
		}
		audio_play_sound(snd_enemylazersuper,51,0);

		
	}
	else 
		alarm_set(1,1)
}
else 
	alarm_set(1,1)