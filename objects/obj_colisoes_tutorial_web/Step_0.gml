var player_em_cima = place_meeting(x, y, obj_player);

if (player_em_cima) {

    // define o texto baseado na etapa
    switch(etapaTutorial) {

        case 3: texto_total = "Alguns materiais só são visíveis na W.E.B"; break;
    }

    // Fade da caixa
    alpha_box = lerp(alpha_box, 1, 0.1);

    // Máquina de escrever
    if (char_index < string_length(texto_total)) {
        texto_timer += vel_texto;
        if (texto_timer >= 1) {
            texto_timer = 0;
            char_index++;
        }
    }
	
	image_index = 1;

} else {

    alpha_box = lerp(alpha_box, 0, 0.1);
    char_index = 0;
    texto_timer = 0;
	
	image_index = 0;
	
}

texto_atual = string_copy(texto_total, 1, char_index);

if(global.webworld){
	image_yscale = lerp(image_yscale, 1, .1);	
	image_alpha = lerp(image_alpha, 1, .1);	
}else{
	image_yscale = lerp(image_yscale, 0, .1);	
	image_alpha =  lerp(image_alpha,  0, .1);	
}
