audio_play_sound(snd_Bounce, 1, false);

direction = point_direction(
	other.x,
	other.y,
	x,
	y
);
if (speed < max_spd) speed += 0.1;