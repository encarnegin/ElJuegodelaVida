/// @description Vamos a Mostrar en Pantalla los datos estadisticos


/// Los ciclos que van surgiendo


draw_set_font(fnt_titulo);
draw_set_color(c_white);
draw_text(1635,250, "Generaciones : "+string(ciclos));
draw_text(1635, 350, "Numero celulas Inicial : "+string(celulainicial));
draw_text(1635, 450, "Numero celulas Actual : "+string(celulactual));
draw_text(1635, 550, "Numero celulas Total : "+string(numerocelulas));