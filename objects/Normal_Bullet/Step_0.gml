/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

/*if( y = y -32 )
{

image_xscale = -1;
sprite_index=Bullet2;
}*/

if(place_meeting(self.x, self.y, Enemigo))
{
	instance_destroy();
}
if(place_meeting(self.x, self.y, Enemigo2))
{
	instance_destroy();
}
if(place_meeting(self.x, self.y, Colision))
{
	instance_destroy();
}
if(place_meeting(self.x, self.y, Boss1))
{
	instance_destroy();
}
