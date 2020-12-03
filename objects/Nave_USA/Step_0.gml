/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



k_left = keyboard_check( vk_left );
k_right = keyboard_check( vk_right );
k_up = keyboard_check( vk_up );
k_down = keyboard_check( vk_down );
k_space = keyboard_check_pressed( vk_space );

k_a = keyboard_check_pressed( ord("A") )
k_d = keyboard_check_pressed( ord("D") )
k_w = keyboard_check_pressed( ord("W") )
k_s = keyboard_check_pressed( ord("S") )
k_z = keyboard_check_pressed( ord("Z"))
k_x = keyboard_check_pressed( ord("X"))
k_c = keyboard_check_pressed( ord("C"))

if( k_left or k_a)
{
self.x = self.x - 5;	
image_xscale = -1;
sprite_index=NaveB;
}
	
else if(k_right or k_d )
{
self.x = self.x+5;
image_xscale = 1;
sprite_index=NaveB;
}
else{
sprite_index=NaveB	;
}

if( k_up or k_w)
{
self.y = self.y -5;	
image_xscale = -1;
sprite_index=NaveB;

}
	
else if(k_down or k_s )
{
self.y = self.y+5;
image_xscale = 1;
sprite_index=NaveB;
}

if(k_z)
{
Normal = false
Laser = true
Radioactive = false
}

if(k_x)
{
Normal = true
Laser = false
Radioactive = false
}

if(k_c)
{
Normal = false
Laser = false
Radioactive = true
}

if(Normal==true)
{
Designed_bullet = 1;
}

else if(Laser==true)
{
Designed_bullet = 2;
}

else if(Radioactive==true)
{
Designed_bullet = 3;
}



if(Designed_bullet==1 and global.nivel >= 1)
{

if(k_space)
{
//instance_create_layer(x, y, "Instances", Normal_Bullet);
//sprite_index
var inst = instance_create_depth(x, y - 32*image_yscale, 0, Normal_Bullet);

inst.direction= 90
inst.speed = 5*image_yscale;
sprite_index=Shoot1
sprite_index=Shoot2
}


}

if(Designed_bullet==2 and global.nivel >= 2)
{

if(k_space and global.balasL >=1)
{
//instance_create_layer(x, y, "Instances", Normal_Bullet);
//sprite_index
var inst = instance_create_depth(x, y - 32*image_yscale, 0, Laser_Bullet);
global.balasL--;
inst.direction= 90
inst.speed = 7*image_yscale;
sprite_index=Shoot1
sprite_index=Shoot2
if(global.balasL == 1)
{
	Seleccionador.sprite_index=Sprite37;
}
}

}

if(Designed_bullet==3 and global.nivel >= 3)
{

if(k_space and global.balasN >=1)
{
//instance_create_layer(x, y, "Instances", Normal_Bullet);
//sprite_index
var inst = instance_create_depth(x, y - 32*image_yscale, 0, Nuclear_Bullet);
global.balasN--;
inst.direction= 90
inst.speed = 5*image_yscale;
sprite_index=Shoot1
sprite_index=Shoot2

if(global.balasN == 1)
{
	Seleccionador.sprite_index=Sprite37;
}
}

}



if(global.vida <= 0)
{
	instance_destroy();
	room_goto(Room6)
}