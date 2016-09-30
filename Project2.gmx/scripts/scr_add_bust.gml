///scr_add_bust(bust_macro, position, orientation)
bust_name = argument0;
position = argument1;
orientation = argument2;

bust_sprite = scr_bust_database(bust_name);

test = room_height;

the_y = room_height - (sprite_get_height(bust_sprite)/2);

if position = "r"
    the_x = room_width - (sprite_get_width(bust_sprite)/2);
else
    the_x = (sprite_get_width(bust_sprite)/2);
    
basic_bust = instance_create(the_x, the_y, obj_basic_bust);
basic_bust.sprite_index = bust_sprite;
if orientation = "l"
    basic_bust.image_xscale = -1;

