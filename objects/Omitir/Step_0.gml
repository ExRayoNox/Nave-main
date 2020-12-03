/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
k_z = keyboard_check_pressed( ord("Z"))

if(k_z)
{
	audio_stop_all();
	room_goto(Selection_Ship);
}