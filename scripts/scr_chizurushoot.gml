bulletSpeed = 15;

if (instance_exists(obj_chizuru))
{
    if (global.shottype == 0)
    {
        audio_play_sound (snd_basicbullet, 10, false); 
        var basicShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurubasicbullet);
        basicShot.direction = global.aimangle;
        basicShot.speed = bulletSpeed;
    }
    if (global.shottype == 1 && global.enhancedcount > 0)
    {
        audio_play_sound (snd_enhancedbullet, 10, false); 
        var strongShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruenhancedbullet);
        strongShot.direction = global.aimangle;
        strongShot.speed = bulletSpeed;
        global.enhancedcount -= 1;
    }
    if (global.shottype == 2 && global.spreadcount > 0)
    {
        audio_play_sound (snd_spreadbullet, 10, false); 
        tempAngle = -30;
        for (i = 0; i < 6; i += 1)
        {
            var spreadShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruspreadbullet);
            spreadShot.direction = global.aimangle + tempAngle;
            spreadShot.speed = bulletSpeed;
            tempAngle += 10;
        }
        global.spreadcount -= 5;
    }
    if (global.shottype == 3 && global.rapidcount > 0)
    {
        audio_play_sound (snd_gatling, 10, false); 
        var rapidShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizururapidbullet);
        rapidShot.direction = global.aimangle + random_range(-10, 10);
        rapidShot.speed = bulletSpeed;
        global.chizurucooldown = 3;
        global.rapidcount -= 0.1;
    }
    if (global.shottype == 4 && global.firecount > 0)
    {
        audio_play_sound (snd_firebullet, 10, false); 
        var fireShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurufirebullet);
        fireShot.direction = global.aimangle;
        fireShot.speed = bulletSpeed;
        global.firecount -= 5;
        
    }
    if (global.shottype == 5 && global.icecount > 0)
    {
        audio_play_sound (snd_icebullet, 10, false); 
        var iceShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizuruicebullet);
        iceShot.direction = global.aimangle;
        iceShot.speed = bulletSpeed;
        global.icecount -= 5;
    }
    
    if (instance_exists(obj_camera_chair))
    {
        obj_camera_chair.intensity = 1;
    }
}


