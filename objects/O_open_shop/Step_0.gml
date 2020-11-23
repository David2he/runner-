if(position_meeting(mouse_x, mouse_y, id)){
    if(image_index > 8 || image_index = 9){
		image_speed = 0
		image_index = 8;
	}else{
		image_speed = 0.5;
	}
	if(mouse_check_button_pressed(mb_left)){
		global.open_shop_frame = !global.open_shop_frame;
	}
}
else{
	image_index = 0;
	image_speed = 0;
}

