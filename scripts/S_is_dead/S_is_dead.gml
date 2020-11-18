function S_is_dead(){
	if((is_dead) || (all_damage_given_player >= global.hp_enemies_max)){
		instance_destroy(O_enemies_spawn);
		allowed_to_attack = false;
		global.place_meet_monster = false;
		all_damage_given_player = 0;
		first_attack_damage = 0;
		first_attack = true;
		global.obj_Alpha = 0;
	}
}