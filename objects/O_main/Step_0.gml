if(!global.place_meet_monster){
	layer_hspeed(lay_bg_floor, -(global.speed_player * 2));
	layer_hspeed(lay_bg_midle, -(global.speed_player * 2));
	layer_hspeed(lay_bg_sky, -(global.speed_player * 2));

	if((alarm[0] == -1) &(!instance_exists(O_enemies_spawn))){
		alarm[0]= global.spawn_enemies_apparition;
	}
	sprite_index = s_player_run;
}

if(place_meeting(x + 40, y, O_enemies_spawn) && first_attack){
	S_first_contact();
	get_out_sprite = true;
	start_basic_attack = true;
}

if(place_meeting(x + 15, y, O_enemies_spawn)){
	global.place_meet_monster = true;
	
	if(alarm[1] == -1){
		alarm[1]= global.attack_speed;
		//global.obj_Alpha = 1;
	}
	else{
		if(global.obj_Alpha > 0){
			global.obj_Alpha -=0.08;
		}
	}
	layer_hspeed(lay_bg_floor, 0);
	layer_hspeed(lay_bg_midle, 0);
	layer_hspeed(lay_bg_sky, 0);
}


if(start_basic_attack){
	image_speed = 1;
	sprite_index = s_player_b_attack;
	if((image_index > 4 || image_index <=5) && (get_out_sprite)){
		S_calc_damage();
		get_out_sprite = false;
		global.obj_Alpha = 1;
	}else if(image_index > 5){
		start_basic_attack = false;
		image_index =0;
		image_speed = 0;
		}
	}
	