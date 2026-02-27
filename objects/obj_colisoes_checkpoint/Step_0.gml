if(place_meeting(x, y, obj_player)
&& !place_meeting(x, y, obj_controler)){
	obj_controler.x = obj_player.x;
	obj_controler.y = obj_player.y;
}