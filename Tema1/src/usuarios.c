#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "../include/usuarios.h"

int cargarUsuarios(Usuario listaUsuarios[], const char* rutaArchivo) {
    FILE* archivo = fopen(rutaArchivo, "r");
    if (archivo == NULL) {
        perror("Error al abrir el archivo de usuarios");
        return -1;
    }

    int contador = 0;
    char linea[256]; // Espacio para usuario, clave, nombre y separadores

    // Se omite la primera línea 
    if (fgets(linea, sizeof(linea), archivo) == NULL) {
        printf("Archivo de vendedores vacío.\n");
        fclose(archivo);
        return 0; // No hay datos
    }

    // Cuenta las lineas
    while (fgets(linea, sizeof(linea), archivo) != NULL ) {
        contador++;
    }

    // Si no hay vendedores, no hacemos nada
    if (contador == 0) {
        fclose(archivo);
        *numVendedores = 0;
        return NULL;
    }

    Usuario *listaUsuarios = malloc(contador * sizeof(Usuario));
    if (listaUsuarios == NULL) {
        perror("Error al asignar memoria para los usuarios");
        fclose(archivo);
        return NULL;
    }

    rewind(archivo);
    // Se omite la primera línea
    fgets(linea, sizeof(linea), archivo);
    int indice = 0;
    while (fgets(linea, sizeof(linea), archivo) != NULL && indice < contador) {
        linea[strcspn(linea, "\n")] = 0;
        
        char *token;
        token = strtok(linea, ",");
        if (token != NULL) strcpy(lista[i].usuario, token);

        token = strtok(NULL, ",");
        if (token != NULL) strcpy(lista[i].clave, token);

        token = strtok(NULL, ",");
        if (token != NULL) strcpy(listaUsuarios[indice].nombre, token);

        indice++;
    }

    *numVendedores = contador;
    fclose(archivo);
    return listaUsuarios;
}

int validarUsuario(Usuario listaVendedores[], int numVendedores, const char* usuario, const char* clave) {
    for (int i = 0; i < 3; i++) {
        if (strcmp(listaVendedores[i].usuario, usuario) == 0 && 
            strcmp(listaVendedores[i].clave, clave) == 0) 
        {
            return i;
        }
    }
    return -1; 
}