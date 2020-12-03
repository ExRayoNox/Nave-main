/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
movimiento = 0;
actual = self.x;

if( !variable_global_exists("muertesBoss") )
{
	global.muertesBoss = 0;
}
cooldown = 0;
BossLife = 10000;
contador_bala = 0;