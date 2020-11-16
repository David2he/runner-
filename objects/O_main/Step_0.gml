if(!global.place_meet_monster){
	layer_hspeed(lay_bg_floor, -(global.speed_player * 2));
	layer_hspeed(lay_bg_midle, -(global.speed_player * 2));
	layer_hspeed(lay_bg_sky, -(global.speed_player * 2));

	if((alarm[0] == -1) &(!instance_exists(O_enemies_spawn))){
		alarm[0]= global.spawn_enemies_apparition;
	}
}


if(place_meeting(x + 15, y, O_enemies_spawn)){
	global.place_meet_monster = true;
		/// FIRST ATTACK
		
	if(!first_attack){
		start_basic_attack = true;
		//sprite_index = s_player_b_attack;
		//reset_time_auto = true;
		//attack_repeat = true;
		//count_hit = 1;
	}
	
	layer_hspeed(lay_bg_floor, 0);
	layer_hspeed(lay_bg_midle, 0);
	layer_hspeed(lay_bg_sky, 0);
	
		if(alarm[1] == -1){
		alarm[1]= global.attack_speed;
		global.obj_Alpha = 1;
	}
	else{
		if(global.obj_Alpha > 0){
			global.obj_Alpha -=0.08;
		}
	}
}
