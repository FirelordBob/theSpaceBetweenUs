/// @description Charge blast

//If I'm allowed to fire (not on cooldown), increment gunPower upwards until maximum
if(canIFire){
	gunPower += gunPowerInc;
	room_speed = halfSpeed
	if gunPower > gunPowerMaximum {
		gunPower = gunPowerMaximum;
	}
	//If this is the first frame of the new charge, we need to create a bullet to charge
	if myBullet == noone {
		myBullet = instance_create_depth(x + cos(facing*pi/180)*(mySize),y - sin(facing*pi/180)*(mySize),depth-1,obj_blast);
		myBullet.myGun = self;
		myBullet.freeze = myPlayer.snakeFriend
		if(myPlayer.gorillaFriend) {
			if(audio_is_playing(snd_charge2)){
				audio_stop_sound(snd_charge2);
			}
			audio_play_sound(snd_charge2,98,0)
		} else if (myPlayer.elephantFriend){
			if(audio_is_playing(snd_charge1)){
				audio_stop_sound(snd_charge1);
			}
			audio_play_sound(snd_charge1,98,0)
		} else {
			if(!audio_is_playing(snd_firelazer)){
				audio_play_sound(snd_firelazer,99,0)
			}
		}
	
	}

	if(instance_exists(myBullet))
	{
		myBullet.image_xscale = gunPower/2.5;
		myBullet.image_yscale = gunPower/2.5;
		myBullet.damage = power((gunPower*2),3)
	}
	else
	{
		alarm_set(1,cooldownTimer);
		myBullet = noone
		canIFire = 0
	}
}

if(!myPlayer.elephantFriend && instance_exists(myBullet)){
	//Change my speed
	vspeedChange = sin(facing*pi/180)*sqr(gunPower);
	hspeedChange = -cos(facing*pi/180)*sqr(gunPower);
	vspeed += vspeedChange;
	hspeed += hspeedChange;

	//Change player speed
	myPlayer.vspeed += vspeedChange*1.5;
	myPlayer.hspeed += hspeedChange*1.5;

	//Change bullet speed
	myBullet.vspeed -= 4*(sin(facing*pi/180));
	myBullet.hspeed -= 4*(-cos(facing*pi/180));

	//Release bullet from my ownership
	myBullet.myGun = noone;
	myBullet = noone;

	//Reset gunPower
	gunPower = gunPowerMinimum;

	//Set cooldown timer
	canIFire = 0;
	alarm_set(1,cooldownTimer);
	room_speed = fullSpeed
}