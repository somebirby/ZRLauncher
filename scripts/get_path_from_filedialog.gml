///get_path_from_filedialog(filter, example_name);

var filter          = argument[0];
var example_name    = argument[1];
var folder_path     = "";

var file_path = get_open_filename(filter, example_name);
if (file_path != "") {
    var last_slash = 0;
    for (var i = 1; i <= string_length(file_path); i++) {
        if (string_char_at(file_path, i) == "\") {
            last_slash = i;
        }
    }
    var folder_path = string_copy(file_path, 1, last_slash);
    show_debug_message("Path: " + folder_path);
    return folder_path;
} else {
    show_message("No file selected.");
    return "null";
}
