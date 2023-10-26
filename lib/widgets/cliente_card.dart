import 'package:flutter/material.dart';
import 'package:producto_cliente/listas/clientes_lista.dart';

import 'package:producto_cliente/models/dialogue_utils.dart';
import 'dart:io';

class ClienteCard extends StatelessWidget {
  final int indexDeCliente;
  final List<Map<String, dynamic>> clientes = clientesLista;

  ClienteCard({super.key, required this.indexDeCliente});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicHeight(
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          FadeInImage(
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                            image: AssetImage(clientes[indexDeCliente]
                                    ["foto"] ??
                                "assets/avatar.png"),
                            placeholder: const AssetImage('assets/loading.gif'),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                                "DESCRIPCIÓN: \n${clientes[indexDeCliente]["descripcion"]}"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("NOMBRE: ${clientes[indexDeCliente]["nombre"]}"),
                          const SizedBox(height: 10),
                          Text("CORREO: ${clientes[indexDeCliente]["correo"]}"),
                          const SizedBox(height: 10),
                          Text(
                              "DIRECCIÓN: ${clientes[indexDeCliente]["direccion"]}"),
                          const SizedBox(height: 10),
                          Text("CIUDAD: ${clientes[indexDeCliente]["ciudad"]}"),
                          const SizedBox(height: 10),
                          Text(
                              "CAPACIDAD CRÉDITO: ${clientes[indexDeCliente]["capacidadCredito"]}"),
                          const SizedBox(height: 10),
                          Text("ACTIVO: ${clientes[indexDeCliente]["activo"]}"),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Edit'),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        print("Delete is pressed");
                        !Platform.isAndroid
                            ? DialogueUtils.showErrorDialogueAndroid(context)
                            : DialogueUtils.showErrorDialogueIos(context);
                      },
                      child: const Text('Delete'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
