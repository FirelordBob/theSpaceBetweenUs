/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
currentHealth -= other.damage
if(other.freeze)
	{
		if(speed != 0)
		{
			lastSpeed = speed
			speed = 0
			
		}
		alarm_set(4,20 + alarm_get(4))
		image_blend = c_blue
	}