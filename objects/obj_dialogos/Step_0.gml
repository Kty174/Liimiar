if(!inicializar){
	scr_textos();
	inicializar = true;
}

if(global.tecla_baixo) pular_txt--;
else{
	pular_txt = lerp(pular_txt, pular_txt_max, .1);
}	

if(global.tecla_menu_baixo){
	xxsc = 1;
	yysc = 1;
	if(caractere<string_length(texto_grid[# infos.Texto, pagina])){
		caractere=string_length(texto_grid[# infos.Texto, pagina])
	}else{	
		if(pagina<ds_grid_height(texto_grid) -1){
			alarm[0] = 1;
			caractere = 0;
			pagina++;		
		}else{
			if(op_num != 0){
				op_draw = true;				
			}else{
			obj_player.estado = "idle";
			instance_destroy();	
			}
		}
	}
}

if(pular_txt<=0){
	obj_player.estado = "idle";
	global.player_pode_agir = true;
	instance_destroy();	
}

	
xxsc = lerp(xxsc, 2, .05);
yysc = lerp(yysc, 2, .05);
	
tempo += 1;
enter_ang = base_ang + sin(tempo * vel_ang) * amp_ang;