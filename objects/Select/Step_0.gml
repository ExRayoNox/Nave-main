/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
k_left = keyboard_check_pressed( vk_left );
k_right = keyboard_check_pressed( vk_right );
k_x = keyboard_check_pressed (ord("X"));
if(k_left)
{
	x = 96;
	global.seleccion1 = 0;
}
if(k_right)
{
	x = 640;
	global.seleccion1 = 1;
}

if(k_x and global.seleccion1 == 0)
{
	room_goto(Room1)
}
if(k_x and global.seleccion1 == 1)
{
	room_goto(Room2)
}

