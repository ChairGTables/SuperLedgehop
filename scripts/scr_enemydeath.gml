audio_stop_sound(hurtSoundOne);
audio_stop_sound(hurtSoundTwo);
audio_play_sound_on (global.voiceEmitter, deathSound, false, 10); 
instance_create(x, y, obj_explosion);
instance_destroy(self);
