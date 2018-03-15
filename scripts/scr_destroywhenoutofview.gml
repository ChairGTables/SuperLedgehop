//check if outside view
if (x < view_xview-10 || x > view_xview+969 || y > view_yview+549 || y < view_yview-10)
{
    instance_destroy(self);
}
