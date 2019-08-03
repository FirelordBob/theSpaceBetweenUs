if(!place_meeting(x,y,obj_player)) {
	instance_create_depth(x,y,2,obj_forcefield);
	instance_destroy();
} else {
	alarm_set(0,10)
}