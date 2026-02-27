if(!instance_exists(obj_transicao)){
	if(!mostrou){
		
		if(etapa<string_length(texto)+1){
			etapa+=ets		
		}
		
		if(global.tecla_menu_con){
			etapa = string_length(texto)+1;
			tempotxt = 0;
			//room_goto(rm_tutorial)
		}
	
		if(txtalp<1)txtalp+=.01;
		else{
			
			if(etapa>=string_length(texto)+1){		
				if(tempotxt>0)tempotxt--;
				else{
					var t = instance_create_layer(x, y, "huds", obj_transicao);
						t.destino = rm_tutorial;
						t.x = 93;
						t.y = 320;	
				}
			}
		}
	}
}

