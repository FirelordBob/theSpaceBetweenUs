/// @description bounce(object_to_bounce)

//Horizontal bounce
if(place_meeting(x + hspeed, y, argument0))
{
    direction = -direction + 180;
	x = currentX 
	y = currentY 
}

//Vertical bounce
if(place_meeting(x, y + vspeed, argument0))
{
    direction = -direction;
	x = currentX 
	y = currentY 
}