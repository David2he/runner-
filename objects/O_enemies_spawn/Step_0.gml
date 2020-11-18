sprite_monster_speed += 1;

if(!global.place_meet_monster){
	x -= 10;
}
if(global.hp_enemies < cache_hp_enemies){
	cache_hp_enemies -=0.8;
}