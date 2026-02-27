if(place_meeting(x, y, obj_player)){
	
	if(global.tecla_cima){
		if(!instance_exists(obj_transicao)){
			var t = instance_create_layer(x, y, "huds", obj_transicao);	
			t.destino = destino
			t.xx = xx;
			t.yy = yy;
		}
	}
	
	if(!somporta){
			var som = snd_door_open;
			audio_sound_pitch(som, random_range(0.95, 1.05));
			audio_play_sound(som,1, 0, global.volume_geral);
			somporta = true;
	}
	
	novo_sprite(Sporta)
	
	
	
	if(image_index >= image_number - 1){
	    image_index = image_number - 1;
	    image_speed = 0;
	}else{
	    image_speed = 1 * global.worldspeed;
	}
	
}else{
	
	novo_sprite(Sporta_fechando)
	
	
	if(somporta){
		var som = snd_door_open;
		audio_sound_pitch(som, random_range(0.95, 1.05));
		audio_play_sound(som,1, 0, global.volume_geral);
		somporta = false;
	}
	
	if(image_index >= image_number - 1){
	    image_index = image_number - 1;
	    image_speed = 0;
	}else{
	    image_speed = 1 * global.worldspeed;
	}
	
}