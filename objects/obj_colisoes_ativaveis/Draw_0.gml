if(todos_pressionados){
	draw_sprite_ext(Scolisao, 0, x, y, 
	image_xscale, image_yscale,
	image_angle, c_white, image_alpha)
}
else{
	draw_sprite_ext(Scolisao, 0, x, y, 
	image_xscale, image_yscale,
	image_angle, make_color_rgb(100, 100, 100), image_alpha)
}