/// @description Insert description here
// You can write your code in this editor
with(instance_create_depth(x,y,depth,obj_explosion))
{
	image_xscale = other.image_xscale*2	
	image_yscale = other.image_yscale*2
	speed = other.speed
	direction = other.direction
	image_angle = other.image_angle
}
audio_play_sound(snd_lazerdies,180,0);