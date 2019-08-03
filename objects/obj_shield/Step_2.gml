/// @description Insert description here
// You can write your code in this editor
if(owner != noone)
{
	
	x = owner.x
	y = owner.y
	
}
if(!charging && distance_to_object(obj_damageable) <= radius+width && distance_to_object(obj_damageable) >= radius)
{
	var target = instance_nearest(x,y,obj_damageable)
	if(target.object_index == obj_turret_bullet)
		instance_destroy(target)
	else
		with(owner)
		{
			motion_add(point_direction(target.x,target.y,x,y),2)	
		}
	charging = 1
	alarm_set(0, recharge)
}