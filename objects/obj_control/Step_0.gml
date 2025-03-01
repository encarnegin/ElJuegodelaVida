// mecanica de pausa del juego. Si la variable pausa_juego es falso, seguimos, si no, paramos
if (pausa_juego) {
    // todo pausado menos mirar si pulsamos una tecla
    if (keyboard_check_pressed(vk_anykey)) {
        pausa_juego = false;
        }
        exit;
} 



// Comprobar que los ocho vecinos estan vivos o muertos

// Reiniciamos valor de numero de celulas para estadisticas
celulactual = 0;

// Preguntamos a los ocho vecinos y sumamos un punto si esta vivo a variable alrededor
for (var col = 1; col < columnas + 1; col += 1) {
     for (var fil = 1; fil < filas + 1; fil += 1) { 
       alrededor = 0;
       if (celula[col-1][fil-1] = 1) {
        alrededor = alrededor + 1;
        } 
       if (celula[col][fil-1] = 1) {
        alrededor = alrededor + 1;
        }
       if (celula[col+1][fil-1]) {
        alrededor = alrededor +1;
        } 
       if (celula[col-1][fil] = 1) {
        alrededor = alrededor + 1;
        }
       if (celula[col+1][fil] = 1) {
        alrededor = alrededor + 1;
        }
       if (celula[col-1][fil+1] = 1) {
        alrededor = alrededor + 1;
        }
       if (celula[col][fil+1] = 1) {
        alrededor = alrededor + 1;
        }
       if (celula[col+1][fil+1] = 1) { 
        alrededor = alrededor + 1;
        }
    
    // Reglas del Juego de la Vida:    
    // Si ALREDEDOR es 2 o 3 y celula esta viva : sigue viva
    // Si ALREDEDOR es 0, 1 o 4 o mas y celkula esta viva : se muere
    // Si ALREDEDOR es 3 y celula esta muerta : nace celula 
       
    
    // Creamos un segundo array para meter los resultados y no modificar en tiempo real la tabla original
             
    if (alrededor > 1 and alrededor < 4 and celula[col][fil] = 1) {
        celula_calcular[col][fil] = 1;
        }
    if ((alrededor < 2 or alrededor > 3) and celula[col][fil] = 1) {
        celula_calcular[col][fil] = 0;
        }    
    if (alrededor = 3 and celula[col][fil] = 0) {
        celula_calcular[col][fil] = 1;
        }
    }
}


// Pasamos los valores de una tabla a otra antes de pintarla

for (var col = 1; col < columnas + 1; col += 1) {
    for (var fil = 1; fil < filas + 1; fil += 1) {
        celula[col][fil] = celula_calcular[col][fil];
        if (celula[col][fil] = 1) {
                numerocelulas = numerocelulas + 1;
                celulactual = celulactual + 1;
            }
    }
}

// Pintamos la matriz tras el calculo de vivos y muertos


// borramos la pantalla eliminando las instancias

instance_destroy(obj_celula_viva);

// Calculamos numero de procesos para estadisticas

// Ciclos es cada generacion
ciclos = ciclos + 1;

// inicializamos posiciones

x = tam_celula;
y = tam_celula;

// Pintamos la matriz con las celulas

for (var col = 1; col < columnas + 1; col += 1) {
    for (var fil = 1; fil < filas + 1; fil += 1) {
        if (celula[col][fil] = 1) {
            instance_create_depth(x, y, profundidad_instancias, obj_celula_viva);
        }
        x = x + tam_celula;
    }
    x = tam_celula;
    y = y + tam_celula;
}
