if(place_meeting(x, y, obj_player)){
	
	if(global.tecla_cima){
		if(!instance_exists(obj_transicao)){
			var t = instance_create_layer(x, y, "huds", obj_transicao);	
			t.destino = destino
		}
	}
	

}

