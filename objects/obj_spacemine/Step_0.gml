/// @description

//Spin a bit

angle += spinspeed;
bounce(obj_forcefield);
bounce(obj_ground);

if(currentHealth <= 0 && alarm_get(1) = -1)
{
	for(var i = 0; i < 15; i++)
	{
		with(instance_create_depth(x-irandom_range( -sprite_width*2.5,sprite_width*2.5),y-irandom_range(-sprite_height*3,sprite_height*3),depth-1,explosionType))
		{
			delay = irandom_range(0,20)
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

with obj_player {
	if distance_to_point(other.x,other.y) < other.radius {
		other.currentHealth = 0;
	}
}