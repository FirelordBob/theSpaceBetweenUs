/// @description Insert description here
// You can write your code in this editor
var player
with(obj_player)
	player = id
if(place_meeting(x,y,obj_blast) && player.roboGazelleFriend)
{
	instance_destroy()	
	instance_create_depth(x,y,depth-1,obj_forcefield_disabled)
}