
#region 1 - DETECÇÃO PLAYER


var alvo_x = obj_player.x;
var alvo_y = obj_player.y - 16;
var dist_player = point_distance(x, y, alvo_x, alvo_y);

if (place_meeting(x, y, obj_player) && !global.webworld){
    obj_player.estado = "morte";
}

#endregion

#region 2 - FÍSICA BASE


spd = max(spd_base * global.worldspeed, 0.8);

if (!place_meeting(x, y + 1, obj_colisoes)) {
    vspd += GRAVIDADE;
}

#endregion

#region 3 - IA (PATRULHAR)


//atrulha estilo Goomba
hspd = dir_patrol * spd;

if (place_meeting(x + sign(hspd), y - 1, obj_colisoes)) {
	if(place_meeting(x + sign(hspd), y - 2, obj_colisoes)){
		dir_patrol *= -1;
	}
}

#endregion

#region 4 - VISUAL


if (hspd != 0) {
    novo_sprite(Ssoldado_walk);
    image_xscale = sign(hspd);
} else {
    novo_sprite(Ssoldado);
}

#endregion