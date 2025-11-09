#ifndef USUARIOS_H
#define USUARIOS_H

typedef struct Usuario {
    char usuario[50];
    char clave[50];
    char nombre[100];
} Usuario;

int cargarUsuarios(Usuario listaUsuarios[], const char* rutaArchivo);
int verificarCredenciales(Usuario listaUsuarios[], int cantidadUsuarios, const char* usuario, const char* clave);








#endif