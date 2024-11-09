// Misnamed function to find where the sandboxed environnement read root
// Used for debug purposes

ini_open("Path.get")
ini_write_real("a","b",0);
ini_close();
var game_directory = (string(filename_path("Path.get")));

if file_exists((game_directory)+"Path.get")
{
    file_delete(string(game_directory)+"Path.get")
}
//show_message(global.game_directory);
return game_directory;
