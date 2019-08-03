if(!collected)
{
	var player = other
	other.turtleFriend = 1;
	with(instance_create_depth(player.x,player.y,player.depth - 1, obj_shield))
	{
		owner = player		
	}
}
// Inherit the parent event
event_inherited();


