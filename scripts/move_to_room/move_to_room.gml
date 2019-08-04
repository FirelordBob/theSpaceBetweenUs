
//		  
//room2 - room1 - room0 - room7
//room3 - room4 - room5 - room6 - room 8
speed = clamp(speed, 1 ,2)
if(room == room0)
{
	if(x < 0)	
	{
		room_goto(room1)
		x = room_width
	}
	if(x > room_width)
	{
		room_goto(room7)
		x = 0
	}
}
if(room == room1)
{
	if(x < 0)	
	{
		room_goto(room2)
		x = room_width
	}
	if(x > room_width)	
	{
		room_goto(room0)
		x = 0
	}
	if(y > room_height)	
	{
		room_goto(room4)
		y = 0
	}
}
if(room == room2)
{
	if(y > room_height)	
	{
		room_goto(room3)
		y = 0
	}
	if(x > room_width)	
	{
		room_goto(room1)
		x = 0
	}
}
if(room == room3)
{
	if(y < 0)	
	{
		room_goto(room2)
		y = room_height
	}
	if(x > room_width)	
	{
		room_goto(room4)
		x = 0
	}
}
if(room == room4)
{
	if(y < 0)	
	{
		room_goto(room1)
		y = room_height
	}
	if(x < 0)	
	{
		room_goto(room3)
		x = room_width
	}
	if (x > room_width)
	{
		room_goto(room5)
		x = 0
	}
}
if(room == room5)
{
	if(x < 0)	
	{
		room_goto(room4)
		x = room_width
	}
	if (x > room_width)
	{
		room_goto(room6)
		x = 0
	}
}
if(room == room6)
{
	if(y < 0)	
	{
		room_goto(room7)
		y = room_height
	}
	if(x < 0)	
	{
		room_goto(room5)
		x = room_width
	}
	if (x > room_width)
	{
		room_goto(room8)
		x = 0
	}
}
if(room == room7)
{
	if(y > room_height)	
	{
		room_goto(room6)
		y = room_height
	}
	if(x < 0)	
	{
		room_goto(room0)
		x = room_width
	}
}
if(room == room8)
{
	if(x < 0)
	{
		room_goto(room6)
		x = room_width
	}
}