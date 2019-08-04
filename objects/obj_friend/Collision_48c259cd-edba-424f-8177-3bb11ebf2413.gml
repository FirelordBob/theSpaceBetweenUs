/// @description Insert description here
// You can write your code in this editor
if(!collected)
{
	collected = 1
	image_xscale = 1
	image_yscale = 1
	other.friendArray[array_length_1d(other.friendArray)] = object_index
	with(instance_create_depth(0,0,0,obj_dialogue))
	{
		dialogue = other.dialogue
		name = other.name
	}
}