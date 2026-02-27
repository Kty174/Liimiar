global.tecla_cima =						keyboard_check(ord("W"));
global.tecla_baixo =					keyboard_check(ord("S"));
global.tecla_esq =						keyboard_check(ord("A"));
global.tecla_dir =						keyboard_check(ord("D"));
global.tecla_pular =					keyboard_check_pressed(vk_space);
global.tecla_alternar_personagem =		keyboard_check_pressed(vk_shift);
global.tecla_pular_cancel =				keyboard_check(vk_space);
global.tecla_interagir =				keyboard_check(vk_control);



global.tecla_menu_cima =					keyboard_check_pressed(ord("W"));
global.tecla_menu_baixo =					keyboard_check_pressed(ord("S"));
global.tecla_menu_esq =						keyboard_check_pressed(ord("A"));
global.tecla_menu_dir =						keyboard_check_pressed(ord("D"));
global.tecla_menu_con =						keyboard_check_pressed(vk_enter);


global.inv = false;

global.mortes = 0;

tuts = false;

global.current_music = noone;

global.volume_geral		= 1;

global.worldspeed = 1;

global.webworld_unlocked = false;

global.webworld = false;
global.webworld_timer_max = room_speed * 5;
global.webworld_timer = global.webworld_timer_max;
ww_rec_cd_max = 15;
ww_rec_cd = 15;
used_webrorld =  false;

menuindex = 0;

ops_menu = [
    "Continuar",
    "Voltar no ultimo\ncheckpoint",
    "Reiniciar Nivel",
    "Idioma",
    "Sons",
    "Sair"
];


tut = 0;

filtro_forca = 0;        // valor atual (0 a 1)
filtro_target = 0;       // para onde ir AHAHAH EU SI MATO
filtro_velocidade = 0.08; // suavidade da transição

pulse_time = 0;

titulo = "aaa";
subtitulo = "aaa";

global.tempo_de_jogo = 0;

global.idindc = 0
global.idioma = ["ptbr", "en"]