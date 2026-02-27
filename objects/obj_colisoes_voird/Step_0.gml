if(global.webworld){
	alp = lerp(alp, 1, .1)
	sprite_index = Shollow_colisao;
}else{
	alp = lerp(alp, 0, .1)
	sprite_index = -1;
}	

if(place_meeting(x, y, obj_player)){
	obj_player.estado = "morte";	
}