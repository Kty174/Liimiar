var p = instance_place(x, y - 2, obj_player);

if (p != noone && p.vspd >= 0) {
	
	if(warntime>0){
		image_index = 1;
		warntime--;
		
		if(!lls){
			var som = snd_launcher_load;
			audio_sound_pitch(som, random_range(0.95, 1.05));
			audio_play_sound(som,1, 0, global.volume_geral);	
			lls = true;
		}
		
	}
	else{
		image_index = 2;
		
		if(!lla){
			var som = snd_launcher_launch;
			audio_sound_pitch(som, random_range(0.95, 1.05));
			audio_play_sound(som,1, 0, global.volume_geral);	
			lla = true;
		}		
		
	}
	if(ejectime){
		ejectime--;	
	}
		
	if(warntime<=0 && ejectime<=0){
		
		
		if(!llb){
			var som = snd_superjump;
			audio_sound_pitch(som, random_range(0.95, 1.05));
			audio_play_sound(som,1, 0, global.volume_geral);	
			llb = true;
		}	
		
		
		with(obj_player){
			estado = "superpulo";
			vspd = -other.forca;
		}
		
		warntime = 50;
		ejectime = 75
		
	}
		
}else{

lla = false;
lls = false;
llb = false;

image_index = 0;
	
warntime = 50;
ejectime = 75
	
}