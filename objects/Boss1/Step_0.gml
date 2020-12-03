/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.nivel = 3;
switch(movimiento)
{
	case 0:
	self.x = self.x + 10;
	if(self.x >= actual+850)
	{
		movimiento = 1;
	}
	contador_bala = 0;
	break;
	
	case 1:
	if(contador_bala != 1){
	var unst = instance_create_depth(self.x + 280, self.y + 400,0,Bala_Gigante);
	
	unst.direction= -90
	unst.speed = 3*image_yscale;
	
	if(Bala_Gigante.y >= 1000)
	{
		movimiento = 2
	}
	}
	
	break;
	
	case 2:
	self.x = self.x - 10;
	if(self.x <= actual)
	{
		movimiento = 3;
	}
	contador_bala = 0;
	break;
	
	case 3:
	if(contador_bala != 1){
	var unst = instance_create_depth(self.x + 280, self.y*image_yscale,0,Bala_Gigante);
	
	unst.direction= -90
	unst.speed = 3*image_yscale;
	
	if(Bala_Gigante.y >= 1000)
	{
		movimiento = 0
	}
	}
	
}

if(current_time - cooldown > 1000 and BossLife >= 7000)
{
	cooldown = current_time;
	var inst = instance_create_depth(self.x +200, self.y+400, 0, Enemy_Bullet);
	var onst = instance_create_depth(self.x +260, self.y+400, 0, Enemy_Bullet);
	
	var anst = instance_create_depth(self.x +300, self.y+400, 0, Enemy_Bullet);
	var enst = instance_create_depth(self.x +360, self.y+400, 0, Enemy_Bullet);
	
	
	anst.direction= -90
	anst.speed = 3*image_yscale;
	
	enst.direction= -90
	enst.speed = 5*image_yscale;
	
	onst.direction= -90
	onst.speed = 3*image_yscale;

	inst.direction= -90
	inst.speed = 5*image_yscale;
}
if(current_time - cooldown > 700 and BossLife < 7000)
{
	cooldown = current_time;
	var inst = instance_create_depth(self.x +200, self.y+400, 0, Enemy_Bullet);
	var onst = instance_create_depth(self.x +260, self.y+400, 0, Enemy_Bullet);
	
	var anst = instance_create_depth(self.x +300, self.y+400, 0, Enemy_Bullet);
	var enst = instance_create_depth(self.x +360, self.y+400, 0, Enemy_Bullet);
	
	
	anst.direction= -90
	anst.speed = 3*image_yscale;
	
	enst.direction= -90
	enst.speed = 5*image_yscale;
	
	onst.direction= -90
	onst.speed = 3*image_yscale;

	inst.direction= -90
	inst.speed = 5*image_yscale;
}

if(place_meeting(self.x, self.y, Normal_Bullet))
{
	BossLife -= 50
}
if(place_meeting(self.x, self.y, Laser_Bullet))
{
	BossLife -= 100
}
if(place_meeting(self.x, self.y, Nuclear_Bullet))
{
	BossLife -= 200
}

if(BossLife <= 5000)
{
	sprite_index= Sprite36;
}

if(BossLife <= 0)
{
	global.muertesBoss = 1;
}

if(global.muertesBoss == 1)
{
	room_goto(Room5)
}