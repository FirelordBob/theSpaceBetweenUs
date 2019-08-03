/// @description Insert description here
// You can write your code in this editor

var a = -direction
var diameter = 2*distance_to_point(xstart,ystart)
var amp = 8;
var freq = 10;

var lastX = xstart;
var lastY = ystart;
draw_set_color(c_red);
for(var i=0; i<diameter; i++) {
    // sin vector
    var dx1 = i-diameter/2;
    var dy1 = dsin(dx1*freq)*amp;
    // rotation vector
    var dx2 = dx1*dcos(a) - dy1*dsin(a);
    var dy2 = dx1*dsin(a) + dy1*dcos(a);
    // position vector
    var dx3 = dx2+x;
    var dy3 = dy2+y;
   
    // draw
    if(i != 0) draw_line(lastX, lastY, dx3, dy3);
    lastX = dx3;
    lastY = dy3;
}