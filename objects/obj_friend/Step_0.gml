/// @description Insert description here
// You can write your code in this editor
if(collected)
{
gravity = .2
var dist = distance_to_object(player)
var playerDir = point_direction(x,y,player.x,player.y)

gravity_direction = point_direction(x,y,player.x +lengthdir_x(targetDist,playerDir + 135),player.y+lengthdir_y(targetDist,playerDir + 135))

if(speed > 2)
	speed = 2
	
}
