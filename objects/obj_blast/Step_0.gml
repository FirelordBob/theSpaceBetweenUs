//While I'm attached to a gun, I must stick to its tip.
if myGun != noone {
	x = myGun.x + cos(myGun.facing*pi/180)*15
	y = myGun.y - sin(myGun.facing*pi/180)*15
} else {
	//If I leave the stage after being fired, I should disappear
	if x < 0 || y < 0 || x > room_width || y > room_height{
		instance_destroy();
	}
	
}
