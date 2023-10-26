import 'package:flutter/material.dart';
import '../listas/clientes_lista.dart';
import 'cliente_card_screen.dart';

class ClienteScreen extends StatelessWidget {
  final List<Map<String, dynamic>> clientes = clientesLista;

  ClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) {
          return ListTile(
            leading: const Icon(Icons.person, size: 50),
            title: Text(clientes[i]["nombre"]),
            subtitle: Text(
                "Activo: ${clientes[i]["activo"]}, Capacidad de crédito: ${clientes[i]["capacidadCredito"]}"),
            trailing:
                const Icon(Icons.arrow_forward, size: 30, color: Colors.blue),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ClienteCardScreen(indexDeCliente: i),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: clientes.length,
      ),
    );
  }
}
