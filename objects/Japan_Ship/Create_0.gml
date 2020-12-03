/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Normal = true
Laser = false
Radioactive = false

if( !variable_global_exists("Nivel") )
{
	global.nivel = 1;
	global.balasL = 25;
	global.balasN = 10;
	global.vida = 3;
}

balasL = 20;
balasN = 5;

image_speed=0.45