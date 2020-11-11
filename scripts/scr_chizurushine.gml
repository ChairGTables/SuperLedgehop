if (instance_exists(obj_chizuru))
{
    if (global.misc1 == 0)
    {
        if (obj_chizuru.sprite_index != spr_chizuruhurtd && !instance_exists(obj_bonustheme))
        {
            if (global.shineget == 1)
            {
                if (global.chizurushinecharge > 3 && global.chizurushine >= 40)
                {
                    instance_create(x, y, obj_healmagnet);
                    audio_play_sound_on (global.effectsEmitter, snd_absorbing, false, 10); 
                    var shine = instance_create(obj_chizuru.x, obj_chizuru.y, obj_shine);
                    shine.absorb = 1;
                    global.chizurushine -= 40;
                    global.absorbing = 1;
                    if (instance_exists(obj_absorbbubble))
                    {
                        obj_absorbbubble.alarm[0] = global.chizurupoptime;
                    }
                }
                else if (global.chizurushine > 15)
                {
                    instance_create(x, y, obj_healmagnet);
                    var shine = instance_create(obj_chizuru.x, obj_chizuru.y, obj_shine);
                    audio_play_sound_on (global.effectsEmitter, snd_reflector, false, 10); 
                    shine.absorb = 0;
                    global.chizurushine -= 15;
                }
            }
        
            global.chizurushinecharge = 0;
            
            obj_chizuru.action = 0;
            obj_chizuru.waveshine = 1;
            obj_chizuru.spinning = 0;
            obj_chizuru.spinFinish = 0;
            
            obj_chizuru.alarm[8] = 2;
            
            obj_chizuru.alarm[10] = -1;
            
            obj_chizuru.hspeed *= 0.7;
            obj_chizuru.vspeed *= 0.7;
            
            if (obj_chizuru.sprite_index = spr_chizuruspin && global.specialattempts == 1)
            {
                
                global.specialsuccess = 1;
                
            }
            
            if(obj_chizuru.lookDirection == 1)
            {
                obj_chizuru.image_xscale = -1;
                obj_chizuru.sprite_index = spr_chizuruwavedr;
            }
            
            if(obj_chizuru.lookDirection == 2)
            {
                obj_chizuru.sprite_index = spr_chizuruwaved;
            }
            
            if(obj_chizuru.lookDirection == 3)
            {
                obj_chizuru.image_xscale = 1;
                obj_chizuru.sprite_index = spr_chizuruwavedr;
                
            }
            
            if (obj_chizuru.lookDirection == 4)
            {
                obj_chizuru.image_xscale = -1;
                obj_chizuru.sprite_index = spr_chizuruwaver;
                
            }
            
            if (obj_chizuru.lookDirection == 6)
            {
                obj_chizuru.image_xscale = 1;
                obj_chizuru.sprite_index = spr_chizuruwaver;
                
            }
            
            if (obj_chizuru.lookDirection == 7)
            {
                obj_chizuru.image_xscale = -1;
                obj_chizuru.sprite_index = spr_chizuruwaver;
                
            }
            
            if (obj_chizuru.lookDirection == 8)
            {
                obj_chizuru.image_xscale = 1;
                obj_chizuru.sprite_index = spr_chizuruwaveu;
                
            }
            
            if (obj_chizuru.lookDirection == 9)
            {
                obj_chizuru.image_xscale = 1;
                obj_chizuru.sprite_index = spr_chizuruwaveur;
            }
        }
        global.chizurushinecharge = 0;
    }
    else
    {
        if (instance_exists(obj_playerrock))
        {
            if (global.shottype != 4)
            {
                if (!obj_playerrock.isShooting)
                {
                    obj_playerrock.isShooting = true;
                    obj_playerrock.bulletAngle = global.aimangle;
                    obj_playerrock.alarm[2] = 3;
                    audio_play_sound_on (global.effectsEmitter, snd_yuutomagic, false, 10);
                    if (random_range(0, 100) < 30)
                    {
                        audio_play_sound_on (global.voiceEmitter, snd_yuutotakethis, false, 10);
                    }
    
                    if (obj_playerrock.detector.enemyTarget != noone)
                    {
                        if (instance_exists(obj_playerrock.detector.enemyTarget))
                        {
                            obj_playerrock.bulletAngle = point_direction(obj_playerrock.x, obj_playerrock.y, obj_playerrock.detector.enemyTarget.x, obj_playerrock.detector.enemyTarget.y);
                        }
                    }
                    obj_playerrock.bulletAngle -= 20;
                }
            }
            else
            {
                if (!obj_playerrock.isFiring)
                {
                    obj_playerrock.isFiring = true;
                    obj_playerrock.bulletAngle = global.aimangle;
                    obj_playerrock.alarm[3] = 3;
                    audio_play_sound_on (global.effectsEmitter, snd_yuutomagic, false, 10);
                    audio_play_sound_on (global.effectsEmitter, snd_firebullet, false, 10); 
                    if (random_range(0, 100) < 100)
                    {
                        audio_play_sound_on (global.voiceEmitter, snd_yuutotakethis, false, 10);
                    }
                }
            }
        }
    }
}
