script_execute(scr_stopmusic);
global.musicVolume = global.volumeHold;
audio_emitter_gain(global.musicEmitter, global.musicVolume);
if (instance_exists(obj_musicfadeout))
{
    instance_destroy(obj_musicfadeout);
}
