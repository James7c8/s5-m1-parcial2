import 'package:flutter/material.dart';

class Producto {
  final String nombre;
  final String categoria;
  final String descripcion;
  final double precio;
  final Icon icon;
  final String imgUrl;

  const Producto(
    this.nombre,
    this.categoria,
    this.descripcion,
    this.precio,
    this.icon,
    this.imgUrl,
  );
}
