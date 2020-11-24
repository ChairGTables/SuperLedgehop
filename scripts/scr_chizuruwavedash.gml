alarm[9] = 7;
action = 1;
wavedash = 0;

if (global.misc1 == 0)
{
    hspeed += global.chizurumovex * 15;
    vspeed += global.chizurumovey * 15;
}
script_execute(scr_truespeedwallcheck);
