/// @description Insert description here
// You can write your code in this editor

	x = currentX
	y = currentY
	other.x = other.currentX
	other.y = other.currentY
	var dir = point_direction(x,y,other.x,other.y)
	with(other)
		motion_add(dir,other.asteroidBounceAmount)

	motion_add(dir+180,other.asteroidBounceAmount)
