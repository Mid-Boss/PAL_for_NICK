///scr_dialogue_parser(array of strings, count(Optional))

master_array = argument[0];
if argument_count > 1
    array_count = argument[1];
else
    array_count = 0;

current_line = master_array[array_count];
var header_array = "";
var header = "";
    
header_start = string_pos("[",current_line);
header_end = string_pos("]",current_line);

for (var k = header_start+1; k < header_end; k+=1)
{
    header += string_char_at(current_line,k);
}
    
line_leftovers = string_delete(current_line, 1, header_end+1);
index = string_char_at(header,1);

switch (index) {
    case "b":
        bust_position = string_char_at(header,3);
        bust_orientation = string_char_at(header,5);
        bust_macro = string_upper(line_leftovers);
        scr_add_bust(bust_macro, bust_position, bust_orientation);
        break;
    case "n":
        
}

test = array_length_1d(master_array);

if array_count < array_length_1d(master_array)-1
{
    array_count += 1;
    scr_dialogue_parser(master_array, array_count);
}
 
