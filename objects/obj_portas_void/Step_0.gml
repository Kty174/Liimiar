spd = .5 * global.worldspeed;

if (aberto) {
    image_yscale -= spd;
    if (image_yscale < 0) image_yscale = 0;
} else {
    image_yscale += spd;
    if (image_yscale > ysc_base) image_yscale = ysc_base;
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