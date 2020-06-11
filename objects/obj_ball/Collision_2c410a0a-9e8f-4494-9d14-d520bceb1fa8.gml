audio_play_sound(snd_Break, 1, false);
move_bounce_all(true);

global.player_score += 15;
if(global.player_score > global.high_score) {
	global.high_score = global.player_score;
}
if (speed < max_spd) speed += 0.1;

instance_destroy(other);