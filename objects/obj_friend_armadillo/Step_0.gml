/// @description Insert description here
// You can write your code in this editor
if(collected)
{
gravity = .4
var dist = distance_to_object(player)
var playerDir = point_direction(x,y,player.x,player.y)

gravity_direction = point_direction(x,y,player.x +lengthdir_x(targetDist,playerDir + 90),player.y+lengthdir_y(targetDist,playerDir + 90))

if(speed > 3)
	speed = 3
	
}