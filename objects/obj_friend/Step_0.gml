/// @description Insert description here
// You can write your code in this editor
var dist = distance_to_object(player)

gravity = .5
gravity_direction = point_direction(x,y,player.x,player.y)
if speed > 2
	speed-=.02
else if speed < .5
	speed += .1
