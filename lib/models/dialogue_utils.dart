import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogueUtils {
  static void showErrorDialogueAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          title: const Text('Está seguro que quiere eliminar el cliente [clienteName]?'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Presione SÍ para elimarlo, o CANCELAR para volver'),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Sí'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }

  static void showErrorDialogueIos(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Está seguro que quiere eliminar el cliente [clienteName]?'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Presione SÍ para elimarlo, o CANCELAR para volver'),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Sí'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }
}
