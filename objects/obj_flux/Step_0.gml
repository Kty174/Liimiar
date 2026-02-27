
// VISIBILIDADE (apenas visual)
if (global.webworld || ancorado) {
    alp = lerp(alp, 1, 0.1);
} else {
    alp = lerp(alp, 1, 0.1);
}

// --------------------------------------
// LÓGICA DE COMPORTAMENTO (independente do mundo)
// --------------------------------------

// Se ainda não está preso em um fluxpoint
if (!ancorado && seguindo) {

    // Verifica se existe algum fluxpoint próximo
    var fp = instance_nearest(x, y, obj_fluxpoint);

    if (fp != noone) {
        if (point_distance(x, y, fp.x, fp.y) < 50) {
            ancorado = true;
			seguindo = false;
            alvo_flux = fp; // guarda qual fluxpoint ele travou
        }
    }
}

if(ancorado){
	
	if(!somanc){
		var som = snd_hi_v_act;
		audio_sound_pitch(som, random_range(0.95, 1.05));
		audio_play_sound(som,1, 0, global.volume_geral);
		somanc = true;
	}
	
    // Fica preso no fluxpoint
    if (instance_exists(alvo_flux)) {
        x = lerp(x, alvo_flux.x, 0.1);
        y = lerp(y, alvo_flux.y - 16, 0.1);
    }	
}


// --------------------------------------
// MOVIMENTO
// --------------------------------------

if(!ancorado){
	if (seguindo) {
	    	x = lerp(x, obj_player.x, 0.1);
			y = lerp(y, obj_player.y - 16, 0.1);

	} else {
	
		if(point_distance(x, y, obj_player.x,obj_player.y) < 50){
			seguindo = true
		}
	}
}


if(sw_cd>0){
sw_cd--;	
}else{
	instance_create_depth(x, y, depth+1, obj_shockwave);
	sw_cd = sw_cd_max
}