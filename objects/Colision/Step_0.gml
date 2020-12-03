/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(place_meeting(self.x,self.y, Normal_Bullet))
{
	instance_destroy(Normal_Bullet);
}

if(place_meeting(self.x,self.y, Bala_Gigante))
{
	instance_destroy(Bala_Gigante);
}