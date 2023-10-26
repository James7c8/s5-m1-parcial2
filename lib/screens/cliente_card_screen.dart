import 'package:flutter/material.dart';
import 'package:producto_cliente/widgets/cliente_card.dart';

class ClienteCardScreen extends StatelessWidget {
  final int indexDeCliente;

  const ClienteCardScreen({super.key, required this.indexDeCliente});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto Cards'),
      ),
      body: ClienteCard(indexDeCliente: indexDeCliente),
      );
  }
}
