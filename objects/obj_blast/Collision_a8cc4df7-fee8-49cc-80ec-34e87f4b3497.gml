/// @description set destroy alarms on me and the other

if !other.dying{
	instance_destroy()
	with other {
		dyingflag = 1;
	}
}