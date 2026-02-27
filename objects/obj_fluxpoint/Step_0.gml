image_speed = global.worldspeed;

var fluxp = instance_nearest(x, y, obj_flux)

if(point_distance(x, y, fluxp.x, fluxp.y) < 25){
	ativado = true
	sprite_index = Shollow_flux_base_energyzed
}else{
	ativado = false;	
	sprite_index = Shollow_flux_base
}


if (ativado) {

    if (!toqueisom) {

        var som = snd_hi_v;
        audio_sound_pitch(som, random_range(0.95, 1.05));

        audio_play_sound(som, 1, false);
        toqueisom = true;
    }

}