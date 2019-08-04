/// @description Insert description here
// You can write your code in this editor
var player = noone
with(obj_player)
	player = id
if(instance_exists(player) && distance_to_object(player) < range)
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
		alarm_set(0,cooldown)
		with(instance_create_depth(x + lengthdir_x(sprite_width/2,angle),y + lengthdir_y(sprite_width/2,angle),depth-1,obj_turret_bullet))
		{
			direction = other.angle
			speed = 3
			image_xscale = .6
			image_yscale = .3
			image_angle = other.angle
		}
		audio_play_sound(snd_enemylazer,50,0);
		
	}
}
if(currentHealth <= 0 && alarm_get(1) == -1)
{
	for(var i = 0; i < 6; i++)
	{
		with(instance_create_depth(x- sprite_width/2 +irandom_range( sprite_width/4,3*sprite_width/4),y-sprite_height/4 + (sprite_height*i)/8,depth-1,obj_explosion))
			delay = irandom_range(0,60)
	}
	alarm_set(1,deathtimer)	
}