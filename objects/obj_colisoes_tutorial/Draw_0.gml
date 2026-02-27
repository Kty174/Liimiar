draw_self();

if (alpha_box > 0.01) {

    draw_set_font(fnt_dialogos_tutor);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);

    var tx = x;
    var ty = y - sprite_height - 16;

    var tw = string_width(texto_atual);
    var th = string_height(texto_atual);

    // Caixa crescendo junto
    draw_set_alpha(alpha_box * 0.8);
    draw_set_color(make_color_rgb(15,15,25)); 
    draw_roundrect(
        tx - tw/2 - padding,
        ty - th - padding,
        tx + tw/2 + padding,
        ty + padding,
        false
    );

    // Texto
    draw_set_alpha(alpha_box);
    draw_set_color(c_white);
    draw_text(tx, ty, texto_atual);

    draw_set_alpha(1);
    draw_set_color(c_white);
}