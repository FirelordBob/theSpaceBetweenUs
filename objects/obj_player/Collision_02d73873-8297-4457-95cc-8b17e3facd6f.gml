/// @description Bounce if you dont have a close friend
if abs(x - other.x) > 31 {
	hspeed = -hspeed * other.bounceMultiplier;
}

if abs(y - other.y) > 31 {
	vspeed = -vspeed * other.bounceMultiplier;
}