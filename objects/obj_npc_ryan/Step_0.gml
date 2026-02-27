var p = obj_player;
var prd = collision_line(x, y - 16, p.x, p.y - 16, obj_colisoes, true, true);
var pdst = point_distance(x, y, p.x, p.y-16);


if(pdst<50 && !prd && !falou){
	
	var di = instance_create_layer(x, y, "dialogos", obj_dialogos)	
	di.npc_nome = etut;
	falou = true;
	
}

