if(global.camada==tipo){
	ysc = lerp(ysc, 1, .1);	
	alp = lerp(alp, 1, .1);	
	sprite_index = Scolisao;
}else{
	ysc = lerp(ysc, 0, .1);	
	alp = lerp(alp, 0, .1);		
	sprite_index = -1;
}
