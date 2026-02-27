// ===== CONTROLE =====
estado = 0; 
// 0 = mensagem
// 1 = fade
// 2 = créditos

txtalp = 0;
etapa = 0;
vel_digitar = 0.3;

tempotxt = 200;

var tempo_formatado = formatar_tempo(global.tempo_de_jogo);

var tempo_formatado = formatar_tempo(global.tempo_de_jogo);

// ===== MENSAGEM MORTES PT =====
var mensagem_mortes_pt;

if (global.mortes == 0) {
    mensagem_mortes_pt =
    "...\n" +
    "Espera.\n" +
    "Você não morreu nenhuma vez?\n\n" +
    "Isso não era pra acontecer.\n" +
    "Mas eu acho que isso diz muito sobre você.\n\n" +
    "Impecável.\n\n";
}
else {
    mensagem_mortes_pt =
    "Você caiu, mas se reergueu " + string(global.mortes) + " vezes.\n";
}

// ===== TEXTO PT =====
textobr =
"Você conseguiu.\n\n" +
"Não foi sorte.\n" +
"Foi cada tentativa, cada queda,\n" +
"cada vez que você decidiu continuar.\n\n" +
mensagem_mortes_pt +
"E levou " + tempo_formatado + " para chegar até aqui.\n\n" +
"Parabéns por alcançar o topo.\n" +
"Obrigada por jogar <3";


// ===== MENSAGEM MORTES EN =====
var mensagem_mortes_en;

if (global.mortes == 0) {
    mensagem_mortes_en =
    "...\n" +
    "Wait.\n" +
    "You didn't fall even once?\n\n" +
    "That wasn't supposed to happen.\n" +
    "But I guess that says a lot about you.\n\n" +
    "Flawless.\n\n";
}
else {
    mensagem_mortes_en =
    "You fell " + string(global.mortes) + " times.\n";
}

// ===== TEXTO EN =====
textoen =
"You made it.\n\n" +
"It wasn't luck.\n" +
"It was every fall,\n" +
"every attempt,\n" +
"every time you chose to continue.\n\n" +
mensagem_mortes_en +
"Time: " + tempo_formatado + "\n\n" +
"Thank you for playing <3";

// ===== CRÉDITOS =====
creditos_y = display_get_gui_height();
vel_creditos = 0.5;

lista_creditos = [
    "LIMIARE",
    "",
    "Programação",
    "Gabriela",
    "",
    "Arte",
    "Gabriela",
    "",
    "Design",
    "Gabriela",
    "",
    "Musicas",
    "Ludwig van Beethoven",
    "Mentira, foi Gabriela também",
    "Obrigada por jogar <3"
];

// ===== IMAGENS =====
imagens = [spr_arte_ending_1, Snpc_ryan_retrato, Scolisao]; 
indice_img = 0;
img_timer = 0;