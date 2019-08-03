/// @description Set cool stuff here

currentX = x
currentY = y


spinspeed = random_range(-1,1);
if abs(spinspeed) < 0.1 {
	spinspeed = spinspeed * 2;
}
angle = 0;

speedMax = 0.2

hspeed = random_range(-speedMax,speedMax);
vspeed = random_range(-speedMax,speedMax);
deathtimer = 60
maxHealth = 1
currentHealth = maxHealth
dying = 0;

explosionType = obj_explosion_severe

myparticlesystem = noone;
particle1 = part_type_create();
part_type_sprite(particle1, spr_asteroid, 0, 0, 1);
part_type_colour1(particle1, c_silver);
part_type_size(particle1, 0.5, 0.5, -0.01, 0.01);
part_type_scale(particle1, 1, 1);
part_type_speed(particle1, 1, 2, 0, 0);
part_type_direction(particle1, 0, 359, 0, 20);
part_type_life(particle1, room_speed*2,room_speed*3);

radius = sprite_width*2;
width = 3;