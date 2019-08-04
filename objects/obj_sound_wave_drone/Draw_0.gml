/// @description Insert description here
// You can write your code in this editor
var a = -direction
var diameter = 2*distance_to_point(endX,endY)
if(diameter <= 0 && released)
	instance_destroy()
var amp = 0;
var freq = frequency;
var lastX = endX;
var lastY = endY;
draw_set_color(c_red);
for(var i=0; i<diameter/2; i++) {
    // sin vector
	if(i < 40)
		amp++
	if(i > diameter/2 - 20)
		amp--
    var dx1 = i-diameter/2;
    var dy1 = dsin(dx1*freq)*amp;
    // rotation vector
    var dx2 = dx1*dcos(a) - dy1*dsin(a);
    var dy2 = dx1*dsin(a) + dy1*dcos(a);
    // position vector
    var dx3 = dx2+x;
    var dy3 = dy2+y;
   
    // draw
    if(i != 0) 
	{
		draw_line_width(lastX, lastY, dx3, dy3,1.5);	
	}
	if(position_meeting(lastX,lastY,obj_player) && !hit)
		{
			with(obj_player)
				motion_add(other.direction,other.moveSpeed/4)
			hit = 1
			alarm_set(0,10)
		}
	if(position_meeting(lastX,lastY,obj_friend))
		with(instance_position(lastX,lastY,obj_friend))
			if(collected)
				motion_add(other.direction,other.moveSpeed)
    lastX = dx3;
    lastY = dy3;
	

}
frequency ++
if(released)
{
	
	endX = endX + lengthdir_x(moveSpeed*2,direction)
	endY = endY + lengthdir_y(moveSpeed*2,direction)
	x = x + lengthdir_x(moveSpeed,direction)
	y = y + lengthdir_y(moveSpeed,direction)
	speed = 0
}