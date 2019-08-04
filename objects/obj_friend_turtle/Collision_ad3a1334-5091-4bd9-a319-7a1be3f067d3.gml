if(!collected)
{
	var player = other
	other.turtleFriend = 1;
	with(instance_create_depth(player.x,player.y,player.depth - 1, obj_shield))
	{
		owner = player		
	}
	dialogue[0] = "Hel.."
	dialogue[1] = "..."
	dialogue[2] = "..lo"
	dialogue[3] = "..."
	dialogue[4] = "I'm"
	dialogue[5] = "pleased"
	dialogue[6] = "to"
	dialogue[7] = "meet"
	dialogue[8] = "..."
	dialogue[9] = "you"
	
	name = "Tabitha"
	spriteNum = 2
}
// Inherit the parent event
event_inherited();


