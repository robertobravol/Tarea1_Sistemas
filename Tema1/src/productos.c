#include "../include/productos.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define LINE_BUF 512

static char* trim(char* s) {
    char* end;
    while (*s == ' ' || *s == '\t' || *s=='\n' || *s=='\r') s++;
    if (*s == 0) return s;
    end = s + strlen(s) - 1;
    while (end > s && (*end==' ' || *end=='\n' || *end=='\r' || *end=='\t')) end--;
    *(end+1) = 0;
    return s;
}

Producto* cargarProductos(const char* ruta, int* cantidad) {
    FILE* f = fopen(ruta, "r");
    *cantidad = 0;
    if (!f) return NULL;

    Producto* lista = NULL;
    char line[LINE_BUF];

    while (fgets(line, sizeof(line), f)) {
        char* tmp = strdup(line);
        char* tok = strtok(tmp, ",");

        if (!tok) { free(tmp); continue; }

        Producto p;
        p.codigo = atoi(trim(tok));

        tok = strtok(NULL, ",");
        if (!tok) { free(tmp); continue; }
        strncpy(p.nombre, trim(tok), sizeof(p.nombre)-1);
        p.nombre[sizeof(p.nombre)-1] = 0;

        tok = strtok(NULL, ",");
        p.unidades = tok ? atoi(trim(tok)) : 0;

        tok = strtok(NULL, ",");
        p.costo = tok ? atof(trim(tok)) : 0;

        tok = strtok(NULL, ",\r\n");
        p.precioVenta = tok ? atof(trim(tok)) : 0;

        lista = realloc(lista, sizeof(Producto) * (*cantidad + 1));
        lista[*cantidad] = p;
        (*cantidad)++;

        free(tmp);
    }

    fclose(f);
    return lista;
}

int guardarProductos(const char* ruta, Producto* lista, int cantidad) {
    FILE* f = fopen(ruta, "w");
    if (!f) return 0;

    for (int i = 0; i < cantidad; i++) {
        fprintf(f, "%d,%s,%d,%.2f,%.2f\n",
                lista[i].codigo,
                lista[i].nombre,
                lista[i].unidades,
                lista[i].costo,
                lista[i].precioVenta);
    }

    fclose(f);
    return 1;
}

int buscarProductoPorCodigo(Producto* lista, int cantidad, int codigo) {
    if (!lista) return -1;
    for (int i = 0; i < cantidad; i++)
        if (lista[i].codigo == codigo)
            return i;
    return -1;
}

Producto* agregarProducto(Producto* lista, int* cantidad, Producto p) {
    lista = realloc(lista, sizeof(Producto) * (*cantidad + 1));
    lista[*cantidad] = p;
    (*cantidad)++;
    return lista;
}

int actualizarStock(Producto* lista, int cantidad, int codigo, int delta) {
    int idx = buscarProductoPorCodigo(lista, cantidad, codigo);
    if (idx < 0) return 0;

    lista[idx].unidades += delta;
    if (lista[idx].unidades < 0) lista[idx].unidades = 0;
    return 1;
}

void listarProductos(Producto* lista, int cantidad) {
    printf("Codigo\tNombre\t\tUnidades\tCosto\tPrecioVenta\n");
    printf("-------------------------------------------------------------\n");
    for (int i = 0; i < cantidad; i++) {
        printf("%d\t%s\t\t%d\t\t%.2f\t%.2f\n",
               lista[i].codigo,
               lista[i].nombre,
               lista[i].unidades,
               lista[i].costo,
               lista[i].precioVenta);
    }
}

int registrarVenta(const char* rutaVentas,
                   Producto* lista,
                   int* cantidadProductos,
                   int codigo,
                   int cantidadVendida,
                   int numFactura,
                   const char* fecha) {

    int idx = buscarProductoPorCodigo(lista, *cantidadProductos, codigo);
    if (idx < 0) return 0;
    if (lista[idx].unidades < cantidadVendida) return 0;

    lista[idx].unidades -= cantidadVendida;

    FILE* f = fopen(rutaVentas, "a");
    if (!f) return 0;

    fprintf(f, "%d,%d,%s,%d,%.2f,%.2f,%s\n",
            numFactura,
            lista[idx].codigo,
            lista[idx].nombre,
            cantidadVendida,
            lista[idx].costo,
            lista[idx].precioVenta,
            fecha);

    fclose(f);
    return 1;
}
