facing = point_direction(x,y,mouse_x,mouse_y);
image_angle = facing;
x = myPlayer.x
y = myPlayer.y

if(myBullet != noone)
{
	with(myBullet)
	{
		if myGun != noone {
			x = myGun.x + cos(myGun.facing*pi/180)*(myGun.mySize +sprite_width/2)
			y = myGun.y - sin(myGun.facing*pi/180)*(myGun.mySize  +sprite_height/2)
		} else {
			//If I leave the stage after being fired, I should disappear
			if x < 0 || y < 0 || x > room_width || y > room_height{
				instance_destroy();
			}

		}
	}	
}