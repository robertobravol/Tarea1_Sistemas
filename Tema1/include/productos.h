#ifndef PRODUCTOS_H
#define PRODUCTOS_H

typedef struct Producto {
    int codigoProducto;
    char nombreProducto[100];
    int stock;
    float costo;
    float precioVenta;
} Producto;





#endif