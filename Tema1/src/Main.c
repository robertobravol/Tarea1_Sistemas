#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "../include/usuarios.h"
#include "../include/productos.h"

#define RUTA_USUARIOS "../texts/vendedores.txt"
#define RUTA_PRODUCTOS "../texts/producto.txt"
#define RUTA_VENTAS "../texts/ventas.txt"

static void clear_stdin() {
    int c;
    while ((c = getchar()) != '\n' && c != EOF);
}

static void pause() {
    printf("Presione ENTER para continuar...");
    getchar();
}

static void fecha_hoy(char* buf, size_t n) {
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    snprintf(buf, n, "%04d-%02d-%02d", 
             tm.tm_year + 1900, 
             tm.tm_mon + 1, 
             tm.tm_mday);
}

int main() {
    int nUsuarios = 0;
    Usuario* usuarios = cargarUsuarios(RUTA_USUARIOS, &nUsuarios);

    if (!usuarios) {
        printf("No se pudo abrir %s\n", RUTA_USUARIOS);
        return 1;
    }

    char user[50], pass[50];
    printf("Usuario: ");
    fgets(user, sizeof(user), stdin);
    user[strcspn(user, "\r\n")] = 0;

    printf("Clave: ");
    fgets(pass, sizeof(pass), stdin);
    pass[strcspn(pass, "\r\n")] = 0;

    int idx = buscarUsuario(usuarios, nUsuarios, user, pass);

    if (idx < 0) {
        printf("Usuario o clave incorrectos.\n");
        liberarUsuarios(usuarios);
        return 1;
    }

    printf("Bienvenido %s\n", usuarios[idx].nombre);

    int nProductos = 0;
    Producto* productos = cargarProductos(RUTA_PRODUCTOS, &nProductos);

    if (!productos) {
        productos = NULL;
        nProductos = 0;
        printf("No se encontraron productos, archivo vacío.\n");
    }

    int opcion = 0;

    while (1) {
        system("clear || cls");
        printf("1) Listar productos\n");
        printf("2) Agregar producto\n");
        printf("3) Registrar compra (añadir stock)\n");
        printf("4) Registrar venta\n");
        printf("5) Guardar productos\n");
        printf("6) Salir\n");
        printf("Opción: ");

        if (scanf("%d", &opcion) != 1) {
            clear_stdin();
            continue;
        }

        clear_stdin();

        if (opcion == 1) {
            listarProductos(productos, nProductos);
            pause();
        }

        else if (opcion == 2) {
            Producto p;
            char buffer[200];

            printf("Codigo: ");
            fgets(buffer, sizeof(buffer), stdin);
            p.codigo = atoi(buffer);

            printf("Nombre: ");
            fgets(p.nombre, sizeof(p.nombre), stdin);
            p.nombre[strcspn(p.nombre, "\r\n")] = 0;

            printf("Unidades: ");
            fgets(buffer, sizeof(buffer), stdin);
            p.unidades = atoi(buffer);

            printf("Costo: ");
            fgets(buffer, sizeof(buffer), stdin);
            p.costo = atof(buffer);

            printf("Precio venta: ");
            fgets(buffer, sizeof(buffer), stdin);
            p.precioVenta = atof(buffer);

            productos = agregarProducto(productos, &nProductos, p);
            printf("Producto agregado.\n");
            pause();
        }

        else if (opcion == 3) {
            int codigo, cant;
            char buffer[100];

            printf("Código del producto: ");
            fgets(buffer, sizeof(buffer), stdin);
            codigo = atoi(buffer);

            printf("Cantidad a ingresar: ");
            fgets(buffer, sizeof(buffer), stdin);
            cant = atoi(buffer);

            if (actualizarStock(productos, nProductos, codigo, cant))
                printf("Stock actualizado.\n");
            else
                printf("Producto no encontrado.\n");

            pause();
        }

        else if (opcion == 4) {
            int codigo, cantidad, factura;
            char buffer[100];
            char fecha[11];

            printf("Número de factura: ");
            fgets(buffer, sizeof(buffer), stdin);
            factura = atoi(buffer);

            printf("Código producto: ");
            fgets(buffer, sizeof(buffer), stdin);
            codigo = atoi(buffer);

            printf("Cantidad vendida: ");
            fgets(buffer, sizeof(buffer), stdin);
            cantidad = atoi(buffer);

            fecha_hoy(fecha, sizeof(fecha));

            if (registrarVenta(RUTA_VENTAS, productos, &nProductos, codigo, cantidad, factura, fecha))
                printf("Venta registrada con fecha %s\n", fecha);
            else
                printf("Error: producto inexistente o stock insuficiente.\n");

            pause();
        }

        else if (opcion == 5) {
            if (guardarProductos(RUTA_PRODUCTOS, productos, nProductos))
                printf("Productos guardados correctamente.\n");
            else
                printf("Error al guardar productos.\n");

            pause();
        }

        else if (opcion == 6) {
            guardarProductos(RUTA_PRODUCTOS, productos, nProductos);
            break;
        }
    }

    if (productos) free(productos);
    liberarUsuarios(usuarios);

    return 0;
}
