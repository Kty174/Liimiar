var fluxp = instance_nearest(x, y, obj_flux)

if(point_distance(x, y, fluxp.x, fluxp.y) < 25){
	energia = true
	sprite_index = Shollow_flux_base_energyzed
}else{
	energia = false;	
	sprite_index = Shollow_flux_base
}

if(global.camada=="void"){
	yc = lerp(yc, 1, .1);	
	alp = lerp(alp, 1, .1);	
	
	if(sw_cd>0)sw_cd--;
	else{
		instance_create_depth(x, y, depth + 1, obj_shockwave)	
	
		sw_cd = sw_cd_max;
	}
	
}else{
	yc = lerp(yc, 0, .1);	
	alp = lerp(alp, 0, .1);		
}