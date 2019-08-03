/// @description Set cool stuff here

currentX = x
currentY = y


spinspeed = random_range(-3,3);
if abs(spinspeed) < 0.2 {
	spinspeed = spinspeed * 2;
}
angle = 0;

speedMax = 1

hspeed = random_range(-speedMax,speedMax);
vspeed = random_range(-speedMax,speedMax);
