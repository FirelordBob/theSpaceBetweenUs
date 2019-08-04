/// @description Insert description here
// You can write your code in this editor
var player
with(obj_player)
	player = id

	x = (((player.x + mouse_x)/2)*2 + x*98)/100
	y = (((player.y + mouse_y)/2)*2 + y*98)/100


var dist = point_distance(player.x,player.y,x,y)
if(dist > range)
{
	var dir = point_direction(x,y,player.x,player.y)
	x = x + lengthdir_x(dist -range,dir)	
	y = y + lengthdir_y(dist -range,dir)	
	
}
