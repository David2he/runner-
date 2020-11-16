draw_sprite(s_health_bar_border_back, 0,  x , y -(sprite_get_height(enemies_sprite)+25));
draw_sprite_stretched(s_health_bar, 0, x -(sprite_get_width(s_health_bar)/2), y -(sprite_get_height(enemies_sprite)+40), (global.hp_enemies/global.hp_enemies_max) * sprite_get_width(s_health_bar), sprite_get_height(s_health_bar));
if(global.obj_Alpha >0){
	shader_set(SH_hit);
	draw_sprite_stretched_ext(s_health_bar, 0, x -(sprite_get_width(s_health_bar)/2),  y -(sprite_get_height(enemies_sprite)+40), (cache_hp_enemies/global.hp_enemies_max) * sprite_get_width(s_health_bar), sprite_get_height(s_health_bar),global.obj_color ,global.obj_Alpha);
	shader_reset();
}
draw_sprite(s_health_bar_border_front, 0,  x, y -(sprite_get_height(enemies_sprite)+25));

draw_sprite_ext(enemies_sprite, sprite_monster_speed, x,y,image_xscale, image_yscale, image_angle, image_blend, image_alpha);
