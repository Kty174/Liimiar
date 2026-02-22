if(global.camada==meunivel){
	
	#region variaveis

		var chao = place_meeting(x, y + 1, obj_colisoes)

	#endregion
	
	#region mudar alpha para 1
	
		alp = lerp(alp, 1, .5)	
	
	#endregion
	
	#region gravidade

		if(!chao){
			if(vspd<vspd_max){
				vspd+=GRAVIDADE;	
			}
		}

	#endregion

	#region maquina de estados

		switch(estado){
	
			#region estado - idle
		
				case "idle":
				
					hspd = 0;
				
					novo_sprite(sprite_idle);
					
					ang = lerp(ang, 0, .5);
					ysc = lerp(ysc, 1, .5);
				
					if(chao){
						pulos = pulos_max
						coyote_time = coyote_time_max
					}
				
					if(global.tecla_esq || global.tecla_dir){
						estado = "walk";	
					}
				
					if(global.tecla_pular && pulos>0){
						estado = "pulo";	
					}
				
					if(vspd > 1){
						estado = "fall"	
					}
				
				break;
		
			#endregion
		
			#region estado - walk
		
				case "walk":
				
					if(sprite_index!=sprite_walk){
						ysc = .5;
						novo_sprite(sprite_walk);
					}
				
					lados = global.tecla_dir - global.tecla_esq;
				
					hspd = lados * spd
				
					ang = lerp(ang, 15 * lados, .1);
					ysc = lerp(ysc, 1, .1);
				
					if(!global.tecla_esq && !global.tecla_dir){
						estado = "idle";	
					}
				
					if(global.tecla_pular && pulos>0){
						estado = "pulo";	
					}
				
					if(vspd > 0){
						estado = "fall"	
					}
				
				break;
		
			#endregion
		
			#region estado - pulo
		
				case "pulo":
				
					lados = global.tecla_dir - global.tecla_esq;
					hspd = lados * spd
				
				
					if(sprite_index!=sprite_jump){
						pulos-=1;
						vspd -= forca_pulo;
						ysc = .5
						novo_sprite(sprite_jump);
					}
				
						ang = lerp(ang, 0, 1);
						ysc = lerp(ysc, 1, 1);
				
					if(vspd > 0){
						estado = "fall"	
					}
				
					if(vspd == 0 || chao){
						estado = "idle"	
					}
				
				break;
		
			#endregion
		
			#region estado - fall
		
				case "fall":
			
					novo_sprite(sprite_fall);
	
					lados = global.tecla_dir - global.tecla_esq;
					hspd = lados * spd
					
					if(coyote_time>0)coyote_time--;
						
					if(global.tecla_pular 
					&& coyote_time>0
					&& pulos>0){
						estado = "pulo"	
					}
					
					if(vspd==0|| chao){
						ysc = .5;
						estado = "idle"	
					}
				
				break;
		
			#endregion
	
		}

	#endregion

}else{
	hspd = 0;
	vspd = 0;
	
	ysc = lerp(ysc, 0, .1)	
	alp = lerp(alp, 0, .1)	
}