switch (vidasvalor)
{
	case 1:
	sprite_index=Health_bar_1
	if(global.vida < vidas and global.vida > vidas/3)
	{
		vidasvalor = 2;
	}
	break;
	case 2:
	sprite_index=Health_bar_2
	if(global.vida >= 1 and global.vida <= vidas/3)
	{
		vidasvalor = 3;
	}
	break;
	case 3:
	sprite_index=Health_bar_3
	break;
}