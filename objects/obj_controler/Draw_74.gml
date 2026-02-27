if (surface_exists(application_surface)) {

    shader_set(sh_slow);

    var u_strength = shader_get_uniform(sh_slow, "strength");
    shader_set_uniform_f(u_strength, filtro_forca);

    draw_surface(application_surface, 0, 0);

    shader_reset();
}