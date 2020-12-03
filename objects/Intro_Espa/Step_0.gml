/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
k_x = keyboard_check_pressed (vk_enter);
if(global.orden == 1)
{
switch (comienzo)
{
	case 0:
	self.y = self.y - 5;
	if(self.y <= 0)
	{
		comienzo = 1;
	}
	break;
	case 1:
	if(k_x){
	global.orden = 2;
	audio_stop_all();
	room_goto(Selection_Ship)}
	
}
}