for(var i = 0; i < sprite_get_number(Shollow_flux); i++){
	draw_sprite_ext(Shollow_flux, i, x, y - i,
					xc, yc, ang, c_white, alp);	
}

if(ang<360)ang++;
else ang = 0;

