var gx = display_get_gui_width();
var gy = display_get_gui_height();

var mgx = gx/2;
var mgy = gy/2;

draw_set_font(fnt_dialogos);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (global.mortes == 0) {
    draw_set_color(make_color_rgb(120, 255, 255));
} else {
    draw_set_color(c_white);
}
if(estado == 0 || estado == 1){

    draw_set_alpha(txtalp);

    var _txt = string_copy(texto, 1, floor(etapa));
    draw_text(mgx, mgy, _txt);

}

if(estado == 2){

    // imagem de fundo suave
	draw_sprite_ext(imagens[indice_img], 0, mgx + 350 * img_lado, mgy,
					1.5, 1.5, 0, c_white, img_alpha); // exemplo lado direito
	draw_set_alpha(1);

    draw_set_valign(fa_top);

    var espacamento = 40;

    for(var i = 0; i < array_length(lista_creditos); i++){
        draw_text(mgx, creditos_y + i * espacamento, lista_creditos[i]);
    }

}


draw_set_color(c_white);