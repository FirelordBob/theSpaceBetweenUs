/// @description Friend Respawn
// You can write your code in this editor
for(var i = 0; i < array_length_1d(friendArray); i++)
{
	with(friendArray[i])
		instance_destroy()
	with(instance_create_depth(x - friendXOffset[i], y - friendYOffset[i],depth-1,friendArray[i]))
		collected = 1
	
}