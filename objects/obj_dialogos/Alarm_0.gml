if(inicializar){
	
	if(caractere<string_length(texto_grid[# infos.Texto, pagina])){
		
		
		if(audio_played_times>0){
			audio_played_times-=1;
		}
		else{
			audio_sound_pitch(texto_grid[# infos.Som, pagina], random_range(0.95, 1.05))
			audio_play_sound(texto_grid[# infos.Som, pagina], 1, 0, global.volume_geral);	
			audio_played_times = audio_played_times_max;
		}
		
		caractere++;
	}
}



alarm[0] = 1
