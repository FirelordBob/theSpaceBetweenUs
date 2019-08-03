/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
currentHealth -= other.damage
if(currentHealth <= 0)
{
	for(var i = 0; i < 6; i++)
	{
		with(instance_create_depth(x- sprite_width/2 +irandom_range( sprite_width/4,3*sprite_width/4),y-sprite_height/4 + (sprite_height*i)/8,depth-1,obj_explosion))
			delay = irandom_range(0,60)
	}
	alarm_set(1,deathtimer)	
}