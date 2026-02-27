if(place_meeting(x - 1, y, obj_player) && global.tecla_dir){
	hspd= spd;
}else if(place_meeting(x + 1, y, obj_player) && global.tecla_esq){
	hspd=-spd;	
}else{
	hspd = lerp(hspd, 0, .2);
	
	if (abs(hspd) < .2) hspd = 0;
	
}

var caixa_abaixo = instance_place(x, y + 1, obj_colisoes_caixas);

if (caixa_abaixo != noone) {
    if (caixa_abaixo.hspd != 0) {
        hspd = caixa_abaixo.hspd;
    }
}


if(!place_meeting(x, y+1, obj_colisoes)){
	vspd+=GRAVIDADE;	
}