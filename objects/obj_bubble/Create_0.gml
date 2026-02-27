timer = random(100);
vel_subida = 0.4;

amp_x = 8;          // largura da oscilação lateral
vel_osc = 0.03;     // velocidade da ondulação lateral

esc_amp = 0.08;     // quanto ela deforma
esc_vel = 0.06;

x_base = x;
y_base = y;

shke = false;

som_a = false;
som_v = false;
som_d = false;
som_r = false;

estado = "idle";
fade_timer = 0;
fade_max = 12; // quanto tempo ele leva pra sumir

prev_hspd = 0;
hspd = 0;
vspd = 0;
mspd = 1;

ang = 0;

dispo_cd_max = 150;
dispo_cd = 150;

destruido = false;

direcao = -1;

disponivel = true;

web = false;




