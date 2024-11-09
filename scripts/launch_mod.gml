// Get the mod info
var mod_selected = argument[0];

var mod_path = global.modfolder + mod_selected;
var after_copy_mod_path = global.zr_exe_folder + mod_selected;
var launch_option = "-game " + after_copy_mod_path;

show_debug_message("Sending shell command:");
show_debug_message(global.zr_exe_path + " " + launch_option);

sk_fileCopy(mod_path,global.zr_exe_folder + mod_selected);
show_debug_message("Copied mod data " + mod_path + " to " + global.zr_exe_folder);

// example: .../ZeroRanger.exe -game .../data.win
execute_shell_simple(global.zr_exe_path, launch_option, "open", 0);
global.mod_launched = false;
//window_command_set_active(window_command_close, false);

execute_shell_simple("cmd", "/c timeout /t 15 && del " + after_copy_mod_path, "open", 0);
show_debug_message("Sent command to delete mod data at " + after_copy_mod_path);


