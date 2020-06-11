audio_play_sound(snd_Bounce, 1, false);

if(bbox_left < 0 or bbox_right > room_width) {
	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
	hspeed *= -1;	
}

if(bbox_top <0) {
	vspeed *= -1;
	y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);
}

if(bbox_bottom > room_height) {
	global.player_lives -= 1;
	instance_destroy();
	
	if(global.player_lives <= 0){
		obj_control.gameover = true;
	} else {
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
	}	
}