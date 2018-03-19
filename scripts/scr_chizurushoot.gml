bulletSpeed = 15;



if (instance_exists(obj_chizuru))
{
    firstBoolCheck = global.chizuruShootRest < global.chizuruShootBeat - global.chizuruShootBeat;
    secondBoolCheck = global.chizuruShootTimer < 0.1 || global.chizuruShootTimer > global.chizuruShootBeat - 0.1;

    //Basic
    if (global.shottype == 0)
    {
        audio_play_sound_on (global.effectsEmitter, snd_basicbullet, false, 10); 
        global.chizuruShootRest = global.chizuruShootBeat / 2;
        if ( firstBoolCheck == 1 && secondBoolCheck == 1)
        {
            tempAngle = -2;
            audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
            
            for (i = 0; i < 2; i++)
            {
                var basicShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurubasicbullet);
                basicShot.direction = global.aimangle + tempAngle;
                basicShot.speed = bulletSpeed;
                basicShot.image_xscale = 2;
                basicShot.image_yscale = 2;
                
                tempAngle += 4;
                
                var ringEffect = instance_create(obj_chizuru.x, obj_chizuru.y, obj_redcircle);
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
        global.chizuruShootRest = global.chizuruShootBeat / 2;
        if ( firstBoolCheck == 1 && secondBoolCheck == 1)
        {
            audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
        
            tempAngle = -2;
            for (i = 0; i < 2; i++)
            {
                var strongShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruenhancedbullet);
                strongShot.direction = global.aimangle + tempAngle;
                strongShot.speed = bulletSpeed;
                strongShot.image_xscale = 2;
                strongShot.image_yscale = 2;
                
                tempAngle += 4;
                
                var ringEffect = instance_create(obj_chizuru.x, obj_chizuru.y, obj_redcircle);
                
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
        global.chizuruShootRest = global.chizuruShootBeat / 2;
        
        if ( firstBoolCheck == 1 && secondBoolCheck == 1)
        {
            tempAngle = -25;
            audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
            for (i = 0; i < 6; i += 1)
            {
                var spreadShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruspreadbullet);
                spreadShot.direction = global.aimangle + tempAngle;
                spreadShot.speed = bulletSpeed * 1.2;
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
        global.rapidcount -= 0.1;
    }
    
    //Fire
    if (global.shottype == 4 && global.firecount > 0)
    {
        global.chizuruShootRest = global.chizuruShootBeat / 2;
        audio_play_sound_on (global.effectsEmitter, snd_firebullet, false, 10); 
        if ( firstBoolCheck == 1 && secondBoolCheck == 1)
        {
            audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
            tempAngle = -20;
            for (i = 0; i < 3; i++)
            {
                var fireShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurufirebullet);
                fireShot.direction = global.aimangle + tempAngle;
                fireShot.speed = bulletSpeed;
                
                tempAngle += 20;
            }
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
         global.chizuruShootRest = global.chizuruShootBeat / 2;
        if ( firstBoolCheck == 1 && secondBoolCheck == 1)
        {
            audio_play_sound_on (global.effectsEmitter, snd_rhythmconfirm, false, 10); 
            tempAngle = -3;
            for (i = 0; i < 3; i++)
            {
                var iceShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruicebullet);
                iceShot.direction = global.aimangle + tempAngle;
                iceShot.speed = bulletSpeed;
                
                tempAngle += 3;
            }
            global.firecount -= 3;
        }
        else
        {
            var iceShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruicebullet);
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


