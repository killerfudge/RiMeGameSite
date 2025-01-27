draw_self();

draw_set_color(c_red);

draw_set_font(fnt_choices);

draw_set_halign(fa_left);

draw_set_valign(fa_top);

draw_text(x, y + 5, + text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw character portrait, since it changes depending on character selected
if (global.character == "doctor")
{
	draw_sprite_ext(spr_DAP_profile, image_index, x + 5, y, 5, 5, 0, c_white, 1)
}

draw_set_color(c_white);