if (global.webworld) {
	
	image_alpha = lerp(image_alpha, 1, .1);
	
	if(place_meeting(x, y, obj_player))obj_player.estado = "morte"
	
    var alvo_x = obj_player.x;
    var alvo_y = obj_player.y - 16;

    var dist_player = point_distance(x, y, alvo_x, alvo_y);
    var dist_spawn = point_distance(x, y, xinicial, yinicial);


    if (!voltando){

        if (dist_player < 150) {
            var dir = point_direction(x, y, alvo_x, alvo_y);
            hspd = lengthdir_x(spd, dir);
            vspd = lengthdir_y(spd, dir);
        } else {
            hspd = 0;
            vspd = 0;
        }

        if (dist_spawn > 500) {
            voltando = true;
        }

    } else {

        var dir_spawn = point_direction(x, y, xinicial, yinicial);

        hspd = lengthdir_x(spd, dir_spawn);
        vspd = lengthdir_y(spd, dir_spawn);

        if (dist_spawn < 15) {
            voltando = false;
        }
    }

    x += hspd;
    y += vspd;

} else {
	
	image_alpha = lerp(image_alpha, 0, .1);
	
    x = xinicial;
    y = yinicial;
}