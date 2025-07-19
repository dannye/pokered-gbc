Music_BoosterPack:
	channel_count 3
	channel 1, Music_BoosterPack_Ch1
	channel 2, Music_BoosterPack_Ch2
	channel 3, Music_BoosterPack_Ch3

Music_BoosterPack_Ch1:
	stereo_panning TRUE, TRUE
	vibrato 20, 3, 3
	octave 4
	duty_cycle 1
	speed 1
	volume_envelope 10, 8
	note D#, 5
	volume_envelope 3, 7
	note D#, 1
	volume_envelope 10, 8
	note G_, 5
	volume_envelope 3, 7
	note G_, 1
	volume_envelope 10, 8
	note A#, 5
	volume_envelope 3, 7
	note A#, 2
	volume_envelope 10, 8
	note F_, 5
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 10, 8
	note A_, 5
	volume_envelope 3, 7
	note A_, 1
	inc_octave
	volume_envelope 10, 8
	note C_, 5
	volume_envelope 3, 7
	note C_, 2
	dec_octave
	note_type 2, 10, 8
	note B_, 16
	note_type 1, 10, 8
	note B_, 6
	volume_envelope 3, 7
	note B_, 9
	sound_ret

Music_BoosterPack_Ch2:
	stereo_panning TRUE, TRUE
	vibrato 20, 3, 3
	octave 3
	duty_cycle 1
	speed 1
	volume_envelope 9, 8
	note A#, 5
	volume_envelope 2, 7
	note A#, 1
	inc_octave
	volume_envelope 9, 8
	note D#, 5
	volume_envelope 2, 7
	note D#, 1
	volume_envelope 9, 8
	note G_, 5
	volume_envelope 2, 7
	note G_, 2
	volume_envelope 9, 8
	note C_, 5
	volume_envelope 2, 7
	note C_, 1
	volume_envelope 9, 8
	note F_, 5
	volume_envelope 2, 7
	note F_, 1
	volume_envelope 9, 8
	note A_, 5
	volume_envelope 2, 7
	note A_, 2
	note_type 2, 9, 8
	note G_, 16
	note_type 1, 9, 8
	note G_, 6
	volume_envelope 2, 7
	note G_, 9
	sound_ret

Music_BoosterPack_Ch3:
	stereo_panning TRUE, TRUE
	fade_wave 11
	channel_volume 1
	octave 2
	speed 1
	note D#, 6
	note A#, 6
	inc_octave
	note D#, 7
	dec_octave
	note F_, 6
	inc_octave
	note C_, 6
	note F_, 7
	dec_octave
	note_type 2, 1, 11
	note G_, 16
	note_type 1, 1, 11
	note G_, 6
	sound_ret
