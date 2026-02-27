audio_master_gain(global.volume_geral);

if(room!=rm_menu && room!=rm_opening && room != rm_ending){
	if(!instance_exists(obj_player)){
		instance_create_layer(x, y, "meio", obj_player);	
	}
}




if(room==rm_menu || room==rm_opening || room==rm_ending){
	if(instance_exists(obj_player)){
		instance_destroy(obj_player);	
	}
}



