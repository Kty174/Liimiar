if(global.camada==tipo){
	alp = lerp(alp, 1, .1);	
	
	if(tipo=="life"){
		if(place_meeting(x, y, obj_player_vivo)) pressionado = 1;
		else pressionado = 0;
		sprite = Salive_wallbutton;
	}
	
	
	if(tipo=="void"){
		if(place_meeting(x, y, obj_player_limbo)) pressionado = 1;
		else pressionado = 0;
		sprite = Shollow_wallbutton;
	}
	if(tipo=="death"){
		if(place_meeting(x, y, obj_player_morto)) pressionado = 1;
		else pressionado = 0;	
		sprite = Sdead_wallbutton;
	}
	
	
	
}else{
	alp = lerp(alp, 0, .1);		
	//sprite_index = -1;
}
