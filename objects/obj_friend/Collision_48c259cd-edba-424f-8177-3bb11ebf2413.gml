/// @description Insert description here
// You can write your code in this editor
x = currentX
y = currentY
other.x = other.currentX
other.y = other.currentY
var dir = point_direction(x,y,other.x,other.y)
with(other)
	motion_add(dir,3)
motion_add(dir+180,3)
if(!collected)
{
	collected = 1
	other.friendArray[array_length_1d(other.friendArray)] = id
}