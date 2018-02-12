bulletSpeed = 15;

if (instance_exists(obj_chizuru))
{
    if (global.shottype == 0)
    {
        var basicShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurubasicbullet);
        basicShot.direction = global.aimangle;
        basicShot.speed = bulletSpeed;
    }
    if (global.shottype == 1)
    {
        var strongShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurubasicbullet);
        strongShot.direction = global.aimangle;
        strongShot.speed = bulletSpeed;
    }
    if (global.shottype == 2)
    {
        tempAngle = -30;
        for (i = 0; i < 6; i += 1)
        {
            var spreadShot = instance_create(obj_chizuru.x, obj_chizuru.y, obj_chizurubasicbullet);
            spreadShot.direction = global.aimangle + tempAngle;
            spreadShot.speed = bulletSpeed;
            tempAngle += 10;
        }
        
    }
}


