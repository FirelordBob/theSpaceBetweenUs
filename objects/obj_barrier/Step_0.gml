/// @description Insert description here
// You can write your code in this editor
if(!active)
{
	var intersect = 0
	with(obj_barrier)	
		if(place_meeting(x,y,obj_player))
		{
			var intersect = 1	
		}
	if(!intersect){
		with(obj_barrier)
		{
			active = 1
			image_alpha = 1	
		}
		if(!audio_is_playing(snd_wallsbuild)){
			audio_play_sound(snd_wallsbuild,30,0);
		}
	}
}