draw_text(x,y,"LOVE");


if(flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_text(x,y,"LOVE");
	shader_reset();

}
