import 'package:flutter/material.dart';

import '../listas/productos_lista.dart';

class ProductoScreen extends StatelessWidget {
  const ProductoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final producto = productos[index];
          return ListTile(
            leading: producto.icon,
            title: Text(producto.nombre),
            subtitle: Text(producto.categoria),
            onTap: () {
              
            },
          );
        },
        itemCount: productos.length,
      ),
    );
  }
}
