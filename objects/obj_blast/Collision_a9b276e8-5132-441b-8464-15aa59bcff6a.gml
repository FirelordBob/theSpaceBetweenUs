var player
with obj_player {
	player = self
}
if player.roboGazelleFriend {
	instance_create_depth(other.x,other.y,0,obj_forcefield_disabled);
	instance_destroy(other)
}