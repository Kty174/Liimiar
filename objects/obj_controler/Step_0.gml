global.tecla_cima =						keyboard_check(vk_up)	 || keyboard_check(ord("W"))
global.tecla_baixo =					keyboard_check(vk_down)	 || keyboard_check(ord("S"))
global.tecla_esq =						keyboard_check(vk_left)	 || keyboard_check(ord("A"))
global.tecla_dir =						keyboard_check(vk_right) || keyboard_check(ord("D"))
global.tecla_pular =					keyboard_check_pressed(ord("C")) || keyboard_check_pressed(vk_space);
global.tecla_pular_cancel =				keyboard_check(ord("C")) || keyboard_check(vk_space);
global.tecla_alternar_personagem =		keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);
global.tecla_interagir =				keyboard_check_pressed(vk_control);

global.tecla_restart =						keyboard_check(ord("R"));

global.op_menu = keyboard_check_pressed(vk_escape);

global.botao_atk =						mouse_check_button_pressed(mb_left)

global.tecla_menu_cima =					keyboard_check_pressed(vk_up)		|| keyboard_check_pressed(ord("W"));
global.tecla_menu_baixo =					keyboard_check_pressed(vk_down)		|| keyboard_check_pressed(ord("S"));
global.tecla_menu_esq =						keyboard_check_pressed(vk_left)		|| keyboard_check_pressed(ord("A"));
global.tecla_menu_dir =						keyboard_check_pressed(vk_right)	|| keyboard_check_pressed(ord("D"));
global.tecla_menu_con =						keyboard_check_pressed(vk_enter);

#region reiniciar fase

	if(global.tecla_restart){
		global.webworld = false;
		global.webworld_timer = global.webworld_timer_max;
		ww_rec_cd = ww_rec_cd_max
		obj_player.x = x;
		obj_player.y = y;
		obj_player.estado = "idle";
		room_restart();
	}

#endregion

#region abrir e fechar inventario
	
	if(!instance_exists(obj_dialogos) && (instance_exists(obj_player))){
		if(global.op_menu){
			if(!global.inv){
				obj_player.estado = "dialogo"
				global.inv = true;
			}else{
				obj_player.estado = "idle"
				global.inv = false;			
			}
		}
	}

#endregion

#region MENU

if (global.inv) {

    var total = array_length(ops_menu);

    // Navegação
    if (global.tecla_menu_baixo) {
        menuindex = (menuindex + 1) mod total;
        audio_play_sound(snd_selecao_menu, 0, false, global.volume_geral);
    }

    if (global.tecla_menu_cima) {
        menuindex = (menuindex - 1 + total) mod total;
        audio_play_sound(snd_selecao_menu, 0, false, global.volume_geral);
    }

    // Confirmação
    if (global.tecla_menu_con) {

        switch (menuindex) {

            case 0: // Continuar
                global.inv = false;
                obj_player.estado = "idle";
                audio_play_sound(snd_menu_expand, 0, false, global.volume_geral);
            break;

            case 1: // Voltar checkpoint
                // você pode colocar aqui sua lógica de checkpoint
                obj_player.x = x;
				obj_player.y = y;
                audio_play_sound(snd_menu_expand, 0, false, global.volume_geral);
            break;

            case 2: // Reiniciar nível
                room_restart();		
				switch (room) {

				    case rm_tutorial:
				        obj_player.x = 96;
				        obj_player.y = 320;
				    break;

				    case rm_1:
				        obj_player.x = 96;
				        obj_player.y = 1760;
				    break;

				    case rm_2:
				        obj_player.x = 128;
				        obj_player.y = 1056;
				    break;

				    case rm_3:
				        obj_player.x = 128;
				        obj_player.y = 1408;
				    break;

				    case rm_4:
				        obj_player.x = 96;
				        obj_player.y = 1408;
				    break;
				}
				x = obj_player.x;
				y = obj_player.y;
				
            break;

            case 3: // Idioma
                global.idindc = (global.idindc + 1) mod array_length(global.idioma);
                audio_play_sound(snd_menu_expand, 0, false, global.volume_geral);
            break;

            case 5: // Sair

				if(global.tecla_menu_con && !instance_exists(obj_transicao)){ 
					global.inv = false; 
					if(instance_exists(obj_dialogos))instance_destroy(obj_dialogos); 
					var t = instance_create_layer(x, y, "huds", obj_transicao) 
					t.destino = rm_menu; 
					audio_play_sound(snd_menu_expand, 0, 0, global.volume_geral) 
					}

            break;
        }
    }

    // Ajuste de volume separado (menuindex 4)
    if (menuindex == 4) {

        if (global.tecla_menu_dir) {
            global.volume_geral = clamp(global.volume_geral + 0.05, 0, 1);
            audio_play_sound(snd_selecao_menu, 0, false, global.volume_geral);
        }

        if (global.tecla_menu_esq) {
            global.volume_geral = clamp(global.volume_geral - 0.05, 0, 1);
            audio_play_sound(snd_selecao_menu, 0, false, global.volume_geral);
        }

    }

}

#endregion

#region tempo de jogo

if(room!=rm_menu && room!=rm_opening){
	if(!global.inv)global.tempo_de_jogo += 1;		
}

if (room == rm_menu) {
    global.tempo_de_jogo = 0;
}

#endregion

#region usar swap

if (global.tecla_alternar_personagem && !instance_exists(obj_dialogos)
&& instance_exists(obj_player)) {
	if(global.webworld_timer>0){
		screen_shake(25, 1)

		var som = snd_warp;
		audio_sound_pitch(som, random_range(0.95, 1.05));
		audio_play_sound(som,1, 0, global.volume_geral);

		global.webworld = !global.webworld;	
	}
}


#endregion

#region zerar mortes

	if(room==rm_menu)global.mortes = 0;

#endregion

if(instance_exists(obj_player)){
	if(obj_player.estado == "morte"){
		global.webworld = false;
		global.webworld_timer = global.webworld_timer_max;
		ww_rec_cd = ww_rec_cd_max;
	}
}

if(global.webworld){
	
	if(instance_exists(obj_player)) obj_player.spd = obj_player.spd_ww
	
	filtro_target = 1;
	
	used_webrorld = true
	
	global.worldspeed = .01;
	ww_rec_cd = ww_rec_cd_max;
	
	if(global.webworld_timer>0)global.webworld_timer--;
	else{
		global.webworld = false;	
	}
}else{
		
	if(instance_exists(obj_player)) obj_player.spd = obj_player.spd_nw
		
	filtro_target = 0;
		
	global.worldspeed = 1;
	
	if(ww_rec_cd>0){
		ww_rec_cd--;	
	}else{
		if(global.webworld_timer<global.webworld_timer_max)global.webworld_timer+=2;
	}
}

pulse_time += 0.1 * global.worldspeed;
filtro_forca = lerp(filtro_forca, filtro_target, filtro_velocidade);