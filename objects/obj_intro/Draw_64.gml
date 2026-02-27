#region variaveis

	var gx = display_get_gui_width();
	var gy = display_get_gui_height();

	var mgx = gx / 2;
	var mgy = gy / 2;
		
#endregion


draw_set_halign	(fa_center)
draw_set_valign	(fa_middle)
draw_set_alpha	(txtalp)
draw_set_color	(c_white)
draw_set_font	(fnt_dialogos)

var _txt = string_copy(texto, 1, etapa);
draw_text(mgx, mgy, _txt);

draw_set_halign	(-1)
draw_set_valign	(-1)
draw_set_alpha	(1)
draw_set_color	(c_white)
draw_set_font	(-1)
