k_up = keyboard_check_pressed( vk_up );
k_down = keyboard_check_pressed( vk_down );
k_x = keyboard_check_pressed (vk_enter);

k_lvl = keyboard_check_pressed(ord("U"))
if(k_lvl)
{
	room_goto(Boss_Usa)
}


if(k_up)
{
	y = 130;
	seleccion = 0;
}
if(k_down)
{
	y = 450;
	seleccion = 1;
}

if(k_x and seleccion == 0)
{
	room_goto(Room8)
}
if(k_x and seleccion == 1)
{
	room_goto(Intro_Esp)
}

