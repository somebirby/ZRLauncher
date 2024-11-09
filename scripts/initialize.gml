// Called in select_room's creation code

global.GP_NUM = 0;
global.MonitorW     = display_get_width();
global.MonitorH     = display_get_height();
global.view_width   = view_wport[0];
global.view_height  = view_hport[0];
display_set_gui_size(global.view_width, global.view_height);
draw_set_font(font1);
application_surface_draw_enable(true);
global.color_selected  = c_orange;
global.color_not_sel   = c_ltgray;

global.firstBoot    = false;
global.config_file  = "config.ini";

global.selected_menu_item = 0;

// see launch_mod()
global.mod_launched = false;
window_command_hook(window_command_close);

sound_global_volume(0.17);  // idk shit's super loud

if (env_debug) { playground() }    // If debug (Default) target

