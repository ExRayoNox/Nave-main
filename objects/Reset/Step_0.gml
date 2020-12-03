k_r = keyboard_check_pressed (ord("R"));

if(global.nivel == 1 and k_r)
{
	global.muertes = 0;
	if(global.seleccion1 == 0)
	{
		room_goto(Room1)
	}
	if(global.seleccion1 == 1)
	{
		room_goto(Room2)
	}
}
if(global.nivel == 2 and k_r)
{
	global.muertes2 = 0;
	if(global.seleccion1 == 0)
	{
		room_goto(Second_Lvl)
	}
	if(global.seleccion1 == 1)
	{
		room_goto(Second_Lvl2)
	}
}
if(global.nivel == 3 and k_r)
{
	if(global.seleccion1 == 0)
	{
		room_goto(Boss_Usa)
	}
	if(global.seleccion1 == 1)
	{
		room_goto(Boss_JPN)
	}
}