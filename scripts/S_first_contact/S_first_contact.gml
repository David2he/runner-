function S_first_contact(){
	first_attack_damage += global.attack * (global.speed_player / 2);
	if(first_attack_damage >= global.hp_enemies_max){
		is_dead = true;
	}
}