/// @description Insert description here
// You can write your code in this editor
friendXOffset = []
friendYOffset = []
for(var i = 0; i < array_length_1d(friendArray); i++)
{
	friendXOffset[i] = x - friendArray[i].x
	friendYOffset[i] = y - friendArray[i].y
}

move_to_room()
alarm_set(2,1)