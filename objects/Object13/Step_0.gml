/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
k_enter = keyboard_check_pressed(ord(vk_enter));

if(k_enter == true)
{
	show_debug_message("Hola");
	room_goto(Selection_Ships);
}
