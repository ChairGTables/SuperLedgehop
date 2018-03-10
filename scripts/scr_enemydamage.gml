hp -= other.damage;
sprite_index = asset_get_index(hurtSprite);
image_index = 0;
alarm[11] = hitstunTime;

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

instance_destroy(other);
