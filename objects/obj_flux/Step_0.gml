if(!seguindo){
	
	var raio = 60;
	var forca = 0.5;

	with (obj_flux)
	{
	    if (id != other.id)
	    {
	        var dist = point_distance(x, y, other.x, other.y);
        
	        if (dist < raio && dist > 0)
	        {
	            var dir = point_direction(x, y, other.x, other.y);
	            var intensidade = (raio - dist) / raio;
            
	            other.x += lengthdir_x(intensidade * forca, dir);
	            other.y += lengthdir_y(intensidade * forca, dir);
	        }
	    }
	}

	
	
	if(point_distance(x, y, obj_player_limbo.x, obj_player_limbo.y) < 50){
		if(global.tecla_interagir)seguindo = true;
	}
}else{
		if(global.tecla_interagir)seguindo = false;	
}

if(seguindo){
	x = lerp(x, obj_player_limbo.x, .1);	
	y = lerp(y, obj_player_limbo.y - 16, .1);	
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


