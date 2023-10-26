import 'package:flutter/material.dart';
import 'package:producto_cliente/listas/productos_lista.dart';
import 'package:producto_cliente/widgets/widgets.dart';

class ProductoCardScreen extends StatelessWidget {
  const ProductoCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto Cards'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 5),
          ProductoCard(
            nombre: productos[3].nombre,
            categoria: productos[3].categoria,
            descripcion: productos[3].descripcion,
            precio: productos[3].precio,
            icon: productos[3].icon,
            imgUrl: productos[3].imgUrl,
          ),
          const SizedBox(height: 5),
          ProductoCard(
            nombre: productos[5].nombre,
            categoria: productos[5].categoria,
            descripcion: productos[5].descripcion,
            precio: productos[5].precio,
            icon: productos[5].icon,
            imgUrl: productos[5].imgUrl,
          ),
          const SizedBox(height: 5),
          ProductoCard(
            nombre: productos[8].nombre,
            categoria: productos[8].categoria,
            descripcion: productos[8].descripcion,
            precio: productos[8].precio,
            icon: productos[8].icon,
            imgUrl: productos[8].imgUrl,
          ),
        ],
      ),
    );
  }
}
