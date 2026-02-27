function screen_shake(force, time){
	with(obj_cam){
		shake_length = force;
		shake_time = time
		alarm[0] = shake_time;
	}
}
