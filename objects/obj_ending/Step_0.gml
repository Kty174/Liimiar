switch(estado){

    case 0: // mensagem digitando

        if(etapa < string_length(texto)){
            etapa += vel_digitar;
        }

        if(txtalp < 1) txtalp += 0.01;

        if(etapa >= string_length(texto)){
            if(tempotxt > 0){
                tempotxt--;
            } else {
                estado = 1;
            }
        }

    break;


    case 1: // fade

        txtalp -= 0.02;

        if(txtalp <= 0){
            estado = 2;
        }

    break;


	case 2: // créditos

	    creditos_y -= vel_creditos;

	    // controla tempo da imagem
	    img_timer++;

	    if(!img_fading && img_timer > 500){
	        img_fading = true;
	        img_fade_dir = -1; // começa sumindo
	        img_timer = 0;
	    }

	    // controla fade
	    if(img_fading){
	        img_alpha += vel_fade_img * img_fade_dir;

	        // terminou de sumir
	        if(img_alpha <= 0 && img_fade_dir == -1){
	            indice_img = (indice_img + 1) mod array_length(imagens);
	            img_fade_dir = 1; // começa aparecer
				img_lado = img_lado * -1
	        }

	        // terminou de aparecer
	        if(img_alpha >= 1 && img_fade_dir == 1){
	            img_alpha = 1;
	            img_fading = false;
	        }
	    }

	    // quando créditos saírem da tela
	    if(creditos_y + array_length(lista_creditos) * 40 < 0){
	        room_goto(rm_menu);
	    }

	break;

}