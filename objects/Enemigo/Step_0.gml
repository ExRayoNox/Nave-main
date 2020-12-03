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
	
	if(enemylife == 4)
	{
		instance_destroy();
		global.muertes++;
	}
}

if(place_meeting(self.x, self.y, Laser_Bullet))
{
	enemylife++;
	
	if(enemylife == 2)
	{
		instance_destroy();
		global.muertes++;
	}
}
if(place_meeting(self.x, self.y, Nuclear_Bullet))
{
	instance_destroy();
	global.muertes++;
}

if(global.muertes == 9)
{
	if(global.seleccion1 == 0)
	{
		global.nivel = 2;
		room_goto(Second_Lvl);
	}
	else if(global.seleccion1 == 1)
	{
		global.nivel = 2;
		room_goto(Second_Lvl2);
	}
}

if(current_time - cooldown > 2000)
{
	cooldown = current_time;
	var inst = instance_create_depth(x, y + -32*image_yscale, 0, Enemy_Bullet);

	inst.direction= -90
	inst.speed = 5*image_yscale;
}