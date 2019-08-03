/// @description Insert description here
// You can write your code in this editor
randomize()
depth = 90
global.color0 = c_black;
global.color1 = c_white;
global.freeze  = 1
starArrayX = []
starArrayY = []
starCount = 0
starArrayMidX = []
starArrayMidY = []
starCountMid = 0
starArrayLargeX = []
starArrayLargeY = []
starCountLarge = 0
bulletTime = .75
for(var i = -50; i < room_width+50; i++)
{
	for(var j = -50; j < room_height+50; j++)
	{
		if(irandom(600) = 0)
		{	
			starArrayX[starCount] = i
			starArrayY[starCount] = j
			starCount++
		}
		if(irandom(20000) = 0)
		{	
			starArrayMidX[starCountMid] = i
			starArrayMidY[starCountMid] = j
			starCountMid++
		}
		if(irandom(60000) = 0)
		{	
			starArrayLargeX[starCountLarge] = i
			starArrayLargeY[starCountLarge] = j
			starCountLarge++
		}
	}
}