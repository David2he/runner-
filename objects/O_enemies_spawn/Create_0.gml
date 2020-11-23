randomize();
var _random_enemies = round(random_range(0, array_length_1d(global.array_stat)-1));

enemies_sprite = global.array_stat[_random_enemies][0];
sprite_monster_speed = 0;


global.hp_enemies_max = global.array_stat[_random_enemies][1];
global.hp_enemies = global.hp_enemies_max;

cache_hp_enemies = global.hp_enemies_max;

image_speed = 0.5;