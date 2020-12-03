global.nivel = 2;

switch (movimiento)
{
	case 0:
	self.x = self.x + 10;
	if(self.x >= actual+200)
	{
		movimiento = 1;
	}
	break;
	case 1:
	self.x = self.x - 10;
	if(self.x <= actual-200)
	{
		movimiento = 0;
	}
	break;
}


if(place_meeting(self.x, self.y, Normal_Bullet))
{
	enemylife++;
	
	if(enemylife == 5)
	{
		instance_destroy();
		global.muertes2++;
	}
}

if(place_meeting(self.x, self.y, Laser_Bullet))
{
	enemylife2++;
	
	if(enemylife2 == 3)
	{
		instance_destroy();
		global.muertes2++;
	}
}

if(global.muertes2 == 12)
{
	if(global.seleccion1 == 0)
	{
		global.nivel = 3
		room_goto(Boss_Usa);
	}
	else if(global.seleccion1 == 1)
	{
		global.nivel = 3
		room_goto(Boss_JPN);
	}
}

if(current_time - cooldown > 2000)
{
	cooldown = current_time;
	var inst = instance_create_depth(x, y + -32*image_yscale, 0, Enemy_Bullet);

	inst.direction= -90
	inst.speed = 5*image_yscale;
}