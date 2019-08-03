/// @description Insert description here
// You can write your code in this editor

draw_set_color(global.color0)
draw_rectangle(-50,-50,room_width+50,room_height+50,0)
draw_set_color(global.color1)
draw_set_alpha(.4)
for(var i = 0; i < starCount; i++)
{
	draw_point(starArrayX[i],starArrayY[i])
	starArrayX[i] = wrap(starArrayX[i],room_width)
	starArrayY[i] = wrap(starArrayY[i],room_height)
}
draw_set_alpha(.6)
for(var i = 0; i < starCountMid; i++)
{
	var twinkle = 0
	if(irandom(700) = 0)
		twinkle = 1
	draw_circle(starArrayMidX[i],starArrayMidY[i],1+twinkle,0)

	with(obj_player)
	{
		other.starArrayMidX[i] -= hspeed/24
		other.starArrayMidY[i] -= vspeed/24
	}
	starArrayMidX[i] = wrap(starArrayMidX[i],room_width)
	starArrayMidY[i] = wrap(starArrayMidY[i],room_height)
}
draw_set_alpha(.8)
for(var i = 0; i < starCountLarge; i++)
{
	var twinkle = 0
	if(irandom(700) = 0)
		twinkle = 2
	draw_circle(starArrayLargeX[i],starArrayLargeY[i],2+twinkle,0)
	with(obj_player)
	{
		other.starArrayLargeX[i] -= hspeed/20
		other.starArrayLargeY[i] -= vspeed/20
	}
	starArrayLargeX[i] = wrap(starArrayLargeX[i],room_width)
	starArrayLargeY[i] = wrap(starArrayLargeY[i],room_height)
}
draw_set_alpha(1)