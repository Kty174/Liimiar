global.tecla_cima =						keyboard_check(ord("W"));
global.tecla_baixo =					keyboard_check(ord("S"));
global.tecla_esq =						keyboard_check(ord("A"));
global.tecla_dir =						keyboard_check(ord("D"));
global.tecla_pular =					keyboard_check_pressed(vk_space);
global.tecla_alternar_personagem =		keyboard_check_pressed(vk_shift);
global.tecla_interagir =				keyboard_check(vk_control);

global.camadas = ["void", "life", "death"];
global.camada_index = 0; // começa no void
global.camada = global.camadas[global.camada_index];


