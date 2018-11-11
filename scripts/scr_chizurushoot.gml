bulletSpeed = 15;



if (instance_exists(obj_chizuru))
{
    if (obj_chizuru.action == 1)
    {
        myHold1 = 0.1;
        myHold2 = 0;
        myHold3 = 2;
        
        if (global.bpm == 165)
        {
            myHold1 = 0.2;
            myHold2 = 0;
            myHold3 = 2;
        }
        
        secondBoolCheck = audio_sound_get_track_position(global.musicrm1) mod global.playerQuarter < myHold1 || audio_sound_get_track_position(global.musicrm1) mod global.playerQuarter > 0.4;
        firstBoolCheck = global.chizuruShootRest - myHold2  < global.chizuruShootBeat - global.chizuruShootBeat;
        //secondBoolCheck = global.chizuruShootTimer < 0.1 || global.chizuruShootTimer > global.chizuruShootBeat - 0.1;
    
        //Basic
        if (global.shottype == 0)
        {
            audio_play_sound_on (global.effectsEmitter, snd_basicbullet, false, 10); 
            global.chizuruShootRest = global.chizuruShootBeat / myHold3;
            if ( firstBoolCheck == 1 && secondBoolCheck == 1)
            {
                tempAngle = -2;
                var ringEffect = instance_create(obj_chizuru.x, obj_chizuru.y, obj_redcircle);
                audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
                var note1 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                var note2 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                note1.hspeed = -5;
                note2. hspeed = 5;
                
                for (i = 0; i < 2; i++)
                {
                    var basicShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurubasicbullet);
                    basicShot.direction = global.aimangle + tempAngle;
                    basicShot.speed = bulletSpeed;
                    basicShot.image_xscale = 2;
                    basicShot.image_yscale = 2;
                    basicShot.timed = 1;
                    tempAngle += 4;
                    
                    
                }
            }
            else
            {
                var basicShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurubasicbullet);
                basicShot.direction = global.aimangle;
                basicShot.speed = bulletSpeed;
            }
            
            
        }
        
        //Enhanced
        if (global.shottype == 1 && global.enhancedcount > 0)
        {
            audio_play_sound_on (global.effectsEmitter, snd_enhancedbullet, false, 10); 
            global.chizuruShootRest = global.chizuruShootBeat / myHold3;
            if ( firstBoolCheck == 1 && secondBoolCheck == 1)
            {
                audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
                var ringEffect = instance_create(obj_chizuru.x, obj_chizuru.y, obj_redcircle);
                var note1 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                var note2 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                note1.hspeed = -5;
                note2. hspeed = 5;
                tempAngle = -2;
                for (i = 0; i < 2; i++)
                {
                    var strongShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruenhancedbullet);
                    strongShot.direction = global.aimangle + tempAngle;
                    strongShot.speed = bulletSpeed;
                    strongShot.image_xscale = 2;
                    strongShot.image_yscale = 2;
                    strongShot.timed = 1;
                    tempAngle += 4;
                    
                    
                    
                    global.enhancedcount -= 0.5;
                }
            }
            else
            {
                var strongShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruenhancedbullet);
                strongShot.direction = global.aimangle;
                strongShot.speed = bulletSpeed;
                
                global.enhancedcount -= 1;
            }
        }
        
        //Spread
        if (global.shottype == 2 && global.spreadcount > 0)
        {
            audio_play_sound_on (global.effectsEmitter, snd_spreadbullet, false, 10); 
            global.chizuruShootRest = global.chizuruShootBeat / myHold3;
            
            if ( firstBoolCheck == 1 && secondBoolCheck == 1)
            {
                tempAngle = -25;
                var ringEffect = instance_create(obj_chizuru.x, obj_chizuru.y, obj_redcircle);
                audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
                var note1 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                var note2 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                note1.hspeed = -5;
                note2. hspeed = 5;
                for (i = 0; i < 6; i += 1)
                {
                    var spreadShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruspreadbullet);
                    spreadShot.direction = global.aimangle + tempAngle;
                    spreadShot.speed = bulletSpeed * 1.2;
                    spreadShot.timed = 1;
                    tempAngle += 10;
                    
                    spreadShot.image_xscale = 2;
                    spreadShot.image_yscale = 2;
                }
                global.spreadcount += 3;
            }
            tempAngle = -30;
            for (i = 0; i < 6; i += 1)
            {
                var spreadShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruspreadbullet);
                spreadShot.direction = global.aimangle + tempAngle;
                spreadShot.speed = bulletSpeed;
                tempAngle += 10;
                
                if ( firstBoolCheck == 1 && secondBoolCheck == 1)
                {
                    spreadShot.image_xscale = 2;
                    spreadShot.image_yscale = 2;
                    spreadShot.timed = 1;
                }
            }
            global.spreadcount -= 5;
        }
        
        //Rapid
        if (global.shottype == 3 && global.rapidcount > 0)
        {
            audio_play_sound_on (global.effectsEmitter, snd_gatling, false, 10); 
            var rapidShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizururapidbullet);
            rapidShot.direction = global.aimangle + random_range(-10, 10);
            rapidShot.speed = bulletSpeed;
            global.chizurucooldown = 3;
            global.rapidcount -= 0.5;
        }
        
        //Fire
        if (global.shottype == 4 && global.firecount > 0)
        {
            global.chizuruShootRest = global.chizuruShootBeat / myHold3;
            
            audio_play_sound_on (global.effectsEmitter, snd_firebullet, false, 10); 
            if ( firstBoolCheck == 1 && secondBoolCheck == 1)
            {
                var ringEffect = instance_create(obj_chizuru.x, obj_chizuru.y, obj_redcircle);
                audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
                var note1 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                var note2 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                note1.hspeed = -5;
                note2. hspeed = 5;
                
                var fireShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurufirebullet);
                fireShot.direction = global.aimangle;
                fireShot.speed = bulletSpeed;
                fireShot.steroids = 1;
                fireShot.timed = 1;
                global.firecount -= 3;
            }
            else
            {
                var fireShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurufirebullet);
                fireShot.direction = global.aimangle;
                fireShot.speed = bulletSpeed;
                global.firecount -= 5;
            }
            
            
            
        }
        
        //Ice
        if (global.shottype == 5 && global.icecount > 0)
        {
            audio_play_sound_on (global.effectsEmitter, snd_icebullet, false, 10); 
             global.chizuruShootRest = global.chizuruShootBeat / myHold3;
            if ( firstBoolCheck == 1 && secondBoolCheck == 1)
            {
                audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
                var ringEffect = instance_create(obj_chizuru.x, obj_chizuru.y, obj_redcircle);
                var note1 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                var note2 = instance_create(obj_chizuru.x, obj_chizuru.y, obj_musicnote);
                note1.hspeed = -5;
                note2. hspeed = 5;
                
                tempAngle = -3;
                for (i = 0; i < 3; i++)
                {
                    iceShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruicebullet);
                    iceShot.direction = global.aimangle + tempAngle;
                    iceShot.speed = bulletSpeed;
                    iceShot.timed = 1;
                    iceShot.damage = 8;
                    tempAngle += 3;
                }
                global.icecount -= 3;
            }
            else
            {
                iceShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruicebullet);
                iceShot.direction = global.aimangle;
                iceShot.speed = bulletSpeed;
                
                global.icecount -= 5;
            }
        }
        
        if (instance_exists(obj_camera_chair))
        {
            obj_camera_chair.intensity = 1;
        }
    }
}


