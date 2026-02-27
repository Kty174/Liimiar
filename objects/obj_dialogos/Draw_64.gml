if(inicializar){
	
	draw_set_valign(-1);
	draw_set_halign(-1);
	
	var gl = display_get_gui_width();
	var ga = display_get_gui_height();

	var xx = 0;
	var yy = ga - 200;

	var _c = c_black;
	var sprite = texto_grid[# infos.Retrato, pagina];
	var _texto = string_copy(texto_grid[# infos.Texto, pagina], 0, caractere);
	
	
	draw_set_font(fnt_dialogos);
	draw_set_color(c_white);

	draw_set_valign(-1);
	draw_set_halign(-1);

	//lado esq
	if(texto_grid[# infos.Lado, pagina] == 0){
		draw_set_alpha(.4);
		draw_rectangle_color(xx + 200, yy, gl, ga, _c, _c, _c, _c, false);
		draw_set_alpha(1);
		draw_text(xx + 216, yy - 32, texto_grid[# infos.Nome, pagina]);
		var largura_texto = gl - (xx + 260);
		draw_text_ext(
		    xx + 232,
		    yy + 32,
		    _texto,
		    24,                // espaçamento entre linhas
		    largura_texto     // largura máxima
		);
		draw_set_alpha(1);
		draw_sprite_ext(sprite, 0, 100, ga,
						3, 3, 0, c_white, 1);
	
	}
	//lado dir
	else{
		draw_set_alpha(.4);
		draw_rectangle_color(xx, yy, gl - 200, ga, _c, _c, _c, _c, false);	
		var stgw = string_width(texto_grid[# infos.Nome, pagina])
		draw_set_alpha(1);
		draw_text(gl - 216 - stgw, yy - 32, texto_grid[# infos.Nome, pagina]);
		var largura_texto = (gl - 200) - (xx + 64);

		draw_set_color(c_white);
		draw_text_ext(
		    xx + 32,
		    yy + 32,
		    _texto,
		    24,
		    largura_texto
		);
		draw_set_alpha(1);
	
		draw_sprite_ext(sprite, 0, gl - 100, ga,
					-3, 3, 0, c_white, 1);
					
	}

	if(op_draw){
		
		var _opx = xx + 32;
		var _opy = yy - 48
		var _opsep = 48
		
		var op_borda = 6
		
		op_selecionado+=global.inv_cim - global.inv_bai
		op_selecionado = clamp(op_selecionado, 0, op_num - 1);
		for(var i = 0; i < op_num; i++){
			var string_h = string_width(op[i])
			draw_sprite_ext(Sop_bg,0,_opx, _opy - (_opsep * i), (string_h  + op_borda * 2) / 16, 1, 0, c_white, 1)
			draw_text(_opx + op_borda, _opy - (_opsep * i), op[i])	
		
			if(op_selecionado==i){
				draw_sprite(Sop_seletor, 0, xx + 8, _opy - (_opsep * i) + 8)	
			}
		
		}
		
		if(global.tecla_confirmar){
			var dialogo = instance_create_layer(x, y, "controllers", obj_dialogos)
			dialogo.npc_nome= op_resposta[op_selecionado];
			
			instance_destroy();
		}
		
	}

		
		var porcentagem = 1 - (pular_txt / pular_txt_max);
		var largura_max = gl / 1.9;
		var altura = 12;

		var x1 = gl /2;
		var y1 = ga - 12;

		var largura_atual = largura_max * porcentagem;
	
		// preenchimento
		draw_set_color(c_red);
		var alpha = 1 - (pular_txt / pular_txt_max);
		draw_set_alpha(clamp(alpha, 0, 1));
		draw_rectangle(x1, y1, x1 + largura_atual, y1 + altura, false);
		draw_rectangle(x1, y1, x1 - largura_atual, y1 + altura, false);


		draw_set_alpha(1);
		draw_set_font(-1);	
		
		
		draw_set_halign(fa_center);
		
		draw_set_font(fnt_dialogos)
		
		draw_set_color(c_white);
		
		if(global.idioma[global.idindc]=="ptbr")draw_text_transformed(gl / 2, ga - 32, "<seta para baixo> - avançar dialogo", .6, .6, 0)
		else draw_text_transformed(gl / 2, ga - 32, "<key down> - continue dialogue", .6, .6, 0)
		
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_font(-1);
}
	