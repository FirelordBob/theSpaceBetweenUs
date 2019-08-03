/// @description Insert description here
// You can write your code in this editor

draw_set_color(global.color0)
draw_rectangle(-50,-50,room_width+50,room_height+50,0)
draw_set_color(global.color1)
draw_set_alpha(.4)
for(var i = 0; i < starCount; i++)
{
	draw_point(starArrayX[i],starArrayY[i])
	if(!(global.freeze && bulletTime))
		starArrayY[i]+= 1 - bulletTime
	if(starArrayY[i] > room_height+50)
		starArrayY[i] = -50
}
draw_set_alpha(.6)
for(var i = 0; i < starCountMid; i++)
{
	var twinkle = 0
	if(irandom(700) = 0)
		twinkle = 1
	draw_circle(starArrayMidX[i],starArrayMidY[i],1+twinkle,0)
	if(!(global.freeze && bulletTime))
		starArrayMidY[i]+=1.5 - bulletTime
	if(starArrayMidY[i] > room_height+50)
		starArrayMidY[i] = -50

}
draw_set_alpha(.8)
for(var i = 0; i < starCountLarge; i++)
{
	var twinkle = 0
	if(irandom(700) = 0)
		twinkle = 2
	draw_circle(starArrayLargeX[i],starArrayLargeY[i],2+twinkle,0)
	if(!(global.freeze && bulletTime))
		starArrayLargeY[i]+=2 - bulletTime*1.5
	if(starArrayLargeY[i] > room_height+50)
		starArrayLargeY[i] = -50

}
draw_set_alpha(1)