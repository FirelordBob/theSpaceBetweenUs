/// @description bounce(object_to_bounce)

//returns 1 if we bounced
var returnNumber = 0;

//Horizontal bounce
if(place_meeting(x + hspeed, y, argument0))
{
    direction = -direction + 180;
	x = currentX 
	y = currentY 
	returnNumber = 1;
}

//Vertical bounce
if(place_meeting(x, y + vspeed, argument0))
{
    direction = -direction;
	x = currentX 
	y = currentY 
	returnNumber = 1;
}

return returnNumber;