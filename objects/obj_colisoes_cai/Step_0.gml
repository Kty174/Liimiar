event_inherited();

switch (estado) {

    case 0: // parado
        
        if (place_meeting(x+1,y,obj_player) ||
            place_meeting(x-1,y,obj_player) ||
            place_meeting(x,y-1,obj_player)) {

            estado = 1;
            shake_time = 20;
            shake_len = 1.5;

            var som = snd_block_breaking;
            audio_sound_pitch(som, random_range(0.95, 1.05));
            audio_play_sound(som,1,0,global.volume_geral);

            screen_shake(10,5);
        }

    break;


	case 1: // tremendo

	    if (shake_time > 0) {
	        shake_time--;
	        xx = random_range(-shake_len, shake_len);
	        yy = random_range(-shake_len, shake_len);
	    } else {
	        xx = 0;
	        yy = 0;
	        estado = 2; // agora é desaparecer
	    }

	break;

	case 2:

	    alp -= 0.1;

	    if (alp <= 0) {
	        alp = 0;
	        estado = 3;
			sprite_index = -1;
	        respawn_timer = respawn_time;
	    }

	break;
	
	case 3:

    respawn_timer--;

    if (respawn_timer <= 0) {

        x = xinicial;
        y = yinicial;

        alp = 1;
        alp = 1;
		
		sprite_index = Scolisao_fallwall;
		
        estado = 0;
    }

break;

}