/// @description Set cool stuff here

spinspeed = random_range(-3,3);
if abs(spinspeed) < 0.2 {
	spinspeed = spinspeed * 2;
}

hspeed = random_range(-0.3,0.3);
vspeed = random_range(-0.3,0.3);
