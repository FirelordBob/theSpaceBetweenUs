if(!collected)
{
	other.gorillaFriend = 1;
	with(obj_gun)
		gunPowerMaximum = 1.5
	
	dialogue[0] = "It's an honor to make your acquaintance."
	dialogue[1] = "I'll lend you my phenomenal strength"
	name = "Gustaf"
}
// Inherit the parent event
event_inherited();

