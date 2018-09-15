global.isCutscene = false;
if (instance_exists(obj_dialogue))
{
    instance_destroy(obj_dialogue);
}
instance_create(x, y, obj_skippingcutscene);
instance_create(x, y, obj_blackfadein);
instance_destroy(self);   
