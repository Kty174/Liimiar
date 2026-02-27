if(partype == "fall")novo_sprite(Shollow_jump_particles);
if(partype == "jump")novo_sprite(Shollow_fall_particles);
if(partype == "run")novo_sprite(Shollow_run_particles);

if(image_index>image_number-1){
	instance_destroy();	
}
