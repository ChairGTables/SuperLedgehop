if (instance_exists(obj_chizuru))
{
    specialSelector = 0;
    if (global.misc1 == 1)
    {
        if (global.chizurushinecharge < 5)
        {
            specialSelector = 1;
        }
    }

    if (specialSelector == 0)
    {
        if (obj_chizuru.sprite_index != spr_chizuruhurtd && !instance_exists(obj_bonustheme))
        {
            if (global.shineget == 1)
            {
                reflectRequirement = 15;
                if (global.misc1 == 1)
                {
                    reflectRequirement = 30;
                }
                if (global.chizurushinecharge > 3 && global.chizurushine >= 40 && global.misc1 == 0)
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
                else if (global.chizurushine > reflectRequirement)
                {
                    instance_create(x, y, obj_healmagnet);
                    var shine = instance_create(obj_chizuru.x, obj_chizuru.y, obj_shine);
                    audio_play_sound_on (global.effectsEmitter, snd_reflector, false, 10); 
                    shine.absorb = 0;
                    global.chizurushine -= reflectRequirement;
                    
                    if (global.misc1 == 1)
                    {
                        if (instance_exists(obj_playerrock))
                        {
                            shine2 = instance_create(obj_playerrock.x, obj_playerrock.y, obj_shine);
                            shine2.absorb = 0;
                            shine2.following = 0;
                            obj_playerrock.x = obj_chizuru.x;
                            obj_playerrock.y = obj_chizuru.y;
                        }
                    }
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
            
            scr_shinesprite();
        }
        global.chizurushinecharge = 0;
    }
    else
    {
        if (instance_exists(obj_playerrock))
        {
            global.chizurushinecharge = 0;
            obj_chizuru.action = 0;
            obj_chizuru.waveshine = 1;
            obj_chizuru.spinning = 0;
            obj_chizuru.spinFinish = 0;
            
            obj_chizuru.alarm[8] = 2;
            obj_chizuru.alarm[5] = 9;
            obj_chizuru.alarm[10] = -1;
            
            obj_chizuru.hspeed *= 0.7;
            obj_chizuru.vspeed *= 0.7;
            
            scr_shinesprite();
            if (global.shottype == 0)
            {
                if (!obj_playerrock.isShooting && global.spreadcount > 10 && global.chizurump > 5)
                {
                    obj_playerrock.isShooting = true;
                    obj_playerrock.bulletAngle = global.aimangle;
                    obj_playerrock.alarm[2] = 3;
                    global.spreadcount -= 10;
                    global.chizurump -= 5;
                    audio_play_sound_on (global.effectsEmitter, snd_yuutomagic, false, 10);
                    if (random_range(0, 100) < 30)
                    {
                        audio_play_sound_on (global.voiceEmitter, snd_yuutotakethis, false, 10);
                    }
                    else
                    {
                        //audio_play_sound_on (global.voiceEmitter, snd_yuutowah, false, 10);
                    }
    
                    if (obj_playerrock.detector.enemyTarget != noone)
                    {
                        if (instance_exists(obj_playerrock.detector.enemyTarget))
                        {
                            obj_playerrock.bulletAngle = point_direction(obj_playerrock.x, obj_playerrock.y, obj_playerrock.detector.enemyTarget.x, obj_playerrock.detector.enemyTarget.y);
                        }
                    }
                    obj_playerrock.bulletAngle -= 15;
                }
            }
            else if (global.shottype == 4)
            {
                if (!obj_playerrock.isFiring && global.firecount > 20 && global.chizurump > 5)
                {
                    obj_playerrock.isFiring = true;
                    global.firecount -= 20;
                    global.chizurump -= 5;
                    for (i = 0; i < 4; i++)
                    {
                        obj_playerrock.flame[i] = instance_create(obj_playerrock.x, obj_playerrock.y, obj_chizuruflame);
                        obj_playerrock.flame[i].alarm[0] = 30;
                        obj_playerrock.flame[i].sprite_index = spr_enemyflame_sonii;
                        obj_playerrock.flame[i].damage = 2;
                        if (i == 0 || i == 2)
                        {
                            obj_playerrock.flame[i].damage = 2;
                        }
                    }
                    
                    obj_playerrock.flameAngle = 0;
                    obj_playerrock.flameLength = 0;
                    obj_playerrock.bulletAngle = global.aimangle;
                    obj_playerrock.alarm[3] = 3;
                    audio_play_sound_on (global.effectsEmitter, snd_yuutomagic, false, 10);
                    audio_play_sound_on (global.effectsEmitter, snd_firebullet, false, 10); 
                    if (random_range(0, 100) < 30)
                    {
                        audio_play_sound_on (global.voiceEmitter, snd_yuutoflame, false, 10);
                    }
                    else
                    {
                        audio_play_sound_on (global.voiceEmitter, snd_yuutotakethis, false, 10);
                    }
                }
            }
            else if (global.shottype == 5)
            {
                if (!obj_playerrock.isIcing && global.icecount > 25 && global.chizurump > 8)
                {
                    obj_playerrock.isIcing = true;
                    obj_playerrock.iceSpike = instance_create(obj_playerrock.x, obj_playerrock.y, obj_chizuruicebullet);
                    obj_playerrock.iceSpike.timed = 5;
                    obj_playerrock.iceSpike.damage = 7;
                    obj_playerrock.iceSpike.spike = true;
                    obj_playerrock.bulletAngle = global.aimangle;
                    global.icecount -= 25;
                    global.chizurump -= 8;
                    if (obj_playerrock.detector.enemyTarget != noone)
                    {
                        if (instance_exists(obj_playerrock.detector.enemyTarget))
                        {
                            obj_playerrock.bulletAngle = point_direction(obj_playerrock.x, obj_playerrock.y, obj_playerrock.detector.enemyTarget.x, obj_playerrock.detector.enemyTarget.y);
                        }
                    }
                    
                    obj_playerrock.iceSpike.speed = 2;
                    obj_playerrock.iceSpike.direction = obj_playerrock.bulletAngle;
                    obj_playerrock.iceSpike.image_angle = obj_playerrock.bulletAngle;
                    obj_playerrock.iceSpike.sprite_index = spr_icespike;
                    obj_playerrock.iceSpike.image_alpha = 0.5;
                    obj_playerrock.iceSpike.destroyable = 0;
                    obj_playerrock.alarm[4] = 30;
                    audio_play_sound_on (global.effectsEmitter, snd_yuutomagic, false, 10);
                    audio_play_sound_on (global.effectsEmitter, snd_icespike, false, 10); 
                    if (random_range(0, 100) < 30)
                    {
                        audio_play_sound_on (global.voiceEmitter, snd_yuutoice, false, 10);
                    }
                    else
                    {
                        audio_play_sound_on (global.voiceEmitter, snd_yuutotakethis, false, 10);
                    }
                }
            }
        }
    }
}
