if(!mudou){
	
	if(alp<1)alp+=.05;
	else{
		if(timer>0)timer--;
		else{
			if(room_exists(destino))room_goto(destino)
				if(instance_exists(obj_player)){
					obj_player.x = xx;
					obj_player.y = yy;
				}
			mudou = true;	
		}
	}
	
}
else{
	
	if(alp>0)alp-=.01
	else instance_destroy();
	
}	
