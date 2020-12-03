/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(place_meeting(self.x, self.y, Nave_USA))
{
	global.vida --;
	instance_destroy();
}

if(place_meeting(self.x, self.y, Japan_Ship))
{
	global.vida --;
	instance_destroy();
}
	