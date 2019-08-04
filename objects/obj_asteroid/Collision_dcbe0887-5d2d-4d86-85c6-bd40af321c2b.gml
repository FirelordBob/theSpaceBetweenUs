/// @description Insert description here
// You can write your code in this editor
if dying == 0 {
	instance_destroy(other)
	currentHealth -= other.damage
	if(other.freeze)
	{
		if(speed != 0)
		{
			lastSpeed = speed
			speed = 0
			
		}
		alarm_set(2,40 + alarm_get(2))
		image_blend = c_blue
	}
}