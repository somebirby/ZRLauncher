ini_open(global.config_file);

// Read paths from config file
global.modfolder        = ini_read_string("options", "mod_folder", "null");
global.zr_exe_folder    = ini_read_string("options", "zr_exe_folder", "null");
global.zr_exe_path      = global.zr_exe_folder + "ZeroRanger.exe";

ini_close();

show_debug_message("Mods folder set: " + global.modfolder);
show_debug_message("ZR executable set: " + global.zr_exe_path);
