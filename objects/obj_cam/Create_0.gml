resolution_width = 1280;
resolution_height = 720;
resolution_scale = 2;
view_target = obj_player;
global.view_width = resolution_width / resolution_scale;
global.view_height = resolution_height / resolution_scale;
window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale)
surface_resize(application_surface,global.view_width * resolution_scale, global.view_height * resolution_scale)

shake_length = 0;
shake_time = 0;

reset = false;




