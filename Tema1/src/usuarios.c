#include "../include/usuarios.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define LINE_BUF 256

Usuario* cargarUsuarios(const char* ruta, int* cantidad) {
    *cantidad = 0;
    FILE* f = fopen(ruta, "r");
    if (!f) return NULL;

    Usuario* lista = NULL;
    char line[LINE_BUF];

    while (fgets(line, sizeof(line), f)) {
        char* tmp = strdup(line);
        char* tok = strtok(tmp, ",");

        if (!tok) { free(tmp); continue; }

        Usuario u;

        strncpy(u.usuario, tok, sizeof(u.usuario)-1);
        u.usuario[sizeof(u.usuario)-1] = 0;

        tok = strtok(NULL, ",");
        if (!tok) { free(tmp); continue; }
        strncpy(u.clave, tok, sizeof(u.clave)-1);
        u.clave[sizeof(u.clave)-1] = 0;

        tok = strtok(NULL, ",\r\n");
        if (tok)
            strncpy(u.nombre, tok, sizeof(u.nombre)-1);
        else
            u.nombre[0] = 0;

        u.nombre[sizeof(u.nombre)-1] = 0;

        lista = realloc(lista, sizeof(Usuario) * (*cantidad + 1));
        lista[*cantidad] = u;
        (*cantidad)++;

        free(tmp);
    }

    fclose(f);
    return lista;
}

void liberarUsuarios(Usuario* lista) {
    if (lista) free(lista);
}

int buscarUsuario(Usuario* lista, int cantidad, const char* usuario, const char* clave) {
    if (!lista) return -1;

    for (int i = 0; i < cantidad; i++) {
        if (strcmp(lista[i].usuario, usuario) == 0 &&
            strcmp(lista[i].clave, clave) == 0) {
            return i;
        }
    }
    return -1;
}
