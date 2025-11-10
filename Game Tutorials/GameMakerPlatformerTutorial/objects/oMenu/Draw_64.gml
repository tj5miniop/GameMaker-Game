/// @description Create GUI for menu

draw_set_font(GameFont);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

for (var i = 0; i < menu_items; i++)
{
		var offset = 2;
		var txt = menu[i];
		if (menu_cursor == i)
		{
			txt = string_insert(">> ", txt, 0);
			var col = c_white;
			
		}
		else
		{
			var col = c_black;	
		}
		var xx = menu_x;
		var yy = menu_y - (menu_item_height * (i*1.8));
		draw_set_color(col);
		draw_text(xx,yy,txt)
}