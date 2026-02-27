gpu_set_fog(true, cor, 0, 0);

draw_sprite_ext(sprite_index, image_index,
				x, y, image_xscale, image_yscale,
				image_angle, c_white, alp);

gpu_set_fog(false, c_white, 0, 0);