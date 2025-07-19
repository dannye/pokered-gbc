Music_Ditty6:
	channel_count 4
	channel 1, Music_Ditty6_Ch1
	channel 2, Music_Ditty6_Ch2
	channel 3, Music_Ditty6_Ch3
	channel 4, Music_Ditty6_Ch4

Music_Ditty6_Ch1:
	volume_envelope 6, 7
	duty_cycle 2
	vibrato 28, 3, 3
	speed 1
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 2
	note D_, 3
	note E_, 2
	note F_, 3
	note G_, 2
	note A_, 3
	note B_, 2
	inc_octave
	note C_, 3
	dec_octave
	note G_, 6
	inc_octave
	note D#, 5
	dec_octave
	note A#, 5
	inc_octave
	note G_, 5
	dec_octave
	note G_, 5
	inc_octave
	note D#, 5
	dec_octave
	note A#, 5
	inc_octave
	note G_, 5
	dec_octave
	note G_, 6
	inc_octave
	note D#, 5
	dec_octave
	note A#, 5
	inc_octave
	note G_, 5
	dec_octave
	note G_, 5
	inc_octave
	note D#, 5
	dec_octave
	note A#, 5
	inc_octave
	note G_, 5
	dec_octave
	note A_, 6
	inc_octave
	note F_, 5
	note C_, 5
	note A_, 5
	dec_octave
	note A_, 5
	inc_octave
	note F_, 5
	note C_, 5
	note A_, 5
	dec_octave
	note A_, 6
	inc_octave
	note F_, 5
	note C_, 5
	note A_, 5
	dec_octave
	note A_, 5
	inc_octave
	note F_, 5
	note C_, 5
	note A_, 5
	octave 4
	volume_envelope 11, 8
	duty_cycle 0
	note D_, 6
	volume_envelope 6, 7
	duty_cycle 2
	note G_, 5
	note D_, 5
	note B_, 5
	dec_octave
	note G_, 5
	inc_octave
	note D_, 5
	dec_octave
	note D_, 5
	note B_, 5
	dec_octave
	note B_, 6
	inc_octave
	note G_, 5
	dec_octave
	note G_, 5
	inc_octave
	note D_, 5
	dec_octave
	note D_, 5
	note B_, 5
	note G_, 5
	inc_octave
	note D_, 5
	dec_octave
	note B_, 6
	inc_octave
	note G_, 5
	note D_, 5
	note B_, 5
	note G_, 5
	inc_octave
	note D_, 5
	dec_octave
	note B_, 5
	inc_octave
	note G_, 5
	note D_, 6
	note B_, 5
	note G_, 5
	inc_octave
	note D_, 5
	dec_octave
	note B_, 5
	note G_, 5
	note B_, 5
	inc_octave
	note D_, 5
	note_type 7, 6, 8
	note G_, 14
	note_type 2, 6, 8
	rest 2
	sound_ret

Music_Ditty6_Ch2:
	volume_envelope 11, 8
	duty_cycle 0
	vibrato 28, 3, 3
	speed 1
	stereo_panning TRUE, TRUE
	octave 3
	note F_, 2
	note G_, 3
	note A_, 2
	note B_, 3
	inc_octave
	note C_, 2
	note D_, 3
	note E_, 2
	note F_, 3
	note_type 7, 11, 8
	note G_, 5
	note_type 1, 11, 8
	note G_, 6
	note A#, 16
	note A#, 15
	note G_, 6
	note A#, 4
	note_type 7, 11, 8
	note A_, 5
	note_type 1, 11, 8
	note A_, 6
	inc_octave
	note_type 7, 11, 8
	note C_, 5
	note_type 1, 11, 8
	note C_, 6
	dec_octave
	note_type 7, 11, 8
	note B_, 11
	note B_, 12
	note_type 1, 11, 8
	note B_, 3
	note_type 7, 11, 8
	note B_, 14
	note_type 2, 11, 8
	rest 2
	sound_ret

Music_Ditty6_Ch3:
	fade_wave 14
	channel_volume 1
	speed 1
	stereo_panning TRUE, TRUE
	rest 16
	rest 4
	octave 2
	note_type 7, 1, 14
	note D#, 11
	note_type 1, 1, 14
	note D#, 5
	note_type 7, 1, 14
	note D_, 11
	note_type 1, 1, 14
	note D_, 5
.Loop1:
	speed 7
	note G_, 3
	speed 10
	note D_, 2
	sound_loop 4, .Loop1
	note_type 7, 1, 14
	note G_, 14
	note_type 2, 1, 14
	rest 2
	sound_ret

Music_Ditty6_Ch4:
	toggle_noise 6
	octave 1
	drum_speed 1
	stereo_panning TRUE, TRUE
	rest 10
	rest 10
	drum_note 2, 6
.Loop1:
	drum_note 3, 5
	sound_loop 7, .Loop1
.Loop2:
	drum_note 3, 6
	drum_note 3, 5
	drum_note 3, 5
	drum_note 3, 5
	drum_note 3, 5
	drum_note 3, 5
	drum_note 3, 5
	drum_note 3, 5
	sound_loop 3, .Loop2
.Loop3:
	drum_speed 7
	drum_note 2, 3
	drum_speed 10
	drum_note 2, 2
	sound_loop 4, .Loop3
	drum_speed 7
	drum_note 6, 12
	sound_ret
