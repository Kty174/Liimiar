if(!global.webworld){

image_alpha = lerp(image_alpha, 1, .1);

}else{
	image_alpha = lerp(image_alpha, 0, .1);
}


switch(estado){

	case "idle":
			
		dispo_cd = dispo_cd_max;

		shke = false;
		som_a = false;
		som_v = false;
		som_d = false;
		som_r = false;

		if(!global.webworld)disponivel = true;
		else disponivel = false;
		
		novo_sprite(Sbolha)
		
		if(instance_exists(obj_player)){
			if(place_meeting(x, y, obj_player) && !global.webworld){
				estado = "seguindo"
			}
	
		}	
	
	break;
	
	
	case "seguindo":
	
		x = obj_player.x;
		y = obj_player.y;
		hspd = obj_player.hspd;
		
		if(!som_a){
			var som = snd_drone_a;
			audio_sound_pitch(som, random_range(0.95, 1.05));
			audio_play_sound(som,1, 0, global.volume_geral);
			som_a = true;
		}
		
		if(obj_player.estado == "bolhalanca") estado = "avancando";
		
		if(obj_player.estado=="wallhold")estado = "destruindo";
	
	break;
	
	case "avancando":
	
		x = obj_player.x;
		y = obj_player.y;
		hspd = obj_player.hspd;
		
		
		if(!som_v){
			var som = snd_drone_f;
			audio_sound_pitch(som, random_range(0.95, 1.05));
			audio_play_sound(som,1, 0, global.volume_geral);
			som_v = true;
		}
	
		if(obj_player.bubble_timer<=0 
		|| obj_player.estado == "dialogo") estado = "destruindo";
	
	break;
	
	case "destruindo":
	
		novo_sprite(Sbolha_some);
		hspd = 0
		
		
		if(!som_d){
			var som = snd_drone_r;
			audio_sound_pitch(som, random_range(0.95, 1.05));
			audio_play_sound(som,1, 0, global.volume_geral);
			som_d = true;
		}
		
		disponivel = false;
		
		if(image_index>image_number-1)estado = "recuperando";
	
	break;
	
	case "recuperando":
	
		novo_sprite(Sbolha_some);

		if(dispo_cd>0)dispo_cd--;
		else{
			estado = "voltando"	
		}
		
					
		if(floor(image_index)==3 && !shke){
			screen_shake(10,5)	
			shke = true;
		}
		
		if(image_index>image_number-1){
			
			x = x_base;
			y = y_base;
			image_index=image_number-1;	
		}
	
	break;
	
	case "voltando":
	
		novo_sprite(Sbolha_volta);
		
		if(!som_r){
			var som = snd_drone_tp;
			audio_sound_pitch(som, random_range(0.95, 1.05));
			audio_play_sound(som,1, 0, global.volume_geral);
			som_r = true;
		}
		
		if(image_index>image_number-1){
			image_index=image_number-1;	
			estado = "idle";
		}
	
	break;
	
	
	
	
}





var max_tilt = 12; // inclinação máxima em graus
var target_tilt = clamp(-hspd * 1.5, -max_tilt, max_tilt);

ang = lerp(ang, target_tilt, 0.15);




