/// @function create_menu(amount_of_items, item_width, item_height, spacing_x, spacing_y, start_x, start_y)
/// @param amount_of_items The number of vertical items in the menu.
/// @param item_width The width of each menu item.
/// @param item_height The height of each menu item.
/// @param spacing_x The horizontal spacing between items.
/// @param spacing_y The vertical spacing between items.
/// @param start_x The starting x-coordinate of the menu.
/// @param start_y The starting y-coordinate of the menu.

// This is meant to be the Community menu for now

var amount_of_items = argument[0];
var item_width = argument[1];
var item_height = argument[2];
var spacing_x = argument[3];
var spacing_y = argument[4];
var start_x = argument[5];
var start_y = argument[6];

var rows = 2;
var cols = ceil(amount_of_items / rows); // Calculate the number of rows and columns

// Loop through each item and position it
for (var i = 1; i < amount_of_items; i++) {
    // Calculate the row and column for the current item
    var row = floor(i / cols);
    var col = i % cols;
    
    // Calculate the position of the current item
    var item_x = start_x + col * (item_width + spacing_x);
    var item_y = start_y + row * (item_height + spacing_y);
    
    // Create the menu item at the calculated position
    var item = instance_create(item_x, item_y, obj_menu_item);
    
    // Set the item's properties (e.g., image, text, etc.)
    item.image_xscale = item_width / sprite_get_width(item.sprite_index);
    item.image_yscale = item_height / sprite_get_height(item.sprite_index);
    item.text = "Item " + string(i + 1);
}

