/// @description

//Spin a bit

angle += spinspeed;
bounce(obj_forcefield);
bounce(obj_ground);

if(currentHealth <= 0 && alarm_get(1) = -1)
{
	for(var i = 0; i < 6; i++)
	{
		with(instance_create_depth(x- sprite_width/2 +irandom_range( sprite_width/4,3*sprite_width/4),y-sprite_height/4 + (sprite_height*i)/8,depth-1,obj_explosion))
		{
			delay = irandom_range(0,60)
			speed = other.speed
			direction = other.direction
		}
	}
	alarm_set(1,deathtimer)	
	
	dying = 1;
	
	if myparticlesystem == noone {
		myparticlesystem = part_system_create();
		part_system_depth(myparticlesystem, -2 );
		part_particles_create(myparticlesystem, x, y, particle1, 5);
	}
}