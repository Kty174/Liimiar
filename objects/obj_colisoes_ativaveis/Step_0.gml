if(identificacao==obj_colisoes_wallbutton.identificacao){
	if(obj_colisoes_wallbutton.pressionado==1){
		todos_pressionados = true
		sprite_index = Scolisao;	
	}else{
		todos_pressionados = false;
		sprite_index = -1;	
	}
}