if (keyboard_check(vk_anykey)) {
     global.text += string(keyboard_string);
    keyboard_string = "";
}

if (keyboard_check(vk_backspace) && !keyboard_check_pressed(vk_backspace) && delete_timer == 2) {
    global.text = string_delete(global.text, string_length(global.text), 1);
    delete_timer = 0;
    keyboard_string = "";
}

if (keyboard_check_pressed(vk_backspace)) {
     global.text = string_delete(global.text, string_length(global.text), 1);
    delete_timer = -4;
    keyboard_string = "";
}

if (delete_timer != 2) {
    delete_timer++;
}

if (keyboard_check_pressed(vk_enter)) {
    global.text += "\n";
    keyboard_string = "";
}

/*
if (string_length(text) % maxStringLength == 0 && string_length(text) > 0) {
    if (!keyboard_check(vk_backspace) && delete_timer == 2 && !keyboard_check(vk_enter)) {
        text += "\n";
		keyboard_string = "";
    }
}

if (string_length(text) % maxStringLength == 0 && string_length(text) >= 45) {
    text += "\n";
	keyboard_string = "";
}


if (keyboard_check(vk_anykey)) {
    text += string(keyboard_string);
    keyboard_string = "";
}

if (keyboard_check(vk_backspace) && !keyboard_check_pressed(vk_backspace) && delete_timer == 2) {
    text = string_delete(text, string_length(text), 1);
    delete_timer = 0;
    keyboard_string = "";
}

if (keyboard_check_pressed(vk_backspace)) {
    text = string_delete(text, string_length(text), 1);
    delete_timer = -4;
    keyboard_string = "";
}

if (delete_timer != 2) {
    delete_timer++;
}

if (keyboard_check(vk_enter)) {
    text += "\n";
    keyboard_string = "";
}

if (string_length(text) % maxStringLength == 0 && string_length(text) > 0) {
    if (!keyboard_check(vk_backspace) && delete_timer == 2 && !keyboard_check(vk_enter)) {
        text += "\n";
    }
}

if (string_length(text) % maxStringLength == 0 && string_length(text) > 79) {
    text += "\n";
}
*\
