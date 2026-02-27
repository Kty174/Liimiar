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

        // troca imagem a cada 4 segundos
        img_timer++;
        if(img_timer > 240){
            img_timer = 0;
            indice_img = (indice_img + 1) mod array_length(imagens);
        }

        // quando créditos saírem da tela
        if(creditos_y + array_length(lista_creditos) * 40 < 0){
            room_goto(rm_menu);
        }

    break;
}