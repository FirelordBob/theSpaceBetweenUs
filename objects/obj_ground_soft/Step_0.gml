if dyingflag && !dying{
	alarm_set(0,deathtimer);
	dying = 1;
}