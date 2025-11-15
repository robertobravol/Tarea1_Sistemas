#ifndef USUARIOS_H
#define USUARIOS_H

typedef struct Usuario {
    char usuario[50];
    char clave[50];
    char nombre[100];
} Usuario;

Usuario* cargarUsuarios(const char* ruta, int* cantidad);
void liberarUsuarios(Usuario* lista);
int buscarUsuario(Usuario* lista, int cantidad, const char* usuario, const char* clave);

#endif
