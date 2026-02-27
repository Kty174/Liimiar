repeat(abs(hspd)){
	 
	if(place_meeting(x+sign(hspd), y, obj_colisoes)){
	if(!place_meeting(x + sign(hspd), y -1, obj_colisoes)){
		y--;	
	}
	}else{
	if(!place_meeting(x+sign(hspd), y + 1, obj_colisoes)){
		if(place_meeting(x+sign(hspd), y + 2, obj_colisoes)){
			y++;	
		}
	}
	}
	 
if(place_meeting(x+sign(hspd), y, obj_colisoes)){
	hspd = 0;
	break;
}else{
	x+=sign(hspd);	
}
}

repeat(abs(vspd)){
if(place_meeting(x, y+sign(vspd), obj_colisoes)){
	vspd = 0;
	break;
}else{
	y+=sign(vspd);	
}
}
	
