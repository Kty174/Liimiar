image_speed = global.worldspeed;

var fluxp = instance_nearest(x, y, obj_flux)

if(place_meeting(x, y-1, obj_player) 
|| place_meeting(x, y-1, obj_colisoes_caixas)
|| place_meeting(x, y-1, obj_soldier)){
	if(!ativado){
		var som = snd_button;
		audio_sound_pitch(som, random_range(0.95, 1.05));
		audio_play_sound(som,1, 0, global.volume_geral);
		ativado = true
	}
	image_index = 1;
}else{
	if(ativado){
		var som = snd_button;
		audio_sound_pitch(som, random_range(0.95, 1.05));
		audio_play_sound(som,1, 0, global.volume_geral);
		ativado = false;
	}
	image_index = 0;
}
