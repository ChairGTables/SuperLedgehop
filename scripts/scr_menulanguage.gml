name = sprite_get_name(sprite_index);

name = string_replace(name, 'spanish', '');    
name = string_replace(name, 'japanese', '');    
name = string_replace(name, 'chamorro', '');    
name = string_replace(name, 'brazil', '');    
name = string_replace(name, 'french', '');   

switch (global.language)
{
    case 4:
        name = name + "french";
        break;
    case 3:
        name = name + "brazil";
        break;

    case 2:
        name = name + "japanese";
        break;
        
    case 1:
        name = name + "spanish";
        break;
}

if (sprite_exists(asset_get_index(name)))
{
    sprite_index = asset_get_index(name);
}
else
{
    name = string_replace(name, 'french', '');   
    name = string_replace(name, 'spanish', '');    
    name = string_replace(name, 'japanese', '');    
    name = string_replace(name, 'chamorro', '');
    name = string_replace(name, 'brazil', '');     
    sprite_index = asset_get_index(name);
}
