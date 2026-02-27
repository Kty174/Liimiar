	#region variaveis

		var chao = place_meeting(x, y + 1, obj_colisoes);
		var p_e = place_meeting(x - 1, y, obj_colisoes);
		var p_d = place_meeting(x + 1, y, obj_colisoes);
		var pars = p_d || p_e;
		
	#endregion
	
	#region mudar alpha para 1
	
		alp = lerp(alp, 1, .5)	
	
	#endregion
	
	#region morrer se entrar nas paredes
	
		if(place_meeting(x, y, obj_portas_void)){
			estado = "morte";	
		}
		
	#endregion
	
	#region rastro
	
	if(global.webworld){
		if(rascd>0)rascd--;
		else{
			var rastr = instance_create_depth(x, y, depth+1, obj_player_rastro);
			rastr.sprite_index = sprite_index;
			rastr.image_index = image_index;
			rastr.image_speed = 0;
			rastr.image_xscale = xsc;	
			rastr.cor = make_color_rgb(105, 204, 250);
			rastr.temposome = 25;
			rascd = rascd_max
		}
	}
	
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
				
				
					if(audio_is_playing(snd_slide)){
						audio_stop_sound(snd_slide);	
					}
					
					if(!global.tecla_esq && !global.tecla_dir
					&& chao) hspd = 0;
					
					novo_sprite(sprite_idle);
					
					pulomovendo = false;
					checoupulo = false;
					
					partso = false;
					wsnd = false;
					
					ang = lerp(ang, 0, .5);
					ysc = lerp(ysc, 1, .5);
					
					mys = false;
					buffer_diminui = false;
					wj_timer = wj_timer_max
									
					if(chao){
						pulos = pulos_max
						coyote_time = coyote_time_max
						vspd = 0;
						slidetime = slidetime_max
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
				
					var tentando_empurrar = false;
					var caixa_frente = noone;

					if (global.tecla_dir) {
					    caixa_frente = instance_place(x + 4, y, obj_colisoes_caixas);
					}
					if (global.tecla_esq) {
					    caixa_frente = instance_place(x - 4, y, obj_colisoes_caixas);
					}

					if(floor(image_index)==1 && !wsnd){
						var som = snd_walk;
						audio_sound_pitch(som, random_range(0.95, 1.05));
						audio_play_sound(som,1, 0, global.volume_geral);	
						wsnd = true;
					}
					if(floor(image_index)==3 &&  wsnd){
						var som = snd_walk;
						audio_sound_pitch(som, random_range(0.95, 1.05));
						audio_play_sound(som,1, 0, global.volume_geral);	
						wsnd = false;
					}

					if (caixa_frente != noone) {
					    tentando_empurrar = true;
					}
				
				
						if (tentando_empurrar) {

						    if (abs(caixa_frente.hspd) > 0.1) {

						        novo_sprite(sprite_boxpush);
						    }

						}
						else if (hspd != 0) {
						    novo_sprite(sprite_walk);
						}
						else {
						    novo_sprite(sprite_idle);
						}
					
					if(chao)vspd = 0;
				
					lados = global.tecla_dir - global.tecla_esq;
				
					hspd = lerp(hspd, lados * spd, .16)
				
					ang = lerp(ang, 8 * -lados, .1);
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
					hspd = lerp(hspd, lados * spd, .2)
				

					if (!checoupulo) {
						pulomovendo = (hspd != 0);
					}

					if (pulos > 0) {

						var pode_pular = false;
						var spr = sprite_jump;

						if (!pulomovendo) {
						    if (sprite_index != sprite_jump) {
						        pode_pular = true;
						        spr = sprite_jump;
						    }
						} else {
						    if (sprite_index != sprite_pulo_2) {
						        pode_pular = true;
						        spr = sprite_pulo_2;
						    }
						}

						if (pode_pular) {

						    pulos--;
						    vspd = -forca_pulo; 
							ysc = .5;

						    var p = instance_create_depth(x, y, depth+1, obj_particles);
						    p.partype = "jump";

						    var som = snd_jump;
						    audio_sound_pitch(som, random_range(0.95, 1.05));
						    audio_play_sound(som, 1, 0, global.volume_geral);

						    novo_sprite(spr);
						}
					}

					if (pulomovendo && sprite_index == sprite_pulo_2) {
						image_index = clamp(image_index, 0, image_number - 1);
					}

					
						wallock = false;
						ang = lerp(ang, 0, 1);
						ysc = lerp(ysc, 1, 1);
						
					var bub = instance_place(x, y, obj_bubble)
					
					if(bub>-1 && bub.disponivel){
						vspd = 0;
						estado = "montabolha"
					}else{						
						if(!global.tecla_pular_cancel && vspd < 0){
							vspd = max(vspd,-forca_pulo / 2);
						}
					
						if(place_meeting(x, y, obj_colisoes_wallslide) && abs(hspd) > 1){
							estado = "wallslide";	
						}
												

						if(abs(vspd) <= .8){
							estado = "fall"	
						}
								
					}	
				
				break;
		
			#endregion
		
			#region estado - superpulo
		
				case "superpulo":
					
					
					lados = global.tecla_dir - global.tecla_esq;
					hspd = lerp(hspd, lados * spd, .2)
				

					if(sprite_index!=sprite_pulo_parede){
						pulos-=1;
						ysc = .5
						var p = instance_create_depth(x, y, depth+1, obj_particles);
						p.partype="jump"
						var som = snd_jump;
						audio_sound_pitch(som, random_range(0.95, 1.05));
						audio_play_sound(som,1, 0, global.volume_geral);
						novo_sprite(sprite_pulo_parede);
					}
					
						ang = lerp(ang, 0, 1);
						ysc = lerp(ysc, 1, 1);
											

					if(abs(vspd) <= .8){
						estado = "fall"	
					}
								
									
				
				break;
		
			#endregion
		
			#region estado - fall
		
				case "fall":
			
					novo_sprite(sprite_fall);
	
					lados = global.tecla_dir - global.tecla_esq;

					var acc_air    = 0.2;

					var maxspd_air    = spd * 0.8;

					hspd = lerp(hspd, lados * maxspd_air, acc_air);

					if(coyote_time>0)coyote_time--;
						
					if(global.tecla_pular 
					&& coyote_time>0
					&& pulos>0){
						
						estado = "pulo"	
					}
					
					
					var bub = instance_place(x, y, obj_bubble)
					
					if(bub>-1 && bub.disponivel){
						vspd = 0;
						estado = "montabolha"
					}else{
						if(vspd==0|| chao){
							ysc = .5;
							var p = instance_create_depth(x, y, depth+1, obj_particles);
							p.partype="fall"
							var som = snd_fall;
							audio_sound_pitch(som, random_range(0.95, 1.05));
							audio_play_sound(som,1, 0, global.volume_geral);
							estado = "idle"	
						}
					
						if(place_meeting(x, y, obj_colisoes_wallslide) && abs(hspd) > 1){
							estado = "wallslide";	
						}
										
						if(pars && !chao && !wallock) estado = "wallhold"					
					
					}
					
				break;
		
			#endregion
			
			#region estado - montabolha
			
			
				case "montabolha":
				
					var bub = instance_place(x, y, obj_bubble)
					
					hspd = 0;
					vspd = 0;
					
					if(bub>-1){
					//	x = bub.x;
					//	y = bub.y;
					}
					
					novo_sprite(sprite_bubble);

					// pega input como vetor
					var dx = global.tecla_menu_dir - global.tecla_menu_esq;
					var dy = global.tecla_menu_baixo - global.tecla_menu_cima;

					// se apertou alguma direção
					if (dx != 0 || dy != 0) {

						if (!buffer_diminui) {
						    buffer_timer = 5; // tempo pra combinar diagonal
						    buffer_diminui = true;
						}
					}
					 
						if (buffer_diminui) {

						    buffer_timer--;

						    // quando acabar o tempo, calcula a direção final
						    if (buffer_timer <= 0) {

						        var dx = global.tecla_dir - global.tecla_esq;
						        var dy = global.tecla_baixo - global.tecla_cima;

						        if (dx != 0 || dy != 0) {

						            bubble_dir = point_direction(0, 0, dx, dy);

						            bubble_timer = 12; // tempo de voo
						            estado = "bolhalanca";
						        }

						        buffer_diminui = false;
						    }
						}
					 
					 if(global.tecla_alternar_personagem){
						estado = "idle";
						bub.estado = "destruindo" 
						bub.disponivel = false;
					 }
					 
					if(global.tecla_pular){
						estado = "pulo";
						bub.estado = "destruindo"
					}
					
				break;
			
			
			#endregion
			
			#region estado - bolhalanca
			
			
				case "bolhalanca":
				
					if(bubble_timer>0){
						hspd = lengthdir_x(bubble_speed, bubble_dir);
						vspd = lengthdir_y(bubble_speed, bubble_dir);
						
						bubble_timer--;
						
					
					}else{
						estado = "idle";	
					}
				break;
			
			
			#endregion
			
			#region estado - wallhold
		
				case "wallhold":
					
					if(sprite_index!=sprite_wallhold){
						var som = snd_grab;
						audio_sound_pitch(som, random_range(0.95, 1.05));
						audio_play_sound(som,1, 0, global.volume_geral);
						novo_sprite(sprite_wallhold);
					}
	
					hspd = 0
			
					vspd = min(vspd + GRAVIDADE, 2);
					
					ang = lerp(ang, 0, .1);
					ysc = lerp(ysc, 1, .1);
					
					if(p_e){
						xsc = 1;	
					}if(p_d){
						xsc = -1;	
					}
		
					if (global.tecla_pular) {

					    var lado_parede = 0;
					    if (p_e) lado_parede =  1;
					    if (p_d) lado_parede = -1;
					    hspd = 8 * lado_parede; 
    
					    wj_timer = wj_timer_max; 
					    estado = "walljump";
					}if(global.tecla_baixo){
						wallock = true;
						estado = "idle";	
					}if(chao || !pars) estado = "idle"
				
				
				break;
		
				case "walljump":
						
					if(sprite_index!=sprite_pulo_parede){
						pulos-=1;
						vspd -= forca_pulo;
						ysc = .5
						var p = instance_create_depth(x, y, depth+1, obj_particles);
						p.partype="jump"
						novo_sprite(sprite_pulo_parede);
					}

					
					ysc = lerp(ysc, 1, .1);
					
				    if (wj_timer > 0) {
				        wj_timer--;
				      
				    } else {
						estado = "idle"
				    }



				break;
		
			#endregion
						
			#region estado - wallslide

				case "wallslide":
					
					if(sprite_index!=sprite_wllslide){
						var som = snd_slide;
						audio_sound_pitch(som, random_range(0.95, 1.05));
						audio_play_sound(som,1, 0, global.volume_geral);
						novo_sprite(sprite_wllslide);
					}

					// Se ainda tem tempo de wallrun
					if (slidetime > 0) {
												
					    slidetime--;

					    // sobe levemente no começo
					    var subida_forca = 1.5;

					    // força diminui conforme o tempo acaba (fica mais natural)
					    var fator = slidetime / slidetime_max;

					    vspd = -subida_forca * fator;

					}

					if (chao || !place_meeting(x, y,obj_colisoes_wallslide)){
					    estado = "idle";
					}

				break;

			#endregion
			
			#region estado - morte
			
				case "morte":
					
					ysc = 1;
					
					hspd = 0;
					vspd = 0;
					
					if(sprite_index!=sprite_mort){
						screen_shake(10, 5)		
						var som = snd_morte;
						audio_sound_pitch(som, random_range(0.95, 1.05));
						audio_play_sound(som,1, 0, global.volume_geral);					
						novo_sprite(sprite_mort);
					}
					
					if(image_index>image_number-1){
						room_restart();
						estado = "idle"
						global.mortes+=1;
						x = obj_controler.x;
						y = obj_controler.y;
					}
				
				break;
			
			#endregion
			
			#region estado - dialogo
			
				case "dialogo":
					
					ang = lerp(ang, 0, .2);
					ysc = lerp(ysc, 1, .2);
					
					hspd = 0;
					novo_sprite(sprite_idle)
				
				break;
			
			#endregion
			
		}

	#endregion
