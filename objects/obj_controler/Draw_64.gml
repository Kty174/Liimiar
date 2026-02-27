
if(instance_exists(obj_player)){

		draw_set_alpha(1);
		
		draw_set_font(fnt_menu);
		
		#region variaveis

			var gx = display_get_gui_width();
			var gy = display_get_gui_height();

			var mgx = gx / 2;
			var mgy = gy / 2;
		
		#endregion
				
		#region barra fulera de timestop


		var bar_x = mgx;
		var bar_y = 32; // abaixo do sprite

		var bar_width = 200;
		var bar_height = 24;

		var small_height = 8;
		
		
		
		if(global.webworld_unlocked){
			draw_sprite_ext(Shud_shift, 
							global.webworld ? 1 : 0
							, bar_x - 128, bar_y + 10,
							2, 2, 0
							,c_white, 1)
		}
		
		draw_set_alpha(0.8);

		//variaveis pra calcular o progresso
		var timer_percent = clamp(global.webworld_timer / global.webworld_timer_max, 0, 1);
		var cd_percent = clamp(ww_rec_cd / ww_rec_cd_max, 0, 1);


		//fundo da barra principal
		draw_set_color(c_black);
		draw_rectangle(bar_x - bar_width/2 - 2, bar_y - 2,
		               bar_x + bar_width/2 + 2, bar_y + bar_height + 2, false);

		//barra principal
		var pulse = 0.7 + sin(pulse_time * .5) * 0.3;

		var col = make_color_rgb(
		    0,
		    200 * pulse,
		    255 * pulse
		);

		draw_set_color(col);
		draw_rectangle(bar_x - bar_width/2,
		               bar_y,
		               bar_x - bar_width/2 + bar_width * timer_percent,
		               bar_y + bar_height,
		               false);
		draw_rectangle(bar_x - bar_width/2,
		               bar_y,
		               bar_x - bar_width/2 + bar_width * timer_percent,
		               bar_y + bar_height,
		               false);

		//barra pequena (que nem minha vontade de viver HAHAHAHAHA)
		var small_y = bar_y + bar_height/2 - small_height/2;

		draw_set_color(c_dkgray);
		draw_rectangle(bar_x - bar_width/2,
		               small_y,
		               bar_x + bar_width/2,
		               small_y + small_height,
		               false);

		draw_set_color(make_color_rgb(255,0,255));
		draw_rectangle(bar_x - bar_width/2,
		               small_y,
		               bar_x - bar_width/2 + bar_width * cd_percent,
		               small_y + small_height,
		               false);


		draw_set_alpha(1);

		#endregion

		#region menu

		if(global.inv){

			var total = array_length(ops_menu);

			var center_x = gx / 2;
			var center_y = gy / 2;

			var largura = 220;
			var altura  = 50;
			var espacamento = 60;
			
			draw_set_color(c_black);
			draw_set_alpha(.5);
			
			draw_rectangle(center_x - 400, center_y - 250,
						   center_x + 400, center_y + 250, 
						   false);
						   
			draw_set_color(c_white);
			draw_set_alpha(1);				   
		

			for(var i = 0; i < total; i++){

			    var _y = center_y + (i - total/2) * espacamento;

			    var selecionado = (menuindex == i);

			    // animação suave de escala
			    var escala = selecionado ? 1.1 : 1;
			    var alpha  = selecionado ? 1 : 0.5;

			    draw_set_alpha(alpha);

			    // fundo
			    draw_set_color(selecionado ? make_color_rgb(20,40,60) : c_black);
			    draw_rectangle(
			        center_x - (largura*escala)/2,
			        _y - (altura*escala)/2,
			        center_x + (largura*escala)/2,
			        _y + (altura*escala)/2,
			        false
			    );

			    // texto
			    draw_set_color(selecionado ? c_aqua : c_white);
			    draw_set_halign(fa_center);
			    draw_set_valign(fa_middle);

			    draw_text_transformed(
			        center_x,
			        _y,
			        ops_menu[i],
			        escala,
			        escala,
			        0
			    );


				draw_set_color(c_white)
			    draw_text_transformed(
			        center_x,
			        center_y - 275,
			        "Jogo Pausado",
			        2,
			        2,
			        0
			    );

				if(menuindex==3){
					draw_sprite(Shud_idiomas, global.idindc, center_x, center_y+ 200)	
				}else if(menuindex==4){
					draw_text(center_x, center_y+ 200, string("<") 
													 + string(ceil(global.volume_geral * 100))
													 + string(">"));	
				}

			    draw_set_alpha(1);
			}

			draw_set_halign(-1);
			draw_set_valign(-1);
		}

		#endregion
	
		draw_set_font(-1);
		draw_set_color(c_white)
		draw_set_alpha(1);

	
}