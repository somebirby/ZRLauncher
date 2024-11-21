# ZRLauncher
This is a simple mod **launcher** for ZeroRanger made in GameMaker 1.4
*I realise now that it could easily be made into a universal GameMaker launcher... woops*  
It handles starting the game with different .win files, without need of any manual "copy, paste, rename" business.  
Compatible with Proton. 
This application DOES NOT patch mods for you.  

# WARNING
Windows Defender and other antivirus have a distrust for old Gamemaker games.  
As a result, you may get warnings when opening / using the application.
If you can provide information / help on this matter, please open an [issue](https://github.com/somebirby/ZRLauncher/issues)  

## How to use
**Controls**:
- Arrow keys or Controller D-Pad -> Navigation  
- Enter key or Controller "A" button -> Confirm  
- Keyboard-only (for now) controls :  
Esc -> Close the application  
F2 -> Start vanilla ZeroRanger  
F3 -> Shortcut to the Options menu  
F5 -> When on the main menu, refresh the mod list  

**Instructions**:
- ZRLauncher can be used from *anywhere* (as long as it isn't in the same folder as any other GameMaker game. aka, put it in it's own folder thank you).  
- Beforehand, create a folder for your mods and copy your mods inside. This folder can be located anywhere (**except it cannot be the same one containing ZeroRanger.exe**).  
- Double-click the file or start it through Steam (Proton-compatible).  
- **On First boot**, you will need to fill out the Options menu with the folder containing ZeroRanger.exe, as well as your mod folder.  
Navigate to each options, press Confirm, and a file select dialog should appear. Navigate to and select the file related to the option (any modded .win file or ZeroRanger.exe).  
When you're done, you can press Save and then Back to go to the main menu, where you can launch any mods in your mod folder!  

## Building
- To build this, you must use GameMaker Studio 1.4.9999 (not tested with previous versions)   
- Clone the project, and download the following extensions, and add them to the project (can't distribute them here):  
[execute_shell_simple](https://yellowafterlife.itch.io/gamemaker-execute-shell-simple) / [Window Commands](https://yellowafterlife.itch.io/gamemaker-window-commands) / [Sandbox killer](https://marketplace.gamemaker.io/assets/5725/sandbox-killer)  
- Complete the setup for the "GameMaker:Studio Windows compiler", and you're done!   

## To-Do List
For 0.2  
- Use the timer to call for .win deletion instead of the crunky cmd call >.<  
- Design logic for savefile management  
  
After:  
- Add credits  
- Close after launch Option  
- Make extra keys (F1, F2, F5) accessible via gamepad (remove the press events and use Step_x, probably in obj_title?)  
- Adapt window size to screen size / Allow window redimensionning maybe  
- Handle case of too many mods for the screen (maybe create pages? calculate how many entries can fit the viewport?)  
- Rework drawGUI code to be more efficient  
- Find a better way to "detect" the game launching  
- Correct main menu's navigation code (row & col logic being reversed)  
- Merge all bottom bar logic / draw code to obj_title?  
- Rename obj_title to something more befitting of its role  
- Make help menu (through F1 key)  
- Investigate a drag & drop feature for the mods (drag file in window to add it to the folder then refresh list)  
- Perhaps transition from execute_shell_simple to [Execute Shell](https://forum.gamemaker.io/index.php?threads/execute-shell--for-windows-macos-and-ubuntu.7145/)  
- Press buttons with mouse  
- Change aesthetics of path strings (size, font, color)  
- "Options" -> "Settings"  

## Credits
YellowAfterLife for [execute_shell_simple](https://yellowafterlife.itch.io/gamemaker-execute-shell-simple) and [Window Commands](https://yellowafterlife.itch.io/gamemaker-window-commands) for GameMaker  
Patych for [Sandbox killer](https://marketplace.gamemaker.io/assets/5725/sandbox-killer)  
[VCR OSD Mono](https://www.dafont.com/vcr-osd-mono.font) by Riciery Leal

The SEcord community for all their help.
And of course SE for creating ZeroRanger!  
