/*if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(input_string) > 0) {
        input_string = string_delete(input_string, string_length(input_string) - 1, 1);
    }
} else {
    if (string_height(input_string) > bbox_bottom - bbox_top) {
        input_string = string_copy(input_string, string_pos("\n", input_string) + 1, string_length(input_string));
    }
    
    if (keyboard_lastchar() != "") {
        input_string += keyboard_lastchar();
    }
}
*/
//espaço pula linha por algum motivo

if keyboard_check_pressed(vk_f1){

texto = keyboard_string

}
if keyboard_check(vk_control){
show_message(texto)

}

