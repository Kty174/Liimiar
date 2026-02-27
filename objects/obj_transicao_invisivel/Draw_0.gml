draw_self();

if(place_meeting(x, y, obj_player)){
	

	
	if(trocaspr>0)trocaspr--;
	else{
		if(spr=0)spr = 1;
		else spr = 0;
		trocaspr = trocaspr_max	
	}

	draw_sprite(Shud_confirmacao, spr,x + 16, y - 32)
	
}


//sdraw_text(x, y - 32, trocaspr)
//sdraw_text(x, y - 64, spr)


