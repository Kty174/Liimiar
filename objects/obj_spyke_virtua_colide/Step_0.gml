if(global.webworld){
	xsc = lerp(xsc, 1, .1);
	ysc = lerp(ysc, 1, .1);
	alp = lerp(alp, 1, .1);
	
	if(place_meeting(x, y, obj_player))obj_player.estado = "morte"
	
}else{
	xsc = lerp(xsc, 0, .1);
	ysc = lerp(ysc, 0, .1);	
	alp = lerp(alp, 0, .1);
}


if (!lock) {

    if (!place_meeting(x, y + spd, obj_colisoes)) {
        y += spd;
    } else {
        lock = true;
    }

} else {

    if (!place_meeting(x, y - spd, obj_colisoes)) {
        y -= spd;
    } else {
        lock = false;
    }

}