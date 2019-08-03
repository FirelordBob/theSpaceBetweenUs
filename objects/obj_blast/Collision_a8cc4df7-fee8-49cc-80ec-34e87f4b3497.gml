/// @description set destroy alarms on me and the other

if !other.dying{
	alarm_set(0,deathtimer);
	hspeed = 0;
	vspeed = 0;
	x = currentX;
	y = currentY;
	dying = 1;
	with other {
		dyingflag = 1;
	}
}