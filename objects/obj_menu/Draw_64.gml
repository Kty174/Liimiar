var qtd = array_length(menu);

var atual = indice;
var anterior = (indice - 1 + qtd) mod qtd;
var proximo = (indice + 1) mod qtd;

var gx = display_get_gui_width() 
var gy = display_get_gui_height()

var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() - 128;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


// glow
draw_set_alpha(0.25);
draw_sprite_ext(Smenu_loho_bri, 0, cx, cy/2,
    logo_xsc * 1.1, logo_ysc * 1.1, 0, c_aqua, .5);

draw_set_alpha(1);
draw_sprite_ext(Smenu_loho, 0, cx, cy/2,
    logo_xsc, logo_ysc, 0, c_white, 1);
	

if(indice==1){
	if(global.idioma[global.idindc] == "ptbr"){
		draw_text(cx, cy + 64, string("<") 
							 + string("Nivel -") + string(lvlnum) +string("/") + string(lvlmax)
							 + string(">"))	
	}else{
		draw_text(cx, cy + 64, string("<") 
							 + string("Level -") + string(lvlnum) +string("/") + string(lvlmax)
							 + string(">"))			
	}
}

if(indice==2){
	draw_sprite(Shud_idiomas, global.idindc,cx, cy + 64)	
}

if(indice == 3){
	draw_text(cx, cy + 64, string("<") 
						 + string(ceil(global.volume_geral * 100))
						 + string(">"))	
}


draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(global.idioma[global.idindc]=="ptbr"){
draw_text_transformed(gx / 2, gy - 32, 
"[Setas] - Controlar menu [Enter] - Selecionar opção",
.8, 
.8, 0)
}else{
draw_text_transformed(gx / 2, gy - 32, 
"[Arrows] - Controll menu [Enter] - Select option",
.8,
.8, 0)	
}



/// -------- ANTERIOR --------
draw_set_alpha(0.4);
draw_set_color(c_white);
draw_text_transformed(
    cx - 250,   // posição lateral
    cy,
    menu[anterior],
    0.7,        // escala menor
    0.7,
    0
);

/// -------- PRINCIPAL --------
draw_set_alpha(1);
draw_set_color(make_color_rgb(54,223,243));
draw_text_transformed(
    cx,
    cy,
    "> " + menu[atual] + " <",
    1.2,        // maior
    1.2,
    0
);

/// -------- PRÓXIMO --------
draw_set_alpha(0.4);
draw_set_color(c_white);
draw_text_transformed(
    cx + 250,
    cy,
    menu[proximo],
    0.7,
    0.7,
    0
);

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_valign(-1);
draw_set_halign(-1);