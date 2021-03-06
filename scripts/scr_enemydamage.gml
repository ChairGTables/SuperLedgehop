passable = 1;

if (other.sprite_index == spr_chizuruflame && other.image_xscale < 0.9)
{
    passable = 0;
}

if (other.sprite_index == spr_icespike && other.image_xscale >= 2)
{
    passable = 0;
}

if (passable == 1)
{
    hp -= other.damage;
    
    global.combo += 1;
    
    if (instance_exists(obj_controller))
    {
        obj_controller.alarm[0] = 30;
    }
    if (other.sprite_index == spr_chizuruflame)
    {
        audio_play_sound_on (global.effectsEmitter, snd_enemydamagelower, false, 10); 
    }
    else
    {
        if (other.sprite_index == spr_chizuruspreadbullet)
        {
            audio_stop_sound(snd_enemydamage);
        }
        audio_play_sound_on (global.effectsEmitter, snd_enemydamage, false, 10); 
    }
    var damageNumber = instance_create(x, y, obj_damagenumber);
    damageNumber.hspeed = random_range(-5, 5);
    damageNumber.vspeed = random_range(-10, -15);
    damageNumber.gravity = 1;
    damageNumber.gravity_direction = 270;
    damageNumber.damage = other.damage + round(random_range(-2, 1));
    
    var circleEffect = instance_create(x, y, obj_smallcircle);
    for (i = 0; i < random_range(3,5); i++)
    {
        var hitSweat = instance_create(x, y, obj_hitsweat);
    }
    
    if (other.timed > 0)
    {
        sprite_index = asset_get_index(hurtSprite);
        image_index = 0;
        alarm[11] = hitstunTime;
        if (other.timed == 5 && !instance_exists(obj_frozenindicator))
        {
            frozenDude = instance_create(x, y, obj_frozenindicator);
            frozenDude.frozenGuy = self;
        }
        
        
        if (random_range(0,100) < 10)
        {
            audio_stop_sound(hurtSoundOne);
            audio_stop_sound(hurtSoundTwo);
            audio_play_sound_on (global.voiceEmitter, hurtSoundOne, false, 10); 
        }
        else if (random_range(0,100) > 90)
        {
            audio_stop_sound(hurtSoundOne);
            audio_stop_sound(hurtSoundTwo);
            audio_play_sound_on (global.voiceEmitter, hurtSoundTwo, false, 10); 
        }
        
        if (other.hspeed > 0)
        {
            rightmomentum = abs((other.hspeed / other.speed)) * bulletKnockback;
        }
        if (other.hspeed < 0)
        {
            leftmomentum = abs((other.hspeed / other.speed)) * bulletKnockback;
        }
        if (other.vspeed > 0)
        {
            downmomentum = abs((other.vspeed / other.speed)) * bulletKnockback;
        }
        if (other.vspeed < 0)
        {
            upmomentum = abs((other.vspeed / other.speed)) * bulletKnockback;
        }
        hspeed = 0;
        vspeed = 0;
    }
    
    
    
    
    if (other.vortex == 1 && instance_exists(obj_chizuru))
    {
        speed = 20;
        direction = point_direction(x, y, obj_chizuru.x, obj_chizuru.y);
        rightmomentum = 0;
        leftmomentum = 0;
        upmomentum = 0;
        downmomentum = 0;
    
        hp += other.damage;
        hp -= 1;
    }
    
    script_execute(scr_speedwallcheck);
    
    if (other.destroyable == 1)
    {
        instance_destroy(other);
    }

}

