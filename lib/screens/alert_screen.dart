import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALERT!'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.warning_amber_rounded, size: 200, color: Colors.red),
            Text('404', style: TextStyle(fontSize: 100, color: Colors.grey)),
            Text('Página no encontrada',
                style: TextStyle(fontSize: 30, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
