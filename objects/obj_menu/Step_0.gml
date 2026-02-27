if(!instance_exists(obj_transicao)){
	
	#region mudar opção

		if (global.tecla_menu_dir) {
	
			audio_play_sound(snd_selecao_menu, 0, 0, global.volume_geral)
	
		    indice = (indice + 1) mod qtd;
		}

		if (global.tecla_menu_esq) {
	
			audio_play_sound(snd_selecao_menu, 0, 0, global.volume_geral)
	
		    indice = (indice - 1 + qtd) mod qtd;
		}

	#endregion

	#region selecionar opção
		
		if(global.tecla_menu_con){
		
			audio_play_sound(snd_menu_expand, 0, 0, global.volume_geral)
	
		
			switch(indice){
			
				case 0:
			
					if(!instance_exists(obj_transicao)){
						var t = instance_create_layer(x, y, "huds", obj_transicao);
						t.destino = rm_opening;
					}
			
				break;
				
				case 1:
					
					switch(lvlnum){
						
						case 0:
						
							if(!instance_exists(obj_transicao)){
								var t = instance_create_layer(x, y, "huds", obj_transicao);
								t.destino = rm_tutorial;
							}
							
						break;
						case 1:
						
							if(!instance_exists(obj_transicao)){
								var t = instance_create_layer(x, y, "huds", obj_transicao);
								t.destino = rm_1;
							}
							
						break;
						case 2:
						
							if(!instance_exists(obj_transicao)){
								var t = instance_create_layer(x, y, "huds", obj_transicao);
								t.destino = rm_2;
							}
							
						break;
						case 3:
						
							if(!instance_exists(obj_transicao)){
								var t = instance_create_layer(x, y, "huds", obj_transicao);
								t.destino = rm_3;
							}
							
						break;
						case 4:
						
							if(!instance_exists(obj_transicao)){
								var t = instance_create_layer(x, y, "huds", obj_transicao);
								t.destino = rm_4;
							}
							
						break;
						
					}
			
				break;
							
				case 2:

						global.fullscreen = !global.fullscreen;
				
				break;
				
				case 3:
							
					global.idindc = (global.idindc + 1) mod array_length(global.idioma);	
				
				break;
				
				case 5:
							
					game_end();
				
				break;
			
			}
		
		}

	#endregion

	#region mudar som

	if(indice == 4){
		if(global.tecla_menu_cima){
			if(global.volume_geral<1)global.volume_geral+=.05;	
		}
		if(global.tecla_menu_baixo){
			if(global.volume_geral>0)global.volume_geral-=.05;	
		}
	}

	#endregion


	#region escolher nivel

	if(indice == 1){
		if(global.tecla_menu_cima){
			if(lvlnum<lvlmax)lvlnum+=1;	
		}
		if(global.tecla_menu_baixo){
			if(lvlnum>0)lvlnum-=1;	
		}
	}

	#endregion

}

#region idiomas

	var _idioma = global.idioma[global.idindc]

	if(_idioma == "ptbr"){
		menu = ["Novo jogo", "Escolher nivel", "Alternar Tela cheia", "Idioma", "Sons", "Sair"];
	}else{
		menu = ["New game", "Choose level","Toggle fullscreen", "Language", "Sounds", "Exit"];
	}

#endregion

#region logo

	logo_ysc = lerp(logo_ysc, 1, .1);

#endregion