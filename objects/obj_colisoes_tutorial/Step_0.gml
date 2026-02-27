var player_em_cima = place_meeting(x, y, obj_player);

if (player_em_cima) {

	    // define o texto baseado na etapa
	if(global.idioma[global.idindc] == "ptbr"){

	    switch(etapaTutorial){

			case 0:
				texto_total = "Pressione\n[Seta Esquerda] ou [Seta Direita]\npara se mover\n" +
				                "e [C] para pular";
			break;

			case 1:
				texto_total = "Pule contra uma parede para segurar,\n" +
				                "enquanto segura, pressione [C] para pular";
			break;
			
			case 1.5:
				texto_total = "Quando estiver segurando uma parede,\n" +
				                "pressione [Seta Para Baixo] para se soltar";
			break;

			case 2:
				texto_total = "Pressione [X] para acessar o mundo W.E.B";
			break;

	        case 3:
	            texto_total = "Alguns materiais só são visíveis no mundo W.E.B";
	        break;

	        case 4:
	            texto_total = "E outros materiais\nsó são visíveis no mundo normal";
	        break;

	        case 5:
	            texto_total = "Botões e bases de fluxo podem ser usados\n" +
	                          "para abrir portas";
	        break;

	        case 6:
	            texto_total = "O tempo no mundo normal desacelera\n" +
	                          "quando você está no W.E.B";
	        break;

	        case 7:
	            texto_total = "Você pode deslizar\n" +
	                          "em certos tipos de parede";
	        break;

	        case 8:
	            texto_total = "A velocidade e a distância que você percorre\n" +
	                          "variam entre o mundo normal e o W.E.B\n";
	        break;
			
	    }

	}else{

	    switch(etapaTutorial){

			case 0:
			    texto_total = "Use [Left Arrow] or [Right Arrow] to move\n" +
			                  "and [C] to jump";
			break;

			case 1:
			
			break;

			case 1.5:
			    texto_total = "While holding onto a wall,\n" +
			                  "press [Down Arrow] to drop down";
			break;

			case 2:
			    texto_total = "Press [X] to access the W.E.B world";
			break;

			case 3:
			    texto_total = "Some materials are only visible\n" +
			                  "in the W.E.B world";
			break;

			case 4:
			    texto_total = "And some materials\n" +
			                  "are only visible in the normal world";
			break;

			case 5:
			    texto_total = "Buttons and flow bases can be used\n" +
			                  "to open doors";
			break;

			case 6:
			    texto_total = "Time in the normal world slows down\n" +
			                  "while you are in the W.E.B";
			break;

			case 7:
			    texto_total = "You can slide\n" +
			                  "on certain types of walls";
			break;

			case 8:
			    texto_total = "Your speed and the distance you travel\n" +
			                  "vary between the normal world and the W.E.B";
			break;

	    }

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