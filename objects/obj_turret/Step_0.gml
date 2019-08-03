/// @description Insert description here
// You can write your code in this editor
var player
with(obj_player)
	player = id
if(distance_to_object(player) < range)
{
	
	angle = point_direction(x,y,player.x,player.y)	
	if(ready)
	{
		ready = 0
		alarm_set(0,cooldown)
		with(instance_create_depth(x + lengthdir_x(sprite_width/2,angle),x + lengthdir_x(sprite_width/2,angle),depth-1,obj_turret_bullet))
		{
			direction = other.angle
			speed = 3
			
		}
		
	}
}