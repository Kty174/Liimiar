enum infos{
	Texto,
	Retrato,
	Lado,
	Nome,
	Som
}

npc_nome = "";

texto_grid = ds_grid_create(5, 0)

pagina = 0;

op[0] = "";
op_resposta[0] = "";
op_num = 0;
op_selecionado = 0;
op_draw = false;

pular_txt_max = 100
pular_txt = 100

inicializar = false;

audio_played_times_max = 10;
audio_played_times = 0;

caractere = 0;
alarm[0] = 1;



// Tempo
tempo = 0;
vel_ang = 0.03;
amp_ang = 3;     // 3 graus só
tamn = 0;
alpent = 0;
base_ang = 0;
enter_ang = 0;

xxsc = 0;
yysc = 0;





