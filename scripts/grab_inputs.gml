// Grabbing ALL the known control keys
// NOTE: This may be bad practice. Unless proven to have tangible ill effects, I don't care.

// Are any of our little keys being pressed?

// Navigation:
// Keyboard
key_left    = keyboard_check_pressed(vk_left);
key_right   = keyboard_check_pressed(vk_right);
key_up      = keyboard_check_pressed(vk_up);
key_down    = keyboard_check_pressed(vk_down);
// Controller
key_left    = key_left  || gamepad_button_check_pressed(global.GP_NUM, gp_padl);
key_right   = key_right || gamepad_button_check_pressed(global.GP_NUM, gp_padr);
key_up      = key_up    || gamepad_button_check_pressed(global.GP_NUM, gp_padu);
key_down    = key_down  || gamepad_button_check_pressed(global.GP_NUM, gp_padd);

// Interaction:
// Keyboard
key_confirm = keyboard_check_pressed(vk_enter);
// Controller
key_confirm = key_confirm || gamepad_button_check_pressed(global.GP_NUM, gp_face1) || gamepad_button_check_pressed(global.GP_NUM, gp_start);
