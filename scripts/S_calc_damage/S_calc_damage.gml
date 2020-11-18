// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function S_calc_damage(){
	if(first_attack){
		first_attack = false;
		all_damage_given_player += first_attack_damage
		global.hp_enemies -= all_damage_given_player
	}else{
		all_damage_given_player += global.attack;
		global.hp_enemies -= global.attack;
	}
	
}