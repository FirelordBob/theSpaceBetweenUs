/// @description stick(object_to_stick)

//returns 1 if we sticked
var returnNumber = 0;

//Horizontal bounce
if(place_meeting(x + hspeed, y, argument0))
{
	speed = 0;
	x = currentX 
	y = currentY 
	returnNumber = 1;
}

//Vertical bounce
if(place_meeting(x, y + vspeed, argument0))
{
	speed = 0;
	x = currentX 
	y = currentY 
	returnNumber = 1;
}

return returnNumber;