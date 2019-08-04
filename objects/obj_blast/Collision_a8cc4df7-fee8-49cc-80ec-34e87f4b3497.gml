/// @description set destroy alarms on me and the other

if !instance_exists(myGun){
	if !other.dying{
		if damage >= 6 {
		//if we want a guy who lets you blow up walls with undercharged bullets:
		// if damage == 8 || myGun.myPlayer.shootyfriend == 1 {
			with other {
				dyingflag = 1;
			}
			if damage >= 11
				with other 
					dieStrong = 1
		}
		instance_destroy()
	}
}