if currentHealth = 0 {
	game_end()
}

//Horizontal bounce
if(place_meeting(x + hspeed, y, obj_forcefield))
{
    direction = -direction + 180;
	x = currentX 
	y = currentY 
}

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_forcefield))
{
    direction = -direction;
	x = currentX 
	y = currentY 
}
speed = clamp(speed,0,maxSpeed)