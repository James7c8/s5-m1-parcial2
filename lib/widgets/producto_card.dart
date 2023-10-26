import 'package:flutter/material.dart';

class ProductoCard extends StatelessWidget {
  final String nombre;
  final String categoria;
  final String descripcion;
  final double precio;
  final Icon icon;
  final String imgUrl;

  const ProductoCard({
    super.key,
    required this.nombre,
    required this.categoria,
    required this.descripcion,
    required this.precio,
    required this.icon,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: [
            ListTile(
              leading: icon,
              title: Text(nombre),
              subtitle: Text(categoria),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 67, bottom: 9),
                  child: Text(descripcion),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 9),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 200,
                      maxHeight: 200,
                    ),
                    child: Image.network(
                      imgUrl,
                      fit: BoxFit
                          .cover, // Adjusts the size while maintaining the image's aspect ratio
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
