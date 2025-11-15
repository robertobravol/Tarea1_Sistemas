#ifndef PRODUCTOS_H
#define PRODUCTOS_H



typedef struct Producto {
    int codigo;
    char nombre[100];
    int unidades;
    float costo;
    float precioVenta;
} Producto;

typedef struct Venta {
    int numFactura;
    int codigoProducto;
    char nombreProducto[100];
    int cantidadVendida;
    float costo;
    float precioVenta;
    char fecha[11]; // "YYYY-MM-DD"
} Venta;

// Productos
Producto* cargarProductos(const char* ruta, int* cantidad);
int guardarProductos(const char* ruta, Producto* lista, int cantidad);
int buscarProductoPorCodigo(Producto* lista, int cantidad, int codigo);
Producto* agregarProducto(Producto* lista, int* cantidad, Producto p);
int actualizarStock(Producto* lista, int cantidad, int codigo, int delta);
void listarProductos(Producto* lista, int cantidad);

// Ventas
int registrarVenta(const char* rutaVentas,
                   Producto* lista,
                   int* cantidadProductos,
                   int codigo,
                   int cantidadVendida,
                   int numFactura,
                   const char* fecha);

#endif
