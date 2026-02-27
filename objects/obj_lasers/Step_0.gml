if(image_index<1){
	if(place_meeting(x, y, obj_player))obj_player.estado = "morte"
}



if(global.webworld){
	if(!sloworld){
		image_index = 1;
		sloworld = true;
	}
}else{
	sloworld = false;	
}
	

image_speed = 1 * global.worldspeed;
