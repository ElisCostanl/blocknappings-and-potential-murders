/// @desc screenshake(magnitude,frames)
/// @arg magnitude sets the strenght of the shake (radius in pixels)
/// @arg frames sets the length of the shake in frames (60 = 1 second at 60fps)

with (obj_camera)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0; 
		shake_remain = argument0; 
		shake_length = argument1; 
	}
}