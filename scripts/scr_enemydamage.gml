hp -= other.damage;
sprite_index = asset_get_index(hurtSprite);
image_index = 0;
alarm[11] = hitstunTime;

audio_play_sound_on (global.effectsEmitter, snd_enemydamage, false, 10); 
var damageNumber = instance_create(x, y, obj_damagenumber);
damageNumber.hspeed = random_range(-5, 5);
damageNumber.vspeed = random_range(-10, -15);
damageNumber.gravity = 1;
damageNumber.gravity_direction = 270;
damageNumber.damage = other.damage + round(random_range(-2, 1));

if (other.hspeed > 0)
{
    rightmomentum = bulletKnockback;
}
if (other.hspeed < 0)
{
    leftmomentum = bulletKnockback;
}
if (other.vspeed > 0)
{
    downmomentum = bulletKnockback;
}
if (other.vspeed < 0)
{
    upmomentum = bulletKnockback;
}

hspeed = 0;
vspeed = 0;

if (other.vortex == 1 && instance_exists(obj_chizuru))
{
    speed = 25;
    direction = point_direction(x, y, obj_chizuru.x, obj_chizuru.y);
    rightmomentum = 0;
    leftmomentum = 0;
    upmomentum = 0;
    downmomentum = 0;
    hp += other.damage;
    hp -= 1;
}

if (other.destroyable == 1)
{
    instance_destroy(other);
}

