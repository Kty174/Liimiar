// --- AJUSTE DE RESOLUÇÃO ---
global.view_width  = resolution_width  / resolution_scale;
global.view_height = resolution_height / resolution_scale;

camera_set_view_size(view_camera[0], global.view_width, global.view_height);

// --- SEGUIMENTO DO PLAYER ---
if (instance_exists(view_target)) {
    var target_x = view_target.x - global.view_width  * 0.5;
    var target_y = view_target.y - global.view_height * 0.5;

    var pdist = point_distance(x, y, view_target.x, view_target.y);
    if (pdist > 25) reset = true;
    if (pdist < 200) reset = false;

    var cam_target_x = reset ? view_target.x - global.view_width / 2 
                             : lerp(camera_get_view_x(view_camera[0]), target_x, 0.2);
    var cam_target_y = reset ? view_target.y - global.view_height / 2 
                             : lerp(camera_get_view_y(view_camera[0]), target_y, 0.2);

    // --- DELIMITAÇÃO POR oRoom ---
    var sala = noone;
    with (obj_room) {
        if (point_in_rectangle(obj_cam.view_target.x, obj_cam.view_target.y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
            sala = id;
        }
    }

    if (sala != noone) {
        var x1 = sala.bbox_left;
        var y1 = sala.bbox_top;
        var x2 = sala.bbox_right;
        var y2 = sala.bbox_bottom;

        // trava a câmera dentro da área da sala
        cam_target_x = clamp(cam_target_x, x1, x2 - global.view_width);
        cam_target_y = clamp(cam_target_y, y1, y2 - global.view_height);
    } else {
        // fallback caso o player não esteja em nenhuma área de oRoom
        cam_target_x = clamp(cam_target_x, 0, room_width  - global.view_width);
        cam_target_y = clamp(cam_target_y, 0, room_height - global.view_height);
    }

    // --- SHAKE ---
    cam_target_x += random_range(-shake_length, shake_length);
    cam_target_y += random_range(-shake_length, shake_length);

    // --- APLICA POSIÇÃO SUAVEMENTE ---
    x = lerp(x, cam_target_x, 0.2);
    y = lerp(y, cam_target_y, 0.2);

    camera_set_view_pos(view_camera[0], x, y);
}


#region parallax q n sei se funciona



	var layer_ceu   = layer_get_id("bg_ceu");
	var layer_fundo = layer_get_id("bg_fundo");
	var layer_meio  = layer_get_id("bg_meio");
	var layer_f1    = layer_get_id("bg_frente");

	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);

	layer_x(layer_ceu,   cam_x);
	layer_y(layer_ceu,   cam_y);

	layer_x(layer_fundo, cam_x * 0.8);
	layer_y(layer_fundo, cam_y);

	layer_x(layer_meio,  cam_x * 0.4);
	layer_y(layer_meio,  cam_y);

	layer_x(layer_f1,    cam_x * 0.01);
	layer_y(layer_f1,    cam_y);

	
	



#endregion

