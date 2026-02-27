var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

// ===== TROCA DE SPRITE =====

if (global.webworld) {
    if (!mudei) {
        ysc = 0;
        sprite_index = meusprite_v;
        mudei = true;
    }
} else {
    if (mudei) {
        ysc = 0;
        sprite_index = meusprite_n;
        mudei = false;
    }
}

// ===== ANIMAÇÃO DE ENTRADA =====
ysc = lerp(ysc, 1, 0.1);

// ===== PARALLAX =====
parallax_x = cam_x * 0.3; // controla profundidade
parallax_y = cam_y * 0.3;

x = cam_x
y = cam_y


