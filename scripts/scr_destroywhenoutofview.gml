cancel = 0;
if (instance_exists(obj_kamuronpc1))
{
    cancel = 1;
}
if (instance_exists(obj_tito))
{
    cancel = 1;
}
if (instance_exists(obj_liz))
{
    cancel = 1;
}

//check if outside view
if (cancel == 0)
{
    if (x < view_xview-10 || x > view_xview+969 || y > view_yview+549 || y < view_yview-10)
    {
        instance_destroy(self);
    }
}

