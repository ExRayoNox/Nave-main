/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
k_left = keyboard_check_pressed( vk_left );
k_right = keyboard_check_pressed( vk_right );
k_x = keyboard_check_pressed (vk_enter);
if(k_left)
{
	x = 55;
	seleccion = 0;
}
if(k_right)
{
	x = 620;
	seleccion = 1;
}

if(k_x and seleccion == 0)
{
	room_goto(Selection_Ships)
}
if(k_x and seleccion == 1)
{
	room_goto(Controles)
}

