if (keyboard_string != "") {
    texto += keyboard_string;
    keyboard_string = "";
}

if (keyboard_check(vk_backspace) && string_length(texto) > 0) {
    texto = string_delete(texto, string_length(texto), 1);
}
