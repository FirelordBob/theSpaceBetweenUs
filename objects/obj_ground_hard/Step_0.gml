if dyingflag && !dying{
	var myPlayer;
	with obj_player{
		myPlayer = self;
	}
	if dieStrong {
		alarm_set(0,deathtimer);
		dying = 1;
	} else {
		dyingflag = 0
	}
}