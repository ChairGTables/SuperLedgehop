if (instance_exists(obj_opendoor) && image_index == 0)
{
    obj_opendoor.visible = 1;
    image_index = 1;
    audio_play_sound_on (global.effectsEmitter, snd_switch, false, 10);
}
