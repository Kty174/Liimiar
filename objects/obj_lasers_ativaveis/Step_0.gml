if(image_index<1){
	if(place_meeting(x, y, obj_player))obj_player.estado = "morte"
}


image_speed = 1 * global.worldspeed;

if(!aberto){
	image_index = 1;	
}


if (ativador != -1)
{
    var total = 0;
    var ativos = 0;

    with (ativador)
    {
        if (identificacao == other.identificador)
        {
            total++;

            if (ativado)
            {
                ativos++;
            }
        }
    }

    aberto = (total > 0 && ativos == total);
}