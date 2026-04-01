//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
hsp = key_right - key_left;

vsp = key_down - key_up;

hsp = hsp*walksp
vsp = vsp*walksp
 
//Horizontal Collision
if (place_meeting(x+hsp, y, oWall))
{
	
	while (!place_meeting(x+sign(hsp), y, oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, oWall))
{
	
	while (!place_meeting(x, y+sign(vsp), oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	
}
y = y + vsp;
