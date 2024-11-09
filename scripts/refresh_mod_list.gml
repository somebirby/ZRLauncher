var f, i, n_of_buttons;
global.mod_list = ds_list_create();

if (!ds_list_empty(global.mod_list)){
    ds_list_clear(global.mod_list);
}

// Using the sandbox_killer extension
var dir_mod = string(sk_dirRead(global.modfolder, true));
if (dir_mod != "")
{
    show_debug_message(dir_mod);
    
    var delimiter = "/";
        
    // Initialize variables
    var current_segment = "";
    var length = string_length(dir_mod);
    
    // Iterate through the string
    for (var i = 1; i <= length; i++) {
        var char = string_char_at(dir_mod, i);
        
        if (char == delimiter) {
            // Check if the current segment ends with ".win"
            if (string_pos(".win", current_segment) == string_length(current_segment) - 3) {
                if (current_segment != "data.win") {
                    ds_list_add(global.mod_list, current_segment);
                }
            }
            // Reset the current segment
            current_segment = "";
        } else {
            // Append the character to the current segment
            current_segment += char;
        }
    }
    
    // Check the last segment and add if it ends with ".win"
    if (current_segment != "" && string_pos(".win", current_segment) == string_length(current_segment) - 3) {
        ds_list_add(global.mod_list, current_segment);
    }
    
    // debug: Print the list to verify the contents
    show_debug_message("Mod List:");
    for (var j = 0; j < ds_list_size(global.mod_list); j++) {
        show_debug_message(ds_list_find_value(global.mod_list, j));
    }
} else {
    show_message("ERROR: Could not find mod folder at " + global.modfolder);
}

// Clear the button list
ds_list_clear(button);

// Fill the mod list with the filenames of mods found
ds_list_copy(button, global.mod_list);

