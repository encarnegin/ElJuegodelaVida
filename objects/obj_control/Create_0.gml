/// @description Crear la matriz de celdas

// Vamos a crear una matriz donde nos diga que celula estña viva o muerta

// Evitamos que se repite siempre la misma secuencia
randomise();
// Cambiamos la velocidad del juego para que no vaya tan rápido
game_set_speed(velocidad_juego, gamespeed_fps);


// creamos el valor 0,0 y 51,51 del Array para que no me de error al calcular vivos o muertos
for (var col = 0; col < columnas + 2; col +=1) {
    for (var fil = 0; fil < filas + 2; fil +=1) {
        celula[col][fil] = 0;
        celula_calcular[col][fil] = 0;
    }
}



// Creamos array de celulas vivas o muertas y aleatoriamente asignamos si esta viva o muerta
for (var col = 1; col < columnas + 1; col += 1) {
    for (var fil = 1; fil < filas + 1; fil += 1) {
        celula[col][fil] = irandom(1);
        celula_calcular[col][fil] = celula[col][fil];
        if (celula[col][fil] = 1) {
            numerocelulas = numerocelulas + 1;
            celulainicial = celulainicial + 1;
        }
    }
}


// Pintamos por primera vez

// inicializamos posiciones

// La posicion del centro de la celula depende del tamaño de la celula
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

